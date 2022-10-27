import 'package:flutter/material.dart';

class listeviewPage extends StatefulWidget {
  const listeviewPage({ Key? key }) : super(key: key);

  @override
  State<listeviewPage> createState() => _listeviewPageState();
}

class _listeviewPageState extends State<listeviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SafeArea(
        child: 
        Expanded(
          child: Container(
          child: ListView(
              children: [
                Card(
                  child: ListTile(
                    title:Text("Login") ,
                  )
                ),
                Card(
                  child: ListTile(
                    title: Text("Sign in"),
                    
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text("Logout"),
                  )
                ),
              ],
              shrinkWrap: true,
              padding: EdgeInsets.all(10),
            )
          ),
        ),
      ),
    );
  }
}