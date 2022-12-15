import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://images.app.goo.gl/qWCZZBxTNakQMWrWA";
    return Drawer(
      child: Container(
        //color: Colors.deepPurpleAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  // ListTile(
                  //// leading: Icon(Icons.favorite),
                  //title: Text('Favorites'),
                  //onTap: () => print('Fav'),
                  // ),
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                  //Image.asset('assets/images/backgroynd.jpg'),
                  //),
                  accountName: Text('Tanvi Dhage'),
                  accountEmail: Text('tanvidhage9@gmail.com'),

                  //currentAccountPicture: Image.network(imageUrl),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                    child: new Text("T"),
                    //width: 90,
                    //height: 90,
                    //fit: BoxFit.cover,
                  )),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            ),

            ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              title: Text(
                "Favorites",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            ),

            ListTile(
              leading: Icon(
                Icons.share,
                color: Colors.black,
              ),
              title: Text(
                "Share",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            ),

            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              //Divider(thickness: 1,),
              title: Text(
                "Settings",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            ),

            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.black,
              ),
              title: Text(
                "Exit",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            )

            //decoration: BoxDecoration(
            //color: Colors.blue,
            // image: DecorationImage(
            //image: NetworkImage(
//'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg'),
            //fit: BoxFit.cover,
          ],
        ),
      ),
    );
  }
}
