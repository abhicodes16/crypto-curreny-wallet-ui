import 'package:flutter/material.dart';
import 'package:wallets/screens/category.dart';
import 'package:wallets/screens/settings.dart';
import 'package:wallets/screens/transaction.dart';
import 'package:wallets/screens/wallet.dart';


class Home extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => HomePage();


}

class HomePage extends State<Home> {


  int _currentIndex = 0;
  final List<Widget> _children = [
    Wallet(),
    Category(),
    Transaction(),
    Settings(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


  /* -----//////////////////////////////////////////////////////////////////////---- */
  /* -------------------------------- Main Build Function -------------------------- */
  /* -----//////////////////////////////////////////////////////////////////////---- */
  @override
  Widget build(BuildContext context) {

    /* ------------------------------------- Main Scaffold Function --------------------------- */
    return Scaffold(

      /*------------------ body ----------------*/
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        iconSize: 26.0,
        items: [
          BottomNavigationBarItem(
          icon: Icon(Icons.security),
          title: Text('Wallet'),
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
          title: Text('Dashboard'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz),
            title: Text('Transaction'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          )
        ],
      ),

    );



  }


}


