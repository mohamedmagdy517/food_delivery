import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/contants.dart';
import '../widgets/home_header_widget.dart';
import '../widgets/home_newest_widget.dart';
import '../widgets/home_popular_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final Constants _constants = Constants();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const HomeScreenDrawer(),
        backgroundColor: _constants.PrimaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeScreenHeader(),
              const HomePopularWidget(),
              HomeNewestWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

//// home_screen_drawer

class HomeScreenDrawer extends StatelessWidget {
  const HomeScreenDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                  currentAccountPicture: Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/avatar.jpg'),
                    ),
                  ),
                  decoration: BoxDecoration(color: Colors.red),
                  accountName: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Mohamed Magdy Mohamed ',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  accountEmail: Text(
                    'mohamed @matnsolutions.com',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ))),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.red,
            ),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          // my account
          ListTile(
            leading: Icon(
              CupertinoIcons.person,
              color: Colors.red,
            ),
            title: Text(
              "My Account",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          //mr orders
          ListTile(
            leading: Icon(
              CupertinoIcons.cart,
              color: Colors.red,
            ),
            title: Text(
              "My Orders",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          // wish list
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            title: Text(
              "My Wish List",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          //// Settings
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.red,
            ),
            title: Text(
              "Settings",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          //// LogOut
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.red,
            ),
            title: Text(
              "LOgOut",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

// Categories_Section

// ignore: must_be_immutable
class CtaegoriesList extends StatelessWidget {
  CtaegoriesList({super.key});
  List<String> myList = ['drink', 'pizza', 'pizza', 'biryani'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20),
          child: Container(
            alignment: Alignment.topLeft,
            child: const Text(
              'Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: myList.length,
              itemBuilder: (BuildContext context, int index) =>
                  ProductItem(myImage: 'assets/${myList[index]}.png')),
        ),
      ],
    );
  }
}
