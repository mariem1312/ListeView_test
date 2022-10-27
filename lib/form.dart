import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listeview_test/listeview.dart';

class formPage extends StatefulWidget {
  const formPage({ Key? key }) : super(key: key);

  @override
  State<formPage> createState() => _formPageState();
}

class _formPageState extends State<formPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[800],
        title: Text(
          "Profile Page ",
          style: TextStyle(fontSize: 18.0),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Foulen Foulen',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 25,
                ),
              ),
              Text(
                'Foulen@gmail.com',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'SourceSansPro',
                  color: Colors.grey,

                ),
              ),
              SizedBox(
                height: 20.0,
                width: 200,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                  color: Colors.white,
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      'Full Name',
                      style:
                      TextStyle(fontFamily: 'BalooBhai', fontSize: 20.0),
                    ),
                  )),
              Card(
                color: Colors.white,
                margin:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    'Email',
                    style: TextStyle(fontSize: 20.0, fontFamily: 'Neucha'),
                  ),
                ),
              ),
              SizedBox(
                height: 30,

              ),
              CupertinoButton(
                          borderRadius: BorderRadius.circular(50),
                          child: Text("Login"),
                          color: Colors.pink[800],
                          onPressed: () {
                            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp()));
                          }),
                          CupertinoButton(
                  child: Text('Return'),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => listeviewPage()));
                  }),
            ],

          ),

        ),
      ),
    );
  }
}