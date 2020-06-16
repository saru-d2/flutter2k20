import 'package:flutter/material.dart';
import 'package:from_scratch/models/user.dart';
import 'package:from_scratch/services/authenticate.dart';
import 'package:from_scratch/shared/dropdown.dart';
import 'package:from_scratch/models/user.dart';

class Home extends StatelessWidget {
  final Authservice _auth = Authservice();
  @override

  Widget build(BuildContext context) {
    // Future user = await _auth.getUser();
    return Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
            title: Text('heibi - home'),
            backgroundColor: Colors.deepPurple[400],
            actions: <Widget>[
              FlatButton.icon(
                  icon: Icon(Icons.person),
                  onPressed: () async {
                    // print(_auth.user.uid);
                    await _auth.signout();
                  },
                  label: Text('logout'))
            ]),
        drawer: MainDrawer(),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Column(
            children: [
              RaisedButton(
                onPressed: () async {
                  // setState(() => showSignIn = !showSignIn);
                  final user = await _auth.getUser();
                  print(user.uid);
                },
                color: Colors.pink,
                child: Text('click'),
              )
            ],
          ),
        ));
  }
}
