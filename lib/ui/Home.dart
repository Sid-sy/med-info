import 'package:buildapps/widgets/reusable_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 10.0,
        title: Row(
          children: <Widget>[
            Expanded(
              child: Center(child: Text('MED-INFO')),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Medicine Expiry'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ReusableListTile(
                title: 'Profile',
                icon: Icon(Icons.account_circle),
                onTap: () {
                  // Navigate to the second screen using a named route.
                  Navigator.pushNamed(context, '/second');
                },
              ),
              ReusableListTile(
                title: 'status',
                icon: Icon(Icons.stacked_bar_chart),
                onTap: () {
                  // Navigate to the second screen using a named route.
                  Navigator.pushNamed(context, '/second');
                },
              ),
              ListTile(
                leading: Icon(Icons.chat_rounded),
                title: Text('Forum'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
              ),
              ListTile(
                leading: Icon(Icons.star_half_outlined),
                title: Text('Rate Us'),
              ),
            ],
          ),
        ), // Populate the Drawer in the next step.
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the SecondScreen widget
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
