import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  static const routeName = '/';

  const Notifications ({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _NotificationsState();
  }
}

class _NotificationsState extends State<Notifications> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: (IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ))),
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.white,


      body: SingleChildScrollView(
        
        child: Container(
          
          child: Column(
            
            children: <Widget>[
              
              Text(
        'Notification Center',
        style: TextStyle(
          fontWeight: FontWeight.bold,fontSize: 18,
          letterSpacing: 2,
        ),
      ),
      
       Container(
        
        padding: const EdgeInsets.all(20.0),
        height: MediaQuery.of(context).size.height * 0.16,
        child: Card(
          color: Colors.greenAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 8,
          child: Container(
            child: Center(
            child: Column(
            children: <Widget>[Container(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
                Row(
                  children: [
                    Icon(
                      Icons.add_alert,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Fever Alert',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  ],
                ),
                
                Text(
                  'How are you today? Have you take a fever yet?',
                 style: TextStyle(color: Colors.white),
               ),
              ],
            ),
            ),
            ],
            ),
            )
          ),
        ),
      ),
          Container(
        
        padding: const EdgeInsets.all(20.0),
        height: MediaQuery.of(context).size.height * 0.16,
        child: Card(
          color: Colors.greenAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 8,
          child: Container(
            child: Center(
            child: Column(
            children: <Widget>[Container(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
                Row(
                  children: [
                    Icon(
                      Icons.add_alert,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Symptom Alert',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  ],
                ),
                
                Text(
                  'How are you feeling today? Please tell me.',
                 style: TextStyle(color: Colors.white),
               ),
              ],
            ),
            ),
            ],
            ),
            )
          ),
        ),
      ),



            ]
        ),  
        ),
      ),
    );
            
  }
}
