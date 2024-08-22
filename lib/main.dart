import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello BMC Flutter",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Hello BMC Flutter"),
              backgroundColor: Colors.deepOrange,
            ),
            body: Builder(
                builder: (context) => Center(
                        child: Column(
                      children: [
                        Text(
                          'Stanczyk',
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[1000]),
                        ),
                        Text(
                          'Discover the Sad Clown Paradox',
                          style:
                              TextStyle(fontSize: 20, color: Colors.blueGrey),
                        ),
                        Image.network(
                          'https://th.bing.com/th/id/OIP.2cFqueHU--nnp2MgIm8-6gHaFb?rs=1&pid=ImgDetMain',
                          height: 350,
                        ),
                        ElevatedButton(
                            onPressed: () => contactUs(context),
                            child: Text('Contact Me'))
                      ],
                    )))));
  }
}

void contactUs(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext) {
        return AlertDialog(
          title: Text('Contact Me'),
          content: Text('Mail us at Helloworld.com'),
          actions: <Widget>[
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Close'))
          ],
        );
      });
}
