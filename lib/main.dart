import 'package:flutter/material.dart';
import 'package:flutter_basics/Homepage.dart';
import 'package:flutter_basics/Splash%20Screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: SpalshScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  var UnameController = TextEditingController();
  var PassController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('Login Page',
            style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold),),
        ),
        body: Container(
          color: Colors.white,
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Icon(Icons.account_circle, color: Colors.blue, size: 100,),
                  ),
                  TextField(
                    controller: UnameController,
                    decoration: InputDecoration(
                        label: Text('Email'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)
                        )
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: PassController,
                    decoration: InputDecoration(
                        label: Text('Password'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)
                        )
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(onPressed: () async {

                    //if succesffuly Logged!

                    var sharedPref =await  SharedPreferences.getInstance();
                    sharedPref.setBool(SplashScreenState.KEYLOGIN, true);

                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Homepage(),));
                  }, child: Text('Login'))
                ],
              )),
        )
    );
  }
}

