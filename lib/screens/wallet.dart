import 'package:flutter/material.dart';
import 'package:wallets/screens/notifications.dart';
import 'package:wallets/style/Palette.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Wallet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Page();
}

class Page extends State<Wallet> {
  /* ----------------- padding, margin --------------- */
  EdgeInsets _five = EdgeInsets.all(5.0);
  EdgeInsets _standard = EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0);

  bool isdark = false;

  @override
  void initState() {
    super.initState();
    _darkSwitchValue(isdark);
  }

  /* -----//////////////////////////////////////////////////////////////////////---- */
  /* -------------------------------- Main Build Function -------------------------- */
  /* -----//////////////////////////////////////////////////////////////////////---- */
  @override
  Widget build(BuildContext context) {
    /* ------------------------------------- Main Scaffold Function --------------------------- */
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Notifications()));
              },
            ),
            // IconButton(
            //   icon: Icon(Icons.add),
            //   onPressed: () {},
            // ),
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "Tokens",
              ),
              Tab(
                text: "Finance",
              ),
              Tab(
                text: "Collectibles",
              )
            ],
          ),
        ),

        /*------------------ body ----------------*/
        body: TabBarView(
          children: [_tokensTab(), _financeTab(), _collectibles()],
        ),
      ),
    );
  }

  /*--------------------------------- Tab 1 ------------------------*/
  Widget _tokensTab() {
    return ListView(
      children: <Widget>[
        Container(
          margin: _five * 3,
        ),
        Container(
          margin: _standard,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  margin: _standard,
                  child: Text(
                    "\$50.00",
                    style:
                        TextStyle(fontSize: 38.0, fontWeight: FontWeight.w600),
                  )),
              Container(
                margin: _standard,
                child: Text(
                  'Multi - Coin Wallet 1',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: _five * 2,
        ),
        Card(
          elevation: 10.0,
          shadowColor: Colors.black.withOpacity(0.3),
          margin: _standard,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            children: <Widget>[
              /*-------------------- List item 1 -----------------*/
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                child: Row(
                  children: <Widget>[
                    /*----------------- leading -----------------*/
                    Container(
                      margin: _standard,
                      child: Container(
                        child: CircleAvatar(
                          radius: 24.0,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('images/Ethereum.png'),
                        ),
                      ),
                    ),

                    /*------- title subtitle  ----*/
                    Expanded(
                      child: Container(
                        margin: _five,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            /*------------------ task title -----------------*/
                            Container(
                              margin: EdgeInsets.only(top: 0.0, bottom: 2.0),
                              child: Text('Ethereum',
                                  style: TextStyle(fontSize: 15.0)),
                            ),
                            Container(
                              margin: _five / 2,
                            ),

                            /*------------------ sub title -----------------*/
                            Container(
                              margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                      child: Icon(
                                    Icons.attach_money,
                                    size: 12.0,
                                  )),
                                  Container(
                                    child: Text("243.46",
                                        style: TextStyle(fontSize: 12.0)),
                                  ),
                                  Container(
                                    margin: _five,
                                  ),
                                  Container(
                                    child: Text(
                                      "+0.45%",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 12.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    /*------------------ Assigned to profile -----------------*/
                    Container(
                      margin: EdgeInsets.all(5.0),
                      child: Text("0 ETH", style: TextStyle(fontSize: 16.0)),
                    )
                  ],
                ),
              ),
              Divider(),

              /*-------------------- List item 2 -----------------*/
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                child: Row(
                  children: <Widget>[
                    /*----------------- leading -----------------*/
                    Container(
                      margin: _standard,
                      child: Container(
                        child: CircleAvatar(
                          radius: 24.0,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('images/Bitcoin.jpg'),
                        ),
                      ),
                    ),

                    /*------- title subtitle  ----*/
                    Expanded(
                      child: Container(
                        margin: _five,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            /*------------------ task title -----------------*/
                            Container(
                              margin: EdgeInsets.only(top: 0.0, bottom: 2.0),
                              child: Text('Bitcoin',
                                  style: TextStyle(fontSize: 15.0)),
                            ),
                            Container(
                              margin: _five / 2,
                            ),

                            /*------------------ sub title -----------------*/
                            Container(
                              margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                      child: Icon(
                                    Icons.attach_money,
                                    size: 12.0,
                                  )),
                                  Container(
                                    child: Text("9,876.46",
                                        style: TextStyle(fontSize: 12.0)),
                                  ),
                                  Container(
                                    margin: _five,
                                  ),
                                  Container(
                                    child: Text(
                                      "+0.05%",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 12.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    /*------------------ Assigned to profile -----------------*/
                    Container(
                      margin: EdgeInsets.all(5.0),
                      child: Text("0 BTC", style: TextStyle(fontSize: 16.0)),
                    )
                  ],
                ),
              ),
              Divider(),

              /*-------------------- List item 3 -----------------*/
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                child: Row(
                  children: <Widget>[
                    /*----------------- leading -----------------*/
                    Container(
                      margin: _standard,
                      child: Container(
                        child: CircleAvatar(
                          radius: 24.0,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('images/BNB.png'),
                        ),
                      ),
                    ),

                    /*------- title subtitle  ----*/
                    Expanded(
                      child: Container(
                        margin: _five,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            /*------------------ task title -----------------*/
                            Container(
                              margin: EdgeInsets.only(top: 0.0, bottom: 2.0),
                              child:
                                  Text('BNB', style: TextStyle(fontSize: 15.0)),
                            ),
                            Container(
                              margin: _five / 2,
                            ),

                            /*------------------ sub title -----------------*/
                            Container(
                              margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                      child: Icon(
                                    Icons.attach_money,
                                    size: 12.0,
                                  )),
                                  Container(
                                    child: Text("17.46",
                                        style: TextStyle(fontSize: 12.0)),
                                  ),
                                  Container(
                                    margin: _five,
                                  ),
                                  Container(
                                    child: Text(
                                      "-1.26%",
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 12.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    /*------------------ Assigned to profile -----------------*/
                    Container(
                      margin: EdgeInsets.all(5.0),
                      child: Text("0 BNB", style: TextStyle(fontSize: 16.0)),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  /*--------------------------------- Tab 2 ------------------------*/
  Widget _financeTab() {
    return ListView(
      children: <Widget>[
        Container(
          margin: _five * 2,
        ),
        Card(
          elevation: 10.0,
          shadowColor: Colors.black.withOpacity(0.3),
          margin: _standard,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            children: <Widget>[
              Card(
                elevation: 0,
                color: Color.fromRGBO(78, 117, 173, 0.2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Container(
                  padding: _five * 2,
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Staking',
                        style: TextStyle(fontSize: 13.0),
                      ),
                    ],
                  ),
                ),
              ),

              /*-------------------- List item 1 -----------------*/
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                child: Row(
                  children: <Widget>[
                    /*----------------- leading -----------------*/
                    Container(
                      margin: _standard,
                      child: Container(
                        child: CircleAvatar(
                          radius: 24.0,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('images/tron.png'),
                        ),
                      ),
                    ),

                    /*------- title subtitle  ----*/
                    Expanded(
                      child: Container(
                        margin: _five,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            /*------------------ task title -----------------*/
                            Container(
                              margin: EdgeInsets.only(top: 0.0, bottom: 2.0),
                              child: Text('Tron (TRX)',
                                  style: TextStyle(fontSize: 15.0)),
                            ),
                            Container(
                              margin: _five,
                            ),

                            /*------------------ sub title -----------------*/
                            Container(
                              margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Text("ARP",
                                        style: TextStyle(fontSize: 12.0)),
                                  ),
                                  Container(
                                    margin: _five,
                                  ),
                                  Container(
                                    child: Text(
                                      "0.45%",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 12.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),

              /*-------------------- List item 2 -----------------*/
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                child: Row(
                  children: <Widget>[
                    /*----------------- leading -----------------*/
                    Container(
                      margin: _standard,
                      child: Container(
                        child: CircleAvatar(
                          radius: 24.0,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('images/tezos.png'),
                        ),
                      ),
                    ),

                    /*------- title subtitle  ----*/
                    Expanded(
                      child: Container(
                        margin: _five,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            /*------------------ task title -----------------*/
                            Container(
                              margin: EdgeInsets.only(top: 0.0, bottom: 2.0),
                              child: Text('Tezos (XTZ)',
                                  style: TextStyle(fontSize: 15.0)),
                            ),
                            Container(
                              margin: _five,
                            ),

                            /*------------------ sub title -----------------*/
                            Container(
                              margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Text("ARP",
                                        style: TextStyle(fontSize: 12.0)),
                                  ),
                                  Container(
                                    margin: _five,
                                  ),
                                  Container(
                                    child: Text(
                                      "0.45%",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 12.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),

              /*-------------------- List item 3 -----------------*/
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                child: Row(
                  children: <Widget>[
                    /*----------------- leading -----------------*/
                    Container(
                      margin: _standard,
                      child: Container(
                        child: CircleAvatar(
                          radius: 24.0,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('images/cosmos.jpg'),
                        ),
                      ),
                    ),

                    /*------- title subtitle  ----*/
                    Expanded(
                      child: Container(
                        margin: _five,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            /*------------------ task title -----------------*/
                            Container(
                              margin: EdgeInsets.only(top: 0.0, bottom: 2.0),
                              child: Text('Cosmos (ATOM)',
                                  style: TextStyle(fontSize: 15.0)),
                            ),
                            Container(
                              margin: _five,
                            ),

                            /*------------------ sub title -----------------*/
                            Container(
                              margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Text("ARP",
                                        style: TextStyle(fontSize: 12.0)),
                                  ),
                                  Container(
                                    margin: _five,
                                  ),
                                  Container(
                                    child: Text(
                                      "0.45%",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 12.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),

              /*-------------------- List item 4 -----------------*/
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                child: Row(
                  children: <Widget>[
                    /*----------------- leading -----------------*/
                    Container(
                      margin: _standard,
                      child: Container(
                        child: CircleAvatar(
                          radius: 24.0,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('images/kava.png'),
                        ),
                      ),
                    ),

                    /*------- title subtitle  ----*/
                    Expanded(
                      child: Container(
                        margin: _five,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            /*------------------ task title -----------------*/
                            Container(
                              margin: EdgeInsets.only(top: 0.0, bottom: 2.0),
                              child: Text('Kava (KAVA)',
                                  style: TextStyle(fontSize: 15.0)),
                            ),
                            Container(
                              margin: _five,
                            ),

                            /*------------------ sub title -----------------*/
                            Container(
                              margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Text("ARP",
                                        style: TextStyle(fontSize: 12.0)),
                                  ),
                                  Container(
                                    margin: _five,
                                  ),
                                  Container(
                                    child: Text(
                                      "0.45%",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 12.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),

              /*-------------------- List item 5 -----------------*/
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                child: Row(
                  children: <Widget>[
                    /*----------------- leading -----------------*/
                    Container(
                      margin: _standard,
                      child: Container(
                        child: CircleAvatar(
                          radius: 24.0,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('images/algorand.png'),
                        ),
                      ),
                    ),

                    /*------- title subtitle  ----*/
                    Expanded(
                      child: Container(
                        margin: _five,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            /*------------------ task title -----------------*/
                            Container(
                              margin: EdgeInsets.only(top: 0.0, bottom: 2.0),
                              child: Text('Algorand (ALGO)',
                                  style: TextStyle(fontSize: 15.0)),
                            ),
                            Container(
                              margin: _five,
                            ),

                            /*------------------ sub title -----------------*/
                            Container(
                              margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Text("ARP",
                                        style: TextStyle(fontSize: 12.0)),
                                  ),
                                  Container(
                                    margin: _five,
                                  ),
                                  Container(
                                    child: Text(
                                      "0.45%",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 12.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  /*--------------------------------- Tab 3 ------------------------*/
  Widget _collectibles() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: _five * 2,
            child: Icon(
              Icons.monetization_on,
              size: 120.0,
            ),
          ),
          Container(
            margin: _five * 2,
            child: Text('Collectibles will appear here'),
          ),
          Container(
            margin: _five * 2,
            child: Text('Receive'),
          ),
          Container(
            margin: _five * 2,
            child: Text('Open on OpenSea.io'),
          ),
        ],
      ),
    );
  }

  Future<bool> _darkSwitchValue(bool isDark) async {
    var pref = await SharedPreferences.getInstance();
    setState(() {
      isdark = pref.getBool('isDark') ?? false;
    });
    print("get value" + isdark.toString());
    return false;
  }
}
