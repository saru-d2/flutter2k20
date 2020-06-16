import 'package:flutter/material.dart';
import 'package:from_scratch/screens/features/wash.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.all(20.0),
            title: Text(
              'main',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return new WashingMachine(number: 0, item: 'WashingMachines', maxNum : 3 );
              }));
            },
          ),
        ],
      ),
    );
  }
}
