import 'package:flutter/material.dart';
class Delivery extends StatefulWidget {
  const Delivery({super.key});

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
         backgroundColor: Colors.white,
          title: Text("Hello,Bishara"),
          leading: IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {  }, icon:
              Icon(Icons.notification_add_outlined),
            ),
          ],
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          bottom: true,
          right: true,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Balance(),
                Padding(padding: EdgeInsets.all(5.0)),
                Search(),
                Package(),

              ],
            )
          ),
        ),
      ),
    );
  }
}
class Balance extends StatefulWidget {
  const Balance({super.key});

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
        width: double.infinity,
        margin: const EdgeInsets.all(30),
    padding: const EdgeInsets.symmetric(
    horizontal: 20,
    ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            offset: Offset(5.0,5.0),
            blurRadius: 5.0,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Colors.grey.shade200,
            offset: Offset(-5.0,-5.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              Text("Total Balance",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("\$50,000",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 25,
              ),
              ),
              Padding(padding: EdgeInsets.all(30)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF46A5BA),
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(150)),
                      ),),
                       onPressed: (){},
                      child:Text("Top Up >>",
                       style: TextStyle(
                         color: Colors.black,
                       fontSize: 12,
                       fontWeight: FontWeight.w900,))
                ),
            ],
          )
        ],
      ),
    );
  }
}
class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow:[
          BoxShadow(
            color: Colors.grey.shade200,
            offset: Offset(5.0,5.0),
            blurRadius: 5.0,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Colors.grey.shade200,
            offset: Offset(-5.0,-5.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child:Padding(
        padding: const EdgeInsets.all(15.0),
        child:TextFormField(
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintStyle: TextStyle(
              color: Colors.black54,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal:24, vertical: 16),
            prefix:Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
      ),
    );
  }
}
class Package extends StatelessWidget {
  const Package({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        crossAxisSpacing: 40,
        children: [
         // itemDashboard(Bike, iconData, background)
        ],
      )
    );
  }

}


