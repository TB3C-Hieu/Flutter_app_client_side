import 'package:flutter/material.dart';

import 'MenuItems.dart';

Widget drawer(BuildContext context) {
  return Container(
    child: Drawer(
      child: Container(
        color: Colors.grey[400],
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 95.0,
              child: DrawerHeader(
                child: Center(
                  child: Text(
                    'Travel App',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF3EBACE),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Unknown",
                style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w800),
              ),
              leading: CircleAvatar(
                child: Icon(
                  Icons.perm_identity,
                  color: Colors.white,
                ),
                radius: 40,
              ),
            ),
            Divider(
              height: 64,
              thickness: 0.5,
              color: Colors.white.withOpacity(0.3),
              indent: 32,
              endIndent: 32,
            ),
            MenuItem(
              icon: Icons.home,
              title: "Home",
             /*onTap: () {
               onIconPressed() {
                 Navigator.pushNamed(context, '/HomeScreen');
               };
             },*/
             ),
            MenuItem(
              icon: Icons.person,
              title: "My Account",
              /*onTap: () {
                onIconPressed();
                BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.MyAccountClickedEvent);
              },*/
            ),
            MenuItem(
              icon: Icons.shopping_basket,
              title: "My Orders",
              /*onTap: () {
                onIconPressed();
                BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.MyOrdersClickedEvent);
              },*/
            ),
            Divider(
              height: 64,
              thickness: 0.5,
              color: Colors.white.withOpacity(0.3),
              indent: 32,
              endIndent: 32,
            ),
            MenuItem(
              icon: Icons.settings,
              title: "Settings",
            ),
            MenuItem(
              icon: Icons.exit_to_app,
              title: "Logout",
            ),
          ],
        ),
      ),
    ),
  );
}