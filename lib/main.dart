import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "First App",
      home: Scaffold(
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Donor search"),
          elevation: 30,
          shadowColor: Colors.greenAccent,
          toolbarOpacity: .9,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          // leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {
                print("Search");
              },
              icon: Icon(Icons.search),
            ),
            Icon(Icons.more_vert),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.shopping_bag),
                text: "Shopping",
              ),
              Tab(
                icon: Icon(Icons.card_travel),
                text: "Card",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "person",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Shopping")),
            Center(child: Text("Travel Card")),
            Center(child: Text("Person")),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Sotterjuti Foundation"),
                accountEmail: Text("sotterjoti@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: Image.asset('assets/images/sotter.jpg'),
                ),
              ),
              ListTile(
                title: Text("Shamim Hasan"),
                subtitle: Text("Blood Group B+"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("Shamim Hasan"),
                subtitle: Text("Blood Group B+"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("Shamim Hasan"),
                subtitle: Text("Blood Group B+"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("Shamim Hasan"),
                subtitle: Text("Blood Group B+"),
                trailing: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Material(
          color: Colors.pink,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          child: TabBar(
            labelColor: Color.fromARGB(128, 202, 219, 10),
            unselectedLabelColor: Color.fromARGB(255, 19, 19, 19),
            tabs: [
              Tab(
                icon: Icon(Icons.shopping_bag),
                text: "Shopping",
              ),
              Tab(
                icon: Icon(Icons.card_travel),
                text: "Card",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "person",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
