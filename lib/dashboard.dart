import 'package:flutter/material.dart';
import 'package:oau_bike_service/customers_profile.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blueGrey[800],v  
        leading: Image.asset('images/oau_logo.jpg',
        
        ),
        title: Text('OAUBIKES',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Momo',
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.notification_add),
          ),
          ],
      ),
      body: Scaffold(
        backgroundColor: Colors.blueGrey[100], 
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(onTap: () {
                  // return CustomersProfile();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CustomersProfile()),
                  );
                },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person),
                        Text("Profile",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        )
                      ],
                    ),  
                    height: 120,
                    width: 130,
                    color: Colors.amber,
                  ),
                ),
                SizedBox(width:40),
                  GestureDetector(onTap: () {},
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.book_outlined),
                        Text("Place Order",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ],
                    ),  
                    height: 120,
                    width: 130,
                    color: Colors.red,
                  ),
              ),
           ] 
        ),
        SizedBox(height: 20),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(onTap: () {},
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person_3_rounded),
                          Text("Available BikeMan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ],
                      ),
                    ),  
                    height: 120,
                    width: 130,
                    color: Colors.amber,
                  ),
                ),
                SizedBox(width:40),
                  GestureDetector(onTap: () {},
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on_rounded),
                        Text("Locate BikeMan",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ],
                    ),  
                    height: 120,
                    width: 130,
                    color: Colors.red,
                  ),
              ),
           ] 
        ),
      ]
  )   
), 


   );
  
  }
}
