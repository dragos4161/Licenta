import 'package:city_problems/models/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProblemsPage extends StatefulWidget {
  const ProblemsPage({super.key});


  @override
  State<ProblemsPage> createState() => _ProblemsPageState();
}

class _ProblemsPageState extends State<ProblemsPage> {



  List<Danger> dangersToShow = <Danger>[];
  final List<Danger> dangers = <Danger>[];
  final List<Danger> solved = <Danger>[];
  final List<Danger> submitted = <Danger>[];
  List<Color> selectedColors = <Color>[Colors.greenAccent, Colors.blue, Colors.blue];
  int page = 0;

  @override
  void initState() {
    super.initState();

    //super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance.collection('dangers').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            dangersToShow = <Danger>[];
            for (final QueryDocumentSnapshot<Map<String, dynamic>> i in snapshot.data!.docs) {
              final Danger d = Danger(
                uid: i.data()['uid'].toString(),
                image: i.data()['image'].toString(),
                category: i.data()['category'].toString(),
                status: i.data()['status'].toString(),
                location: CurrentLocation(
                  latitude: double.parse(i.data()['latitude'].toString()),
                  longitude: double.parse(i.data()['longitude'].toString()),
                ),
              );
              if(page == 0){
                dangersToShow.add(d);
              }
              else if(page == 1){
                if(d.status == 'solved'){
                  dangersToShow.add(d);
                }
              }
              else{
                if(d.status == 'submitted'){
                  dangersToShow.add(d);
                }
              }
            }

            return Column(
              children: <Widget>[
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          setState(() {
                            page = 0;
                            selectedColors = <Color>[Colors.greenAccent, Colors.blue, Colors.blue];
                          });
                        },
                        child: Text(
                          'All',
                          style: TextStyle(
                            color: selectedColors[0],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            page = 1;
                            selectedColors = <Color>[Colors.blue, Colors.greenAccent, Colors.blue];
                          });
                        },
                        child: Text(
                          'Solved',
                          style: TextStyle(
                            color: selectedColors[1],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            page = 2;
                            selectedColors = <Color>[Colors.blue, Colors.blue, Colors.greenAccent];
                          });
                        },
                        child: Text(
                          'Submitted',
                          style: TextStyle(
                            color: selectedColors[2],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: dangersToShow.isEmpty
                      ? const Center(
                          child: Text(
                            'There are no problems',
                            style: TextStyle(fontSize: 40),
                            textAlign: TextAlign.center,
                          ),
                        )
                      : ListView.builder(
                          padding: const EdgeInsets.only(left: 35, right: 35),
                          itemCount: dangersToShow.length,
                          itemBuilder: (BuildContext context, int index) {
                            final String cat = dangersToShow[index].category.split(' ').first;
                            return GestureDetector(
                              onTap: () {
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) => AlertDialog(
                                    title: Center(
                                      child: Text(dangersToShow[index].category),
                                    ),
                                    content: Text(
                                      'Do you want to mark the problem (${dangersToShow[index].category}) as solved?',
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () async {
                                          final FirebaseFirestore db = FirebaseFirestore.instance;
                                          final CollectionReference<Map<String, dynamic>> ref = db.collection('dangers');
                                          await ref.where('latitude', isEqualTo : dangersToShow[index].location.latitude)
                                          .where('longitude',isEqualTo : dangersToShow[index].location.longitude)
                                          .get().then((QuerySnapshot<Map<String, dynamic>> querySnapshot) {
                                            for(final QueryDocumentSnapshot<Map<String, dynamic>> doc in querySnapshot.docs){
                                              doc.reference.update(<String,dynamic>{'status' : 'solved'});
                                            }
                                          });
                                          setState(() {
                                            page = 0;
                                            selectedColors = <Color>[Colors.greenAccent,Colors.blue,Colors.blue];
                                          });
                                          // ignore: use_build_context_synchronously
                                          Navigator.pop(context, 'Yes');
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
                                  height: 150,
                                  width: 280,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    border: Border.all(
                                      color: dangersToShow[index].status == 'submitted' ? Colors.yellow : Colors.green,
                                      width: 2,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: <Widget>[
                                        // ignore: use_decorated_box
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: dangersToShow[index].status == 'solved'
                                                  ? Colors.green
                                                  : Colors.yellow,
                                              width: 3,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                          child: ClipOval(
                                            child: Image.asset(
                                              'assets/images/$cat.jpg',
                                              width: 60,
                                              height: 60,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Type: ${dangersToShow[index].category}',
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              'Latitude:  ${dangersToShow[index].location.latitude}',
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              'Longitude:  ${dangersToShow[index].location.longitude}',
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
