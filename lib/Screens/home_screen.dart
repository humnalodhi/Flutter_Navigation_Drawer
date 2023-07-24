import 'package:flutter/material.dart';
import 'package:flutter_navigation_drawer/Screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Drawer'),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: Drawer(
        child: Center(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xff764abc)),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('lib/assets/women_profile.jpg'),
                ),
                accountName: Text('Aleena'),
                accountEmail: Text('aleena123@gmail.com'),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pushNamed(context, HomeScreen.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.next_plan_outlined),
                title: const Text('Screen 2'),
                onTap: () {
                  Navigator.pushNamed(context, SecondScreen.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, SecondScreen.id);
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
                },
                child: const Text('Screen 2'))
          ],
        ),
      ),
    );
  }
}
