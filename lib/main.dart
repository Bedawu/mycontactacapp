import 'package:contactapp/contact_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'contener app',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: const Text(
          "My contact",
          style: TextStyle(color: Colors.black),
        ),

        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          // ignore: prefer_const_constructors
          CircleAvatar(
            backgroundImage: const AssetImage("images/woman.jpg"),
          )
        ],
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, index) {
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // ignore: prefer_const_constructors
          if (index == 0)
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Search by name or number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
          if (index == 0)
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: const Text("Recents",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
          if (index == 3)
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: const Text("Contacts",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  // ignore: prefer_const_constructors
                  MaterialPageRoute(builder: (context) => ContactPage()));
            },
            child: const ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage(
                  "images/lady.jpg",
                )),
                title: Text(
                  "Teachries Ghana",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                subtitle: Text("+23325669522465"),
                trailing: Icon(Icons.more_horiz)),
          ),
          // ignore: prefer_const_constructors
          Divider(
            height: 4,
            color: Colors.grey,
          ),
        ]);
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // ignore: prefer_const_constructors
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
    );
  }
}
