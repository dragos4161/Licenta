import 'package:city_problems/models/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class QueuePage extends StatefulWidget {
  const QueuePage({super.key});

  @override
  State<QueuePage> createState() => _QueuePageState();
}

class _QueuePageState extends State<QueuePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
              final List<QueueItem> queue = <QueueItem>[];

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
                                    title: const Center(child: Text('New Chat Room'),),
                                    content: Text('Start a chat room with ${queue[index].name} ?'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () async {

                                        },
                                        child: const Text('Yes'),
                                      ),
                                      TextButton(
                                        onPressed: () async {
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
                                      color: Colors.yellow,
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
      ),
    );
  }
}
