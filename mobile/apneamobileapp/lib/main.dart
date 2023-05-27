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
              title: Text('CONTACT US'),
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
          
        
            Text("WELCOME" ,style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                    fontSize: 24,
                    fontFamily: 'Arial',
                  ),
            ),
            Center(
              child: const Text(
            "This app sends your sleep data to your doctor. \n Please turn off all other transmitting devices in the room (such as smartwatches, smartphones, headphones) as this may interfere with the test. If you want to start the configuration immediately, press the READY button. The PREVIEW button allows you to preview the setup procedure.",
             textAlign: TextAlign.center,
            ),
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
            const SizedBox( height: 20.0,), 
            Center(
              child: const Text(
            "IF You don't have an account yet please SIGN UP ",
             textAlign: TextAlign.center,
            ),
            ),
           const SizedBox( height: 20.0,), 
           Container(
           child:ElevatedButton(
            onPressed: (){ Navigator.pop(context);
                 Navigator.push(
                context,
            MaterialPageRoute(builder: (context) => SignUpPage()),
          );},
           child: const Text('SIGN UP'),), 
           ),
           const SizedBox( height: 20.0,), 
            Center(
              child: const Text(
            " You  have already an account, please LOG IN ",
             textAlign: TextAlign.center,
            ),
            ),
           const SizedBox( height: 20.0,), 
           Container(
           child:ElevatedButton(
            onPressed: (){ Navigator.pop(context);
                 Navigator.push(
                context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );},
           child: const Text('LOG IN'),), 
           ),
          ],
      ),
      ),);
  }
}
 



 class Step1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
            
              child: Image.asset(
                'assets/BATTERY.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              "INSERT BATTERY",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.purple,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              "Open the battery compartment cover, located on the back of the device and replace the battery. The flat side of the stack faces the MINUS sign.",
              style: TextStyle(
                
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step2()),
                );
               
              },
              child: Text(" NEXT STEP"),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                 Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
          ],
        ),
      ),
    );
  }
}

class Step2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
            
              child: Image.asset(
                'assets/step2.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            
            ),
            const SizedBox(
              height: 20.0,
            ),
           Center(
              child:
            Text(
              "  Be sure to follow the + and - marking, and position the flat side against the spring. ",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
           ),
            const SizedBox(
              height: 20.0,
            ),
            
           
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step3()),
                );
              },
              child: Text("NEXT STEP"),
            ),
            const SizedBox(
              height: 20.0,
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
            
          ],
        ),
      ),
    );
  }
}


class Step3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
            
              child: Image.asset(
                'assets/s2.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              " Take off your watch. Do not put cream on your hands.",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
           
           
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step4()),
                );
              },
              child: Text("NEXT STEP"),
            ),
             const SizedBox(
              height: 20.0,
            ),
               
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
          ],
        ),
      ),
    );
  }
}

class Step4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 4"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/s3.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              "Take off your jewelry and hand cream. Your nails need to be cut.",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step5()),
                );
              },
              child: Text("NEXT STEP"),
            ),
            const SizedBox(
              height: 20.0,
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
          ],
        ),
      ),
    );
  }
}


class Step5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 5"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
            
              child: Image.asset(
                'assets/s4.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              " Put the device on the wrist of your non-dominant hand. Insert your hand and close the strap making sure it is snug but not too tight.",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step6()),
                );
              },
              child: Text("NEXT STEP"),
            ),
            const SizedBox(
              height: 20.0,
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
          ],
        ),
      ),
    );
  }
}


class Step6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 6"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
            
              child: Image.asset(
                'assets/s5.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              "  Place the finger sensor on your index finger.Once placed, the sensor cannot be removed and put on another finger.",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step7()),
                );
              },
              child: Text("NEXT STEP"),
            ),
            const SizedBox(
              height: 20.0,
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
          ],
        ),
      ),
    );
  }
}
 

class Step7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 7"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/s6.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              " If your index finger is too wide for the sensor, choose another finger that fits better.",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step8()),
                );
              },
              child: Text("NEXT STEP"),
            ),
            const SizedBox(
              height: 20.0,
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
          ],
        ),
      ),
    );
  }
}


class Step8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 8"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
            
              child: Image.asset(
                'assets/s7.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              "Insert your index finger all the way to the sensor tip.",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step9()),
                );
              },
              child: Text("NEXT STEP"),
            ),
            const SizedBox(
              height: 20.0,
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
          ],
        ),
      ),
    );
  }
}


class Step9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 9"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
            
              child: Image.asset(
                'assets/s8.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              "By pressing the end of the sensor against a surface.",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step10()),
                );
              },
              child: Text("NEXT STEP"),
            ),
            const SizedBox(
              height: 20.0,
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
          ],
        ),
      ),
    );
  }
}


class Step10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 10"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/s9.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              " The tab on the top of the sensor should be on top of your finger.",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step11()),
                );
              },
              child: Text("NEXT STEP"),
            ),
            const SizedBox(
              height: 20.0,
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
          ],
        ),
      ),
    );
  }
}


class Step11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 11"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
            
              child: Image.asset(
                'assets/s10.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              " Slip the sensor under your sleeve.",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step12()),
                );
              },
              child: Text("NEXT STEP"),
            ),
            const SizedBox(
              height: 20.0,
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
          ],
        ),
      ),
    );
  }
}


class Step12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 12"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
          
              child: Image.asset(
                'assets/s11.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              "...up to the collar.",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step13()),
                );
              },
              child: Text("NEXT STEP"),
            ),
            const SizedBox(
              height: 20.0,
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
          ],
        ),
      ),
    );
  }
}



class Step13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 13"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
            
              child: Image.asset(
                'assets/s12.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              "Remove the sticker on the back of the sensor.",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step14()),
                );
              },
              child: Text("NEXT STEP"),
            ),
            const SizedBox(
              height: 20.0,
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
          ],
        ),
      ),
    );
  }
}


class Step14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 14"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
            
              child: Image.asset(
                'assets/s13.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              " Attach the sensor just below the sternal notch. Shave or clip the hair there if necessary.",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step15()),
                );
              },
              child: Text("NEXT STEP"),
            ),
            const SizedBox(
              height: 20.0,
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
          ],
        ),
      ),
    );
  }
}


class Step15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 15"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
            
              child: Image.asset(
                'assets/s14.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              " You can also secure the sensor with medical tape.",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step16()),
                );
              },
              child: Text("NEXT STEP"),
            ),
            const SizedBox(
              height: 20.0,
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
          ],
        ),
      ),
    );
  }
}

class Step16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 16"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
            
              child: Image.asset(
                'assets/do.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              " the device is working properly and it's time to sleep.",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step17()),
                );
              },
              child: Text("NEXT STEP"),
            ),
            const SizedBox(
              height: 20.0,
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
          ],
        ),
      ),
    );
  }
}


class Step17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 17"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
            
              child: Image.asset(
                'assets/s16.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              " In the morning, remove the chest sensor.",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step18()),
                );
              },
              child: Text("NEXT STEP"),
            ),
            const SizedBox(
              height: 20.0,
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
          ],
        ),
      ),
    );
  }
}


class Step18 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 18"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
            
              child: Image.asset(
                'assets/s17.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              " Remove the device from your hand.",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step19()),
                );
              },
              child: Text("NEXT STEP"),
            ),
            const SizedBox(
              height: 20.0,
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
          ],
        ),
      ),
    );
  }
}


class Step19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 19"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
           
              child: Image.asset(
                'assets/s18.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              "  Remove the sensor from your finger.",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step20()),
                );
              },
              child: Text("NEXT STEP"),
            ),
            const SizedBox(
              height: 20.0,
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
          ],
        ),
      ),
    );
  }
}


class Step20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Step 20"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
           
              child: Image.asset(
                'assets/s19.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
           
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              " Remove the battery from the device and keep it for other uses.",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ready()),
                );
              },
              child: Text("READY"),
            ),
            const SizedBox(
              height: 20.0,
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("PREVIOUS STEP"),
            ),
          ],
        ),
      ),
    );
  }
}


class ready extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LET'S START"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
            
              child: Image.asset(
                'assets/voice.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            
            ),
            const SizedBox(
              height: 20.0,
            ),
           
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => record()),
                );
              },
              child: Text("START RECORDING"),
            ),
            
          ],
        ),
      ),
    );
  }
}


class record extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RECORDING"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
            
              child: Image.asset(
                'assets/wake up.PNG',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            
            ),
            const SizedBox(
              height: 20.0,
            ),
             Text("GOOD MORNING" ,
             style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.purple,
        fontSize: 24,
        fontFamily: 'Arial',
      ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
            Text(
              " Please do not close the application while the data is being uploaded.The data transmission will take a few minutes. ",
              style: TextStyle(
               
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Arial',
              ),
            ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => results()),
                );
              },
              child: Text("VIEW RESULTS"),
            ),
            const SizedBox(
              height: 20.0,
            ),
          ]
        ),
      ),
    );
  }
}

class results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RESULTS"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
               
             Text("ANALYSIS OF YOUR OXYGEN LEVEL " ,
             style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.purple,
            fontSize: 24,
            fontFamily: 'Arial',
          ),
            ),

             const SizedBox(
              height: 20.0,
            ),
            Container(
              child: Image.asset(
                'assets/rs.PNG',
                //width: 400,
                //height: 400,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
        
            
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Step1()),
                );
              },
              child: Text("STEPS"),
            ),
           
          ]
        ),
      ),
    );
  }
}


