import 'package:flutter/material.dart';
import 'main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email="";
  String _password="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOG IN'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                child: Image.asset(
                  'assets/sa.jpg',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Center(
              child: Text(
                "WELCOME",
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
                "Please log in to your account",
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
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(labelText: 'Email'),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(labelText: 'Password'),
                    ),
                     const SizedBox( height: 20.0,), 
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => build(context),
                            ),
                          );
                        },
                        child: Text('LOG IN'),
                      ),
                    ),
                      const SizedBox( height: 20.0,), 
                          Container(
                          child:ElevatedButton(
                          onPressed: (){  Navigator.push(context, MaterialPageRoute(builder: (context) => ApneaApp()));},
                          child: const Text('GO BACK'),), 
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
 
