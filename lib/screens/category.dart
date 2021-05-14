import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wallets/style/Palette.dart';


class Category extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => Page();


}

class Page extends State<Category> {

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
        automaticallyImplyLeading: false,
        // flexibleSpace: isdark
        //     ? Container(decoration: Palette.appbarDarkGradient)
        //     : Container(decoration: Palette.appbarGradient),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
            },
          )
        ],
      ),

      /*------------------ body ----------------*/
      body: ListView(
        children: <Widget>[

          Container(margin: _five),

          /*---------- First Container -----------*/
          Container(
            margin: _standard,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'New DApps',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Container(
                  child: Text(
                    'See All',
                    style: TextStyle(fontSize: 14.0),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[

                /*-------------------- List Vertical item 1 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('Aava',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol to earn interest on deposits",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
                              ),

                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Divider(height: 2.0,),

                /*-------------------- List Vertical item 2 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('Ox Staking',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol to earn interest on deposits",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
                              ),

                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Divider(height: 2.0,),

                /*-------------------- List Vertical item 3 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('Zerion',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
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
          ),

          Divider(thickness: 10.0,),
          Container(margin: _five,),
          /*---------- second Container -----------*/
          Container(
            margin: _standard,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Popular',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Container(
                  child: Text(
                    'See All',
                    style: TextStyle(fontSize: 14.0),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[

                /*-------------------- List Vertical item 1 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('Bidali',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol to earn interest on deposits",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
                              ),

                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Divider(height: 2.0,),

                /*-------------------- List Vertical item 2 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('Ox Staking',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol to earn interest on deposits",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
                              ),

                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Divider(height: 2.0,),

                /*-------------------- List Vertical item 3 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('Zerion',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
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
          ),

          Divider(thickness: 10.0,),
          Container(margin: _five,),
          /*---------- third Container -----------*/
          Container(
            margin: _standard,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Exchanges',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Container(
                  child: Text(
                    'See All',
                    style: TextStyle(fontSize: 14.0),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[

                /*-------------------- List Vertical item 1 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('Zerion',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol to earn interest on deposits",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
                              ),

                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Divider(height: 2.0,),

                /*-------------------- List Vertical item 2 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('Ox Staking',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol to earn interest on deposits",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
                              ),

                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Divider(height: 2.0,),

                /*-------------------- List Vertical item 3 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('Zerion',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
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
          ),

          Divider(thickness: 10.0,),
          Container(margin: _five,),
          /*---------- Fourth Container -----------*/
          Container(
            margin: _standard,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'ThunderCore Games',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Container(
                  child: Text(
                    'See All',
                    style: TextStyle(fontSize: 14.0),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[

                /*-------------------- List Vertical item 1 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('TTRoll',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol to earn interest on deposits",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
                              ),

                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Divider(height: 2.0,),

                /*-------------------- List Vertical item 2 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('Slots',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol to earn interest on deposits",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
                              ),

                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Divider(height: 2.0,),

                /*-------------------- List Vertical item 3 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('Galaxy Blocks',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol, Open Source and Non-Custodial protocol",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
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
          ),

          Divider(thickness: 10.0,),
          Container(margin: _five,),
          /*---------- Fifth Container -----------*/
          Container(
            margin: _standard,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Games',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Container(
                  child: Text(
                    'See All',
                    style: TextStyle(fontSize: 14.0),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[

                /*-------------------- List Vertical item 1 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('Pool Together',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol to earn interest on deposits",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
                              ),

                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Divider(height: 2.0,),

                /*-------------------- List Vertical item 2 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('Slots',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol to earn interest on deposits",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
                              ),

                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Divider(height: 2.0,),

                /*-------------------- List Vertical item 3 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('Galaxy Blocks',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol, Open Source and Non-Custodial protocol",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
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
          ),

          Divider(thickness: 10.0,),
          Container(margin: _five,),
          /*---------- six Container -----------*/
          Container(
            margin: _standard,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Market Places',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Container(
                  child: Text(
                    'See All',
                    style: TextStyle(fontSize: 14.0),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[

                /*-------------------- List Vertical item 1 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('Pool Together',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol to earn interest on deposits",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
                              ),

                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Divider(height: 2.0,),

                /*-------------------- List Vertical item 2 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('Slots',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol to earn interest on deposits",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
                              ),

                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Divider(height: 2.0,),

                /*-------------------- List Vertical item 3 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('Galaxy Blocks',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol, Open Source and Non-Custodial protocol",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
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
          ),

          Divider(thickness: 10.0,),
          Container(margin: _five,),
          /*---------- social -----------*/
          Container(
            margin: _standard,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Social',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Container(
                  child: Text(
                    'See All',
                    style: TextStyle(fontSize: 14.0),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[

                /*-------------------- List Vertical item 1 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('BountyOx',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol to earn interest on deposits",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
                              ),

                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Divider(height: 2.0,),

                /*-------------------- List Vertical item 2 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('KnowOrigin',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol to earn interest on deposits",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
                              ),

                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                Divider(height: 2.0,),

                /*-------------------- List Vertical item 3 -----------------*/
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                  child: Row(
                    children: <Widget>[

                      /*----------------- leading -----------------*/
                      Container(
                        margin: _standard,
                        child: Container(
                          child: Card(
                            color: Colors.grey[400],
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Padding(
                              padding: _five*2,
                              child: Icon(Icons.image, size: 34.0,),
                            ),
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
                                child: Text('Cent',
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
                              ),

                              /*------------------ sub title -----------------*/
                              Container(
                                margin: EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: Text("Open Source and Non-Custodial protocol, Open Source and Non-Custodial protocol",
                                    style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
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


