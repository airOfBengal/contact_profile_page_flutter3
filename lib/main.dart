import 'package:flutter/material.dart';

void main() {
  runApp(
    const ContactProfilePage(),
  );
}

class ContactProfilePage extends StatelessWidget {
  const ContactProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                print('Contact is starred');
              },
              icon: const Icon(Icons.star_border),
              color: Colors.black,
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 250,
                  child: Image.network(
                    "https://drive.google.com/uc?id=1u1M6Qx_QkQxkBBnp5b49caE29UBIhbUL",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Md. Atiqul Islam",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      buildCallButton(),
                      buildTextButton(),
                      buildVideoCallButton(),
                      buildEmailButton(),
                      buildDirectionsButton(),
                      buildPayButton(),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.call,
            color: Colors.indigo.shade800,
          ),
        ),
        const Text(
          'Call',
        ),
      ],
    );
  }

  Widget buildTextButton() {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.message,
            color: Colors.indigo.shade800,
          ),
        ),
        const Text(
          'Text',
        ),
      ],
    );
  }

  Widget buildVideoCallButton() {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.video_call,
            color: Colors.indigo.shade800,
          ),
        ),
        const Text(
          'Video',
        ),
      ],
    );
  }

  Widget buildEmailButton() {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.email,
            color: Colors.indigo.shade800,
          ),
        ),
        const Text(
          'Email',
        ),
      ],
    );
  }

  Widget buildDirectionsButton() {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.directions,
            color: Colors.indigo.shade800,
          ),
        ),
        const Text(
          'Directions',
        ),
      ],
    );
  }

  Widget buildPayButton() {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.attach_money,
            color: Colors.indigo.shade800,
          ),
        ),
        const Text(
          'Pay',
        ),
      ],
    );
  }
}
