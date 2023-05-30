import 'package:cached_network_image/cached_network_image.dart';
import 'package:city_problems/models/index.dart';
import 'package:city_problems/models/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class QueuePage extends StatefulWidget {
  const QueuePage({super.key});

  @override
  State<QueuePage> createState() => _QueuePageState();
}

class _QueuePageState extends State<QueuePage> {
  bool chatActive = false;
  List<QueueItem> queue = <QueueItem>[];
  late String currentUser;
  late String currentUserUid;
  ScrollController listViewScrollController = ScrollController();
  TextEditingController messageController = TextEditingController();
  late String profilePicture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: chatActive == false
          ? Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    'People waiting...',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                  stream: FirebaseFirestore.instance.collection('queue').snapshots(),
                  builder: (BuildContext context, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {

                    queue = <QueueItem>[];

                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      for (final QueryDocumentSnapshot<Map<String, dynamic>> i in snapshot.data!.docs) {
                        final QueueItem q = QueueItem(
                          uid: i.data()['uid'].toString(),
                          description: i.data()['description'].toString(),
                          name: i.data()['name'].toString(),
                          status: i.data()['status'].toString(),
                          image: i.data()['image'].toString(),
                        );

                        queue.add(q);
                      }

                      return Expanded(
                        child: queue.isEmpty
                            ? const Center(
                                child: Text(
                                  'There is no one waiting...',
                                  style: TextStyle(fontSize: 40),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            : ListView.builder(
                                padding: const EdgeInsets.only(left: 40, right: 40),
                                itemCount: queue.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                    onTap: () {
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) => AlertDialog(
                                          title: const Center(
                                            child: Text('New Chat Room'),
                                          ),
                                          content: Text('Start a chat room with ${queue[index].name} ?'),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () async {
                                                await FirebaseFirestore.instance
                                                    .collection('queue')
                                                    .doc(queue[index].uid)
                                                    .update(
                                                  <String, dynamic>{'status': 'active'},
                                                );
                                                setState(() {
                                                  chatActive = true;
                                                  currentUser = queue[index].name;
                                                  currentUserUid = queue[index].uid;
                                                  profilePicture = queue[index].image;
                                                });
                                                // ignore: use_build_context_synchronously
                                                Navigator.pop(context, 'Yes');
                                              },
                                              child: const Text('Yes'),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context, 'No');
                                              },
                                              child: const Text('No'),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 20, top: 10),
                                      child: Container(
                                        height: 120,
                                        width: 260,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(40),
                                          border: Border.all(
                                            color: queue[index].status == 'closed' ? Colors.green : Colors.yellow,
                                            width: 2,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 30),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Name: ${queue[index].name}',
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'Description: ${queue[index].description}',
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                maxLines: 4,
                                              ),
                                              Text(
                                                'Status: ${queue[index].status}',
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                      );
                    }
                  },
                ),
              ],
            )
          : SafeArea(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blueAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Chatting with $currentUser',
                          style: const TextStyle(fontSize: 24, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        IconButton(
                          onPressed: () {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Center(
                                  child: Text('Chat Room'),
                                ),
                                content: const Text('Leave the chat?'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () async {
                                      await FirebaseFirestore.instance.collection('queue').doc(currentUserUid).update(
                                        <String, dynamic>{'status': 'closed'},
                                      );
                                      setState(() {
                                        chatActive = false;
                                      });
                                      // ignore: use_build_context_synchronously
                                      Navigator.pop(context, 'Yes');
                                    },
                                    child: const Text('Yes'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context, 'No');
                                    },
                                    child: const Text('No'),
                                  ),
                                ],
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.logout_rounded,
                            size: 30,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height - 150,
                      color: Colors.white,
                      child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                        stream: FirebaseFirestore.instance
                            .collection('chatRooms')
                            .doc(currentUserUid)
                            .collection('messageId')
                            .snapshots(),
                        builder: (
                          BuildContext context,
                          AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot,
                        ) {
                          final List<Message> messages = <Message>[];
                          for (final QueryDocumentSnapshot<Map<String, dynamic>> m in snapshot.data!.docs) {
                            final Message message = Message(
                              sender: m.data()['sender'].toString(),
                              message: m.data()['message'].toString(),
                              time: DateTime.fromMillisecondsSinceEpoch(int.parse(m.data()['timestamp'].toString())),
                            );
                            messages.add(message);

                          }
                          messages.sort((Message b, Message a) => a.time.compareTo(b.time));
                          return ListView.builder(
                            padding: const EdgeInsets.all(10),
                            reverse: true,
                            controller: listViewScrollController,
                            itemCount: messages.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Align(
                                alignment: messages[index].sender == 'admin' ? Alignment.topRight : Alignment.topLeft,
                                child: SizedBox(
                                  width: 200,
                                  child: Row(
                                    children: <Widget>[
                                      if (messages[index].sender != 'admin')
                                        ClipOval(
                                          child: CachedNetworkImage(
                                            imageUrl: profilePicture,
                                            width: 40,
                                            height: 40,
                                            fit: BoxFit.cover,
                                            placeholder: (BuildContext context, String url) => Image.asset(
                                              'assets/images/avatar.jpg',
                                              width: 60,
                                              height: 60,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )
                                      else
                                        const SizedBox.shrink(),
                                      Container(
                                        width: 200,
                                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                                        margin: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          color: messages[index].sender == 'admin' ? Colors.blueAccent : Colors.grey,
                                          borderRadius: messages[index].sender == 'admin' ? const BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(25),
                                            bottomLeft: Radius.circular(15),
                                          ) : const BorderRadius.only(
                                            topRight: Radius.circular(15),
                                            topLeft: Radius.circular(25),
                                            bottomRight: Radius.circular(15),
                                          ),
                                        ),
                                        child: Text(
                                          messages[index].message,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: messages[index].sender == 'admin' ? Colors.white : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                    height: 60,
                    //width: MediaQuery.of(context).size.width,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: TextField(
                            controller: messageController,
                            decoration: InputDecoration(
                              hintText: 'Type...',
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintStyle: const TextStyle(color: Colors.black),
                              suffixIcon: GestureDetector(
                                child: const Icon(
                                  Icons.send,
                                  color: Colors.blue,
                                ),
                                onTap: () async {
                                  final Map<String, dynamic> message = <String, dynamic>{
                                    'sender': 'admin',
                                    'message': messageController.text,
                                    'timestamp': DateTime.now().millisecondsSinceEpoch,
                                  };
                                  await FirebaseFirestore.instance
                                      .collection('chatRooms')
                                      .doc(currentUserUid)
                                      .collection('messageId')
                                      .add(message);
                                  await listViewScrollController.animateTo(
                                    0,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeOut,
                                  );
                                  if (!mounted) {
                                    return;
                                  }
                                  FocusScope.of(context).unfocus();
                                  messageController.clear();
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
