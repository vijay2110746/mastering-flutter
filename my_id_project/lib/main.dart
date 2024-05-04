import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Card(),
  ));
}

class Card extends StatefulWidget {
  const Card({super.key});

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  int year = 1;
  inc() {
    setState(() {
      if (year < 4) {
        year = year + 1;
      }
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'VJ ID CARD', style: TextStyle(fontSize: 18.0, letterSpacing: 2.0,),),
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[800],
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: inc, child: Icon(Icons.add),),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 40.0, 0.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: CircleAvatar(
                backgroundImage: AssetImage('assets/Vijay_Organizer.jpeg'),
                radius: 50.0,)),
              SizedBox(height: 50.0,),
              Text('NAME',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),),
              Text('Vijay Veerasekaran', style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),),
              SizedBox(height: 20.0,),
              Text('DEPARTMENT',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),),
              Text('Information Technology', style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),),
              SizedBox(height: 20.0,),
              Row(
                children: [Icon(Icons.email, color: Colors.grey,),
                  SizedBox(width: 10.0,),
                  Text('vijayveerasekaran7@gmail.com',
                    style: TextStyle(color: Colors.white,),)
                ],
              ),
              SizedBox(height: 20.0,),
              Text('YEAR OF STUDY',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),),
              Text('$year', style: TextStyle(color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),),

            ],
          ),
        ),
      ),
    );
  }
  }


