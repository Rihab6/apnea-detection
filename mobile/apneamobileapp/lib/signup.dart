import 'package:flutter/material.dart';
import 'main.dart';
import 'login.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _password = '';
  String specialty = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIGN UP'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //ClipRRect(
             // borderRadius: BorderRadius.circular(10.0),
              //child: Container(
               // child: Image.asset(
                 // 'assets/signupimg.jpg',
                 // width: 200,
                 // height: 200,
                 // fit: BoxFit.cover,
                 // alignment: Alignment.center,
                //),
             // ),
           // ),
            Center(
              child: Text(
                "SIGN UP",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                  fontSize: 24,
                  fontFamily: 'Arial',
                ),
              ),
            ),
            Center(
              child: Text(
                "It takes few seconds to create an account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                  fontSize: 24,
                  fontFamily: 'Arial',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: 'Name'),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(labelText: 'Email'),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: 'Specialty'),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(labelText: 'Password'),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => build(context)),
                          );
                        },
                        child: Text('SIGN UP'),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ApneaApp()));
                        },
                        child: const Text('GO BACK'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
