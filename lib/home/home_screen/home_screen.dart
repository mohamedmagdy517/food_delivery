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

///// Popular_Section

// Home_Screen_Header

///// search bar

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 6,
              spreadRadius: 1,
              color: Color.fromARGB(125, 0, 0, 0))
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.search,
                color: Colors.red,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "what would you want ",
                          border: InputBorder.none)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//// newest_Widget
// class NewestWidget extends StatelessWidget {
//   const NewestWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Column(
//         children: [
//           Stack(
//             children: [
//               Column(
//                 children: [
//                   Padding(
//                     padding:
//                         const EdgeInsets.only(bottom: 10, left: 20, top: 5),
//                     child: Container(
//                       alignment: Alignment.topLeft,
//                       child: const Text(
//                         'Newest',
//                         style: TextStyle(
//                             fontSize: 22, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.all(10),
//                     child: Container(
//                       height: 200,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                           boxShadow: [
//                             BoxShadow(blurRadius: 10, color: Colors.grey)
//                           ],
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(10),
//                         child: Container(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 height: 150,
//                                 width: 100,
//                                 child: Image.asset(
//                                   fit: BoxFit.fill,
//                                   'assets/pizza.png',
//                                 ),
//                               ),
//                               Container(
//                                 // width: 150,
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding:
//                                           EdgeInsets.symmetric(vertical: 10),
//                                       child: Text(
//                                         'Hot Pizza',
//                                         style: TextStyle(
//                                             fontSize: 25,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                     ),
//                                     Container(
//                                       width: 200,
//                                       child: Text(
//                                         ' Taste Our Hot Pizza We \n provide our  Great Food',
//                                         style: TextStyle(
//                                             color: Colors.grey,
//                                             fontSize: 16,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                     ),
//                                     RatingBar.builder(
//                                       itemSize: 20,
//                                       // itemPadding: EdgeInsets.zero,
//                                       initialRating: 3,
//                                       minRating: 1,
//                                       direction: Axis.horizontal,
//                                       allowHalfRating: true,
//                                       itemCount: 5,
//                                       itemPadding:
//                                           EdgeInsets.symmetric(horizontal: 5),
//                                       itemBuilder: (context, _) => Container(
//                                         // width: 30,
//                                         // height: 30,
//                                         child: Icon(
//                                           size: 11,
//                                           Icons.star,
//                                           color: Colors.red,
//                                         ),
//                                       ),
//                                       onRatingUpdate: (rating) {
//                                         print(rating);
//                                       },
//                                     ),
//                                     Container(
//                                       padding: EdgeInsets.only(top: 20),
//                                       width: 150,
//                                       alignment: Alignment.topLeft,
//                                       child: Text(
//                                         '10\$',
//                                         style: TextStyle(
//                                             color: Colors.red,
//                                             fontSize: 25,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 child: Icon(
//                                     size: 30,
//                                     color: Colors.red,
//                                     Icons.favorite_border_outlined),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Positioned(
//                   bottom: 20,
//                   right: 20,
//                   child: Container(
//                     height: 50,
//                     width: 50,
//                     decoration: BoxDecoration(
//                         boxShadow: const [
//                           BoxShadow(
//                               blurRadius: 6,
//                               spreadRadius: 1,
//                               color: Colors.grey)
//                         ],
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(20)),
//                     child: const Icon(
//                       Icons.shopping_cart,
//                       color: Colors.red,
//                     ),
//                   )),
//             ],
//           ),
//           Stack(
//             children: [
//               Column(
//                 children: [
//                   Padding(
//                     padding:
//                         const EdgeInsets.only(bottom: 10, left: 20, top: 5),
//                     child: Container(
//                       alignment: Alignment.topLeft,
//                       child: const Text(
//                         'Newest',
//                         style: TextStyle(
//                             fontSize: 22, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.all(10),
//                     child: Container(
//                       height: 200,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                           boxShadow: [
//                             BoxShadow(blurRadius: 10, color: Colors.grey)
//                           ],
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(10),
//                         child: Container(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 height: 150,
//                                 width: 100,
//                                 child: Image.asset(
//                                   fit: BoxFit.fill,
//                                   'assets/pizza.png',
//                                 ),
//                               ),
//                               Container(
//                                 // width: 150,
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding:
//                                           EdgeInsets.symmetric(vertical: 10),
//                                       child: Text(
//                                         'Hot Pizza',
//                                         style: TextStyle(
//                                             fontSize: 25,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                     ),
//                                     Container(
//                                       width: 200,
//                                       child: Text(
//                                         ' Taste Our Hot Pizza We \n provide our  Great Food',
//                                         style: TextStyle(
//                                             color: Colors.grey,
//                                             fontSize: 16,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                     ),
//                                     RatingBar.builder(
//                                       itemSize: 20,
//                                       // itemPadding: EdgeInsets.zero,
//                                       initialRating: 3,
//                                       minRating: 1,
//                                       direction: Axis.horizontal,
//                                       allowHalfRating: true,
//                                       itemCount: 5,
//                                       itemPadding:
//                                           EdgeInsets.symmetric(horizontal: 5),
//                                       itemBuilder: (context, _) => Container(
//                                         // width: 30,
//                                         // height: 30,
//                                         child: Icon(
//                                           size: 11,
//                                           Icons.star,
//                                           color: Colors.red,
//                                         ),
//                                       ),
//                                       onRatingUpdate: (rating) {
//                                         print(rating);
//                                       },
//                                     ),
//                                     Container(
//                                       padding: EdgeInsets.only(top: 20),
//                                       width: 150,
//                                       alignment: Alignment.topLeft,
//                                       child: Text(
//                                         '10\$',
//                                         style: TextStyle(
//                                             color: Colors.red,
//                                             fontSize: 25,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 child: Icon(
//                                     size: 30,
//                                     color: Colors.red,
//                                     Icons.favorite_border_outlined),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Positioned(
//                   bottom: 20,
//                   right: 20,
//                   child: Container(
//                     child: Icon(
//                       Icons.shopping_cart,
//                       color: Colors.red,
//                     ),
//                     height: 50,
//                     width: 50,
//                     decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                               blurRadius: 6,
//                               spreadRadius: 1,
//                               color: Colors.grey)
//                         ],
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(20)),
//                   )),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
