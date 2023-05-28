import 'package:city_problems/actions/index.dart';
import 'package:city_problems/models/index.dart';
import 'package:city_problems/presentation/problems.dart';
import 'package:city_problems/presentation/queue.dart';
import 'package:city_problems/presentation/stats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  void _onItemTapped(int index){
    if(index < 3) {
      setState(() {
        _selectedIndex = index;
      });
    }
    else{
      StoreProvider.of<AppState>(context).dispatch(const Logout());
    }
  }

  int _selectedIndex = 0;

  final List<Widget> _buildBody = const <Widget>[QueuePage(), ProblemsPage(), StatsPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('City Problems'),
        ),
      ),
      body: _buildBody[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:  Icon(Icons.queue),
            label: 'Queue',
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.list_rounded),
            label: 'Problems',
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.pie_chart),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.logout_rounded),
            label: 'Logout',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
