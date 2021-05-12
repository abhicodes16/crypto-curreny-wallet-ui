import 'package:flutter/material.dart';


class Transaction extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => Page();


}

class Page extends State<Transaction> {

  /* ----------------- padding, margin --------------- */
  EdgeInsets _five = EdgeInsets.all(5.0);
  EdgeInsets _standard = EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0);
  EdgeInsets _standard2 = EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 3.0);

  TextStyle _title = TextStyle(fontWeight: FontWeight.w500, fontSize: 16,);
  TextStyle _subTitle = TextStyle(fontWeight: FontWeight.w300, fontSize: 12.5,);
  TextStyle _header = TextStyle(fontWeight: FontWeight.w400, fontSize: 26,);
  TextStyle _header2 = TextStyle(fontWeight: FontWeight.w400, fontSize: 22,);


  /* -----//////////////////////////////////////////////////////////////////////---- */
  /* -------------------------------- Main Build Function -------------------------- */
  /* -----//////////////////////////////////////////////////////////////////////---- */
  @override
  Widget build(BuildContext context) {

    /* ------------------------------------- Main Scaffold Function --------------------------- */
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
            },
          )
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        label: Text('NEXT'),
        //icon: Icon(Icons.navigate_next),

      ),

      /*------------------ body ----------------*/
      body: ListView(
        children: <Widget>[

          Container(margin: _five,),

          Card(
            elevation: 10.0,
            shadowColor: Colors.black.withOpacity(0.3),
            margin: _standard,
            shape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Column(
              children: <Widget>[

                /*-------------- You Pay --------------*/
                Row(
                  children: <Widget>[

                    Container(
                      margin: _standard,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(padding: _standard2, child: Text('You Pay', style: _subTitle,),),
                          Padding(padding: _standard2, child: Text('0', style: _header,),),
                          Padding(padding: _standard2, child: Text('Balance: 0 BNB', style: _subTitle,),),
                        ],
                      ),
                    ),

                    Spacer(),

                    Container(
                      margin: _standard,
                      child: Row(
                        children: <Widget>[

                          Container(
                            margin: _five,
                            child: Container(
                              child: CircleAvatar(
                                radius: 15.0,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage('images/BNB.png'),
                              ),
                            ),
                          ),

                          Container(
                            margin: _five,
                            child: Text('BNB',
                                style: _header2,
                            )
                          ),

                          Container(
                            child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward_ios),
                            ),
                          )

                        ],
                      ),
                    )

                  ],
                ),

                Row(
                  children: <Widget>[

                    Expanded(
                      child: Divider(),
                    ),

                    FloatingActionButton(
                      onPressed: (){},
                      child: Icon(Icons.swap_vert),
                    ),

                    Expanded(
                      child: Divider(),
                    )

                  ],
                ),

                /*-------------- You Get --------------*/
                Row(
                  children: <Widget>[

                    Container(
                      margin: _standard,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(padding: _standard2, child: Text('You Get', style: _subTitle,),),
                          Padding(padding: _standard2, child: Text('0', style: _header,),),
                          Padding(padding: _standard2, child: Text('Balance: 0 MITH', style: _subTitle,),),
                        ],
                      ),
                    ),

                    Spacer(),

                    Container(
                      margin: _standard,
                      child: Row(
                        children: <Widget>[

                          Container(
                            margin: _five,
                            child: Container(
                              child: CircleAvatar(
                                radius: 15.0,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage('images/mith.png'),
                              ),
                            ),
                          ),

                          Container(
                              margin: _five,
                              child: Text('MITH',
                                style: _header2,
                              )
                          ),

                          Container(
                            child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward_ios),
                            ),
                          )

                        ],
                      ),
                    )

                  ],
                ),

              ],
            ),
          ),

          Container(margin: _five*2,),

          Row(
            children: <Widget>[

              Card(
                elevation: 10.0,
                shadowColor: Colors.black.withOpacity(0.3),
                margin: _standard,
                shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Container(
                  margin: _five,
                  width: 60.0,
                  child: Text(
                    '25%', textAlign: TextAlign.center, style: _subTitle,
                  ),
                ),
              ),

              Spacer(),

              Card(
                elevation: 10.0,
                shadowColor: Colors.black.withOpacity(0.3),
                margin: _standard,
                shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Container(
                  margin: _five,
                  width: 60.0,
                  child: Text(
                    '35%', textAlign: TextAlign.center, style: _subTitle,
                  ),
                ),
              ),

              Spacer(),

              Card(
                elevation: 10.0,
                shadowColor: Colors.black.withOpacity(0.3),
                margin: _standard,
                shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Container(
                  margin: _five,
                  width: 60.0,
                  child: Text(
                    '89%', textAlign: TextAlign.center, style: _subTitle,
                  ),
                ),
              ),

              Spacer(),

              Card(
                elevation: 10.0,
                shadowColor: Colors.black.withOpacity(0.3),
                margin: _standard,
                shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Container(
                  margin: _five,
                  width: 60.0,
                  child: Text(
                    '100%', textAlign: TextAlign.center, style: _subTitle,
                  ),
                ),
              ),

            ],
          ),

          Container(margin: _five*2,),

          Container(
            margin: _standard,
            child: Text(
              '1 BNB - 1,778.947 MITH', style: _title, textAlign: TextAlign.center,
            ),
          ),


        ],
      ),
    );



  }


}


