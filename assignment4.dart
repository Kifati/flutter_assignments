import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 60, 135, 233),
        child: ListView(
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text("Karan"), 
                accountEmail: Text("karan@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://cdn.myanimelist.net/images/characters/10/76410.jpg"),
                ),
                ),
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.white,),
              title: Text(
                "Home",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(Icons.search,
              color: Colors.white,),
              title: Text(
                "Search",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(Icons.trolley,
              color: Colors.white,),
              title: Text(
                "Orders",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(Icons.settings,
              color: Colors.white,),
              title: Text(
                "Settings",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(Icons.money,
              color: Colors.white,),
              title: Text(
                "Payments",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(Icons.help,
              color: Colors.white,),
              title: Text(
                "Help",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            ListTile(
              leading: Icon(Icons.logout,
              color: Colors.white,),
              title: Text(
                "Logout",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
              ),
            )
          ],
        )
      ),
    );
  }
}
