import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustumDrawer extends StatelessWidget {
  const CustumDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl = "https://avatars.githubusercontent.com/u/76869453?v=4";

    return Drawer(
      // shadowColor: Colors.indigo,
      child: Container(
        color: Colors.indigo,
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: const <Widget>[
            DrawerHeader(
                // margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  accountName: Text("Abhishek"),
                  accountEmail: Text("abhi@gmail.com"),
                )),
            ListTile(
              textColor: Colors.white,
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/home.png'),
              ),
              title: Text(
                'Home',
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              textColor: Colors.white,
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              title: Text(
                'Profile',
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              textColor: Colors.white,
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/about.png'),
              ),
              title: Text(
                'About',
                textScaleFactor: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
