import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listeview_test/listeview.dart';

class homePage extends StatefulWidget {
  const homePage({ Key? key }) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               SizedBox(
                height: 150,
              ),
              Text("Let's get started ! ", style: TextStyle(
                color: Colors.pink[800],
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(
                height: 100,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child:
                  const Text("Hello everyone ! Please login or create a new account",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black54)
                  )),
                   SizedBox(
                height: 100,
              ),
              Container(
                child: CupertinoButton(
                    borderRadius: BorderRadius.circular(50),
                    child: Text("Start Browsing"),
                    color: Colors.pink[800] ,
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => listeviewPage()));
                    }),
              )
            ],
          ),
        ),
      ),

    );
  }
}