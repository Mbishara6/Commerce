import 'package:flutter/material.dart';

import 'login_Page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(right: 60.0),
                child: Text("what kind of User are \n you? ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 29.9,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text("We will adapt the app to suit your \n needs.",
                      style: TextStyle(
                        fontSize: 15,
                      ) ,
                      ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(20.0)),
              Row(
                children: [
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RawMaterialButton(
                          highlightElevation: 10.0,
                          splashColor: Colors.lightBlueAccent,
                          onPressed: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context)=>
                                      login(data:'Login Page.'),
                                ),
                            );
                          },
                          fillColor: Color(0xFF46A5BA),
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),),
                          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 40.0),
                          child: Text("Personal",
                            style:TextStyle(
                              fontSize: 26.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(10),),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RawMaterialButton(
                        highlightElevation: 5.0,
                        splashColor: Color(0xFF46A5BA),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context)=>
                                  login(data:'Login Page.'),
                            ),
                          );
                        },
                        fillColor: Color(0xFF46A5BA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // Rounded corners
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 40.0),
                        child: Text("E-Commerce",
                          style:TextStyle(
                            fontSize: 25.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
