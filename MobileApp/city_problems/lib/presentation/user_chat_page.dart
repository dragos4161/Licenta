import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:city_problems/models/index.dart';
import 'package:city_problems/models/message.dart';
import 'package:city_problems/presentation/containers/user_container.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class UserChatPage extends StatefulWidget {
  const UserChatPage({super.key});

  @override
  State<UserChatPage> createState() => _UserChatPageState();
}

class _UserChatPageState extends State<UserChatPage> {
  FirebaseFirestore db = FirebaseFirestore.instance;
  bool chatActive = false;
  bool chatRequested = false;
  bool buttonVisibility = true;
  TextEditingController descriptionController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  ScrollController listViewScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        return Scaffold(
          body: chatRequested == false
              ? const Center(
                  child: Text(
                    'Press the floating button to request to speak with an admin',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                )
              : StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                  stream: FirebaseFirestore.instance.collection('queue').doc(user!.uid).snapshots(),
                  builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>> snapshot) {
                    if (snapshot.data!.data()!['status'].toString() == 'pending') {
                      return Center(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const Text(
                                      'Waiting for an admin',
                                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                                    ),
                                    AnimatedTextKit(
                                      animatedTexts: <AnimatedText>[
                                        WavyAnimatedText(
                                          '...',
                                          textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                      repeatForever: true,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              LoadingAnimationWidget.staggeredDotsWave(color: Colors.blue, size: 40),
                              const SizedBox(height: 50,),
                              FloatingActionButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Icon(
                                  Icons.home_outlined,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    } else {
                      return SafeArea(
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
                                  const Text(
                                    'Chatting with an admin',
                                    style: TextStyle(fontSize: 24, color: Colors.white),
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
                                                await FirebaseFirestore.instance
                                                    .collection('queue')
                                                    .doc(user.uid)
                                                    .update(
                                                  <String, dynamic>{'status': 'closed'},
                                                );
                                                setState(() {
                                                  chatActive = false;
                                                  chatRequested = false;
                                                  buttonVisibility = true;
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
                                      .doc(user.uid)
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
                                        time: DateTime.fromMillisecondsSinceEpoch(
                                          int.parse(m.data()['timestamp'].toString()),
                                        ),
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
                                          alignment: messages[index].sender != 'admin'
                                              ? Alignment.topRight
                                              : Alignment.topLeft,
                                          child: SizedBox(
                                            width: 200,
                                            child: Row(
                                              children: <Widget>[
                                                if (messages[index].sender == 'admin')
                                                  ClipOval(
                                                    child: Image.asset(
                                                      'assets/images/avatar.jpg',
                                                      width: 40,
                                                      height: 40,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  )
                                                else
                                                  const SizedBox.shrink(),
                                                Container(
                                                  width: 200,
                                                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                                                  margin: const EdgeInsets.all(8),
                                                  decoration: BoxDecoration(
                                                    color: messages[index].sender != 'admin'
                                                        ? Colors.blueAccent
                                                        : Colors.grey,
                                                    borderRadius: messages[index].sender != 'admin'
                                                        ? const BorderRadius.only(
                                                            topLeft: Radius.circular(15),
                                                            topRight: Radius.circular(25),
                                                            bottomLeft: Radius.circular(15),
                                                          )
                                                        : const BorderRadius.only(
                                                            topRight: Radius.circular(15),
                                                            topLeft: Radius.circular(25),
                                                            bottomRight: Radius.circular(15),
                                                          ),
                                                  ),
                                                  child: Text(
                                                    messages[index].message,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: messages[index].sender != 'admin'
                                                          ? Colors.white
                                                          : Colors.black,
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
                                              'sender': user.uid,
                                              'message': messageController.text,
                                              'timestamp': DateTime.now().millisecondsSinceEpoch,
                                            };
                                            await FirebaseFirestore.instance
                                                .collection('chatRooms')
                                                .doc(user.uid)
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
                      );
                    }
                  },
                ),
          floatingActionButton: Visibility(
            visible: buttonVisibility,
            child: FloatingActionButton(
              child: const Icon(Icons.start_rounded),
              onPressed: () async {
                await showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Center(
                      child: Text('Write a description'),
                    ),
                    content: SizedBox(
                      height: 40,
                      width: 120,
                      child: TextField(
                        controller: descriptionController,
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () async {
                          final QuerySnapshot<Map<String, dynamic>> img = await FirebaseFirestore.instance
                              .collection('users')
                              .where('uid', isEqualTo: user!.uid)
                              .get();
                          final String image = img.docs.first.data()['profilePicture'].toString();
                          final Map<String, dynamic> data = <String, dynamic>{
                            'uid': user.uid,
                            'name': user.displayName,
                            'description': descriptionController.text,
                            'status': 'pending',
                            'image': image,
                          };
                          await db.collection('queue').doc(user.uid).set(data);
                          setState(() {
                            chatRequested = true;
                            buttonVisibility = false;
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
            ),
          ),
        );
      },
    );
  }
}
