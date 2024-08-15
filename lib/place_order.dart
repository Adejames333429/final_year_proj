import 'package:flutter/material.dart';


class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/googlemap.webp'),
          fit: BoxFit.cover
        ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your present Location',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lora',
             ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Your Location',
                  hintStyle: TextStyle(
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                    color: Colors.indigo,
                  ),
                  prefixIcon: Icon(Icons.location_city,
                  color: Colors.indigo,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}