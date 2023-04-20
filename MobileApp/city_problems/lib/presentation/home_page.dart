import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("Salutare!"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 20,
        backgroundColor: const Color.fromRGBO(80, 151, 255, 1),
        splashColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: const Text("1"),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: const Text("2"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
