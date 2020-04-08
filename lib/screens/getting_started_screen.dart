import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logintask/screens/signup_screen.dart';
import '../screens/login_screen.dart';

class GettingStartedScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Material(


                        child: Image.asset(
                          'images/logo.png', width: 100, height: 100,)),
                    Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage('logo.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 40,),
                    Text(
                        'FLUTTER TASK 2!',
                        style: TextStyle(fontSize: 22,
                          color: Theme.of(context).primaryColor,
                        )
                    ),
                    SizedBox(height: 10,),
                    Text(
                      '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore etdolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                      textAlign: TextAlign.center,

                    ),



                  ],),
              ),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  FlatButton(child: Text('Getting Started', style: TextStyle(fontSize: 18,)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(15),
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    onPressed: (){
                      Navigator.of(context).pushNamed(SignupScreen.routeName);
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,


                    children: <Widget>[
                      Text('Have an account?',
                        style: TextStyle(fontSize: 18,),
                      ),
                      FlatButton(child: Text(
                        'Login',
                        style: TextStyle(fontSize: 18,),
                      ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(LoginScreen.routeName);
                        },
                      ),
                    ],),


                ],)
            ],
          ),
        ),
      ),
    );
  }
}