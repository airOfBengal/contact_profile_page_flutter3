import 'package:flutter/material.dart';

void main() {
  runApp(
    ContactProfilePage(),
  );
}

class ContactProfilePage extends StatelessWidget {
  const ContactProfilePage({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyAppThemes.appThemeDark(),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                print('Contact is starred');
              },
              icon: const Icon(Icons.star_border),
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
                  child: Theme(
                    data: ThemeData(
                      iconTheme: const IconThemeData(
                        color: Colors.orange,
                      ),
                    ),
                    child: profileActionItems(),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                mobilePhoneListTile(),
                otherPhoneListTile(),
                const Divider(
                  color: Colors.grey,
                ),
                emailListTile(),
                const Divider(
                  color: Colors.grey,
                ),
                addressListTile(),
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
          icon: const Icon(
            Icons.call,
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
          icon: const Icon(
            Icons.message,
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
          icon: const Icon(
            Icons.video_call,
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
          icon: const Icon(
            Icons.email,
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
          icon: const Icon(
            Icons.directions,
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
          icon: const Icon(
            Icons.attach_money,
          ),
        ),
        const Text(
          'Pay',
        ),
      ],
    );
  }

  Widget mobilePhoneListTile() {
    return ListTile(
      leading: const Icon(Icons.call),
      title: const Text("0123456789"),
      subtitle: const Text("mobile"),
      trailing: IconButton(
        icon: const Icon(Icons.message),
        onPressed: () {},
      ),
    );
  }

  Widget otherPhoneListTile() {
    return ListTile(
      leading: const Text(""),
      title: const Text("9876543210"),
      subtitle: const Text("other"),
      trailing: IconButton(
        icon: const Icon(Icons.message),
        onPressed: () {},
      ),
    );
  }

  Widget emailListTile() {
    return const ListTile(
      leading: Icon(Icons.email),
      title: Text("atiqul.islam@example.com"),
      subtitle: Text("work"),
    );
  }

  Widget addressListTile() {
    return ListTile(
      leading: const Icon(Icons.location_on),
      title: const Text("Dhaka, Bangladesh"),
      subtitle: const Text("home"),
      trailing: IconButton(
        icon: const Icon(Icons.directions),
        onPressed: () {},
      ),
    );
  }

  Widget profileActionItems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildCallButton(),
        buildTextButton(),
        buildVideoCallButton(),
        buildEmailButton(),
        buildDirectionsButton(),
        buildPayButton(),
      ],
    );
  }

}


class MyAppThemes {
  static ThemeData appThemeLight (){
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.indigo.shade800,
      ),
    );
  }

  static ThemeData appThemeDark(){
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      iconTheme: const IconThemeData(
        color: Colors.orange,
      ),
    );
  }
}