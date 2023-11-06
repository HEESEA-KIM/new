import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Payment'),
          titleTextStyle: const TextStyle(color: Colors.white),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/everland2.png'),
                radius: 220,
              ),
              SizedBox(height: 20,),
              Row(
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Everland',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  SizedBox(width: 15,),
                  Text(
                    'Reviews',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'THEME PARKS',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue, // Change the text color here
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Flexible(
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'reviews',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue, // Change the text color here
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Yongin-si',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),),
                  SizedBox(width: 10,),
                  Text('?Km', style: TextStyle(fontSize: 18, color: Colors.black87),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.military_tech, color: Colors.orangeAccent,),
                  Text('No.1 of Top 20 Best Things to DO in Gyeonggi-do',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.orangeAccent),),
                ],
              ),
              SizedBox(height: 30,),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    print('구매클릭');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  child: Text('from \$ 24.56',style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}