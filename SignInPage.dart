import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<SignInPage> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.blueAccent.shade100,
      appBar: AppBar(
        
        title: Text('SignInPage Screen'),
      ),
      body: Container(
        
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Container(
                width: width,
                height: height * 0.45,
                child: Image.asset(
                  'asset/logo.png',
                  fit: BoxFit.fill,
                ),
              ),
                Padding(
                  padding : const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Login',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              SizedBox(height: 15.0,),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Email',
                  suffixIcon:Icon(Icons.mail),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ), 
              ),
              SizedBox(height: 30.0,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          SizedBox(height: 30.0,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dont have an account?',style: TextStyle(fontSize: 12.0),),
                ElevatedButton(
                  onPressed: () {  },
                  child: Text('Sign In'),
                  style: ButtonStyle( 
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                   )
              ],
            ),
          ),
          
            ],
        ),
      ),
      ),
    );
  }
}
