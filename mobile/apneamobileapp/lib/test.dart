import 'package:flutter/material.dart';
import'signup.dart';
//import ' package:flutter/src/material/elevated_button.dart';
void main() {
  runApp(const ApneaApp());
}

class ApneaApp extends StatelessWidget {
  const ApneaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LOG IN ',
      theme: ThemeData(
       
        primarySwatch: Colors.purple,
      ),
      home:  MyHomePage(title: 'Welcome ')); 
    
  }
}
class MyHomePage extends StatelessWidget {
   MyHomePage({super.key, required this.title});

  final String title;
  final emailcontroller = TextEditingController();
    final passwordcontroller = TextEditingController();
  @override
   Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("LOG IN"),
      ),
      body: Center(
     
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("WELCOME" ,
            ),
            Text(
            "Please log in to your account"
            ),
              const SizedBox( height: 20.0,), 
            TextField(
              keyboardType: TextInputType.emailAddress,
              controller: emailcontroller,
              decoration: InputDecoration(
                hintText: 'Your Email Adress*',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              controller: passwordcontroller,
              decoration: InputDecoration(
                hintText: 'Your Password*',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
           Container(
           child:ElevatedButton(
           onPressed: () { 
            Navigator.push(context, MaterialPageRoute(builder: (context) => step1()));
            },
               child: const Text('LOG IN'),), 
               ),  
         const SizedBox( height: 20.0,), 
           Container(
           child:ElevatedButton(
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => signup.dart));},
           child: const Text('SIGN UP'),), 
           ),
          ],
        ),
      ),
       
    );
  }
}
 
 class step1 extends StatelessWidget {
  @override
  Widget build (BuildContext context){
  return Scaffold 
  (appBar: AppBar(
    title: Text("step 1 "),
  ),
   body: Center (
 
    child:ElevatedButton(
       onPressed: (){
      Navigator.pop(context);
    },
    child:Text("GO BACK"),
   
   ) ),
   );
  
  }
 }


 class secondpage extends StatelessWidget {
  @override
  Widget build (BuildContext context){
  return Scaffold 
  (appBar: AppBar(
    title: Text("step 1 "),
  ),
   body: Center (
 
    child:ElevatedButton(
       onPressed: (){
      Navigator.pop(context);
    },
    child:Text("GO BACK"),
   
   ) ),
   );
  
  }
 }


//////////////////////
import 'package:flutter/material.dart';
import'login.dart';
import'signup.dart';
void main() {
  runApp(const ApneaApp());
}

class ApneaApp extends StatelessWidget {
  const ApneaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'ApneaApp',
      theme: ThemeData(
       
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Welcome '),
       routes: {
    '/login': (context) => LoginPage(),
    '/signup': (context) => SignUpPage(),
  },
      ); 
    
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
   Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("SLEEP APNEA"),
         leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();}
      ),
      ),
        drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
             ListTile(
              title: Text('SIGN UP'),
              onTap: () {
                 Navigator.pop(context);
                 Navigator.push(
                context,
            MaterialPageRoute(builder: (context) => SignUpPage()),
          );
              },
            ),
            ListTile(
              title: Text('LOG IN'),
              onTap: () {
                 Navigator.pop(context);
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
          );
              },
            ),
            ListTile(
              title: Text('STEPS'),
              onTap: () {
                      Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step1()),
                );
              },
            ),
            ListTile(
              title: Text(''),
              onTap: () {
                
              },
            ),
          ],
        ),
      ),
      body: Center(
     
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                child: Image.asset(
                  'assets/welcome.PNG',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ],
        ),

            Text("WELCOME" ,
             style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.purple,
        fontSize: 24,
        fontFamily: 'Arial',
      ),
            ),
            Text(
            "This app sends your sleep data to your doctor. Please turn off all other transmitting devices in the room (such as smartwatches, smartphones, headphones) as this may interfere with the test. If you want to start the configuration immediately, press the READY button. The PREVIEW button allows you to preview the setup procedure."
            ),
              const SizedBox( height: 20.0,), 
           Container(
           child:ElevatedButton(
           onPressed: () { 
            Navigator.push(context, MaterialPageRoute(builder: (context) => Step1()));
            },
               child: const Text('PREVIEW'),), 
               ),  
         const SizedBox( height: 20.0,), 
           Container(
           child:ElevatedButton(
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ready()));},
           child: const Text('READY'),), 
           ),
          ,
        );
      );
       
    );
  }
}