import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wallets/style/Palette.dart';
import 'package:wallets/style/constants.dart';

class Transaction extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Page();
}

class Page extends State<Transaction> {
  /* ----------------- padding, margin --------------- */
  EdgeInsets _five = EdgeInsets.all(5.0);
  EdgeInsets _standard = EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0);
  EdgeInsets _standard2 = EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 3.0);

  TextStyle _title = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
  TextStyle _subTitle = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 12.5,
  );
  TextStyle _header = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 26,
  );
  TextStyle _header2 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 22,
  );

  bool isdark = false;

  TextEditingController priceBNBController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _darkSwitchValue(isdark);
    priceBNBController.text = '0.00147208';
  }

  OutlineInputBorder etBoxDecoration =
      OutlineInputBorder(borderRadius: BorderRadius.circular(6.0));

  /* -----//////////////////////////////////////////////////////////////////////---- */
  /* -------------------------------- Main Build Function -------------------------- */
  /* -----//////////////////////////////////////////////////////////////////////---- */
  @override
  Widget build(BuildContext context) {
    /* ------------------------------------- Main Scaffold Function --------------------------- */
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Transaction'),
            automaticallyImplyLeading: false,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              )
            ],
            // bottom: TabBar(
            //   tabs: <Widget>[
            //     Tab(text: "Swap"),
            //     Tab(text: "Exchange"),
            //   ],
            // ),
            bottom: TabBar(
                //labelColor: Colors.amber[700],
                //unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: kThemeColor),
                tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("SWAP"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("EXCHANGE"),
                    ),
                  ),
                ]),
          ),
          /*------------------ body ----------------*/
          body: TabBarView(children: [_swapWidget(), _exchangeWidget()])),
    );
  }

  Widget _swapWidget() {
    return ListView(
      children: <Widget>[
        Container(
          margin: _five,
        ),
        Card(
          elevation: 10.0,
          shadowColor: Colors.black.withOpacity(0.3),
          margin: _standard,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
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
                        Padding(
                          padding: _standard2,
                          child: Text(
                            'You Pay',
                            style: _subTitle,
                          ),
                        ),
                        Padding(
                          padding: _standard2,
                          child: Text(
                            '0',
                            style: _header,
                          ),
                        ),
                        Padding(
                          padding: _standard2,
                          child: Text(
                            'Balance: 0 BNB',
                            style: _subTitle,
                          ),
                        ),
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
                            child: Text(
                              'BNB',
                              style: _header2,
                            )),
                        Container(
                          child: IconButton(
                            onPressed: () {},
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
                    onPressed: () {},
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
                        Padding(
                          padding: _standard2,
                          child: Text(
                            'You Get',
                            style: _subTitle,
                          ),
                        ),
                        Padding(
                          padding: _standard2,
                          child: Text(
                            '0',
                            style: _header,
                          ),
                        ),
                        Padding(
                          padding: _standard2,
                          child: Text(
                            'Balance: 0 MITH',
                            style: _subTitle,
                          ),
                        ),
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
                            child: Text(
                              'MITH',
                              style: _header2,
                            )),
                        Container(
                          child: IconButton(
                            onPressed: () {},
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
        Container(
          margin: _five * 2,
        ),
        Row(
          children: <Widget>[
            Card(
              elevation: 10.0,
              shadowColor: Colors.black.withOpacity(0.3),
              margin: _standard,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Container(
                margin: _five,
                width: 60.0,
                child: Text(
                  '25%',
                  textAlign: TextAlign.center,
                  style: _subTitle,
                ),
              ),
            ),
            Spacer(),
            Card(
              elevation: 10.0,
              shadowColor: Colors.black.withOpacity(0.3),
              margin: _standard,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Container(
                margin: _five,
                width: 60.0,
                child: Text(
                  '35%',
                  textAlign: TextAlign.center,
                  style: _subTitle,
                ),
              ),
            ),
            Spacer(),
            Card(
              elevation: 10.0,
              shadowColor: Colors.black.withOpacity(0.3),
              margin: _standard,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Container(
                margin: _five,
                width: 60.0,
                child: Text(
                  '89%',
                  textAlign: TextAlign.center,
                  style: _subTitle,
                ),
              ),
            ),
            Spacer(),
            Card(
              elevation: 10.0,
              shadowColor: Colors.black.withOpacity(0.3),
              margin: _standard,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Container(
                margin: _five,
                width: 60.0,
                child: Text(
                  '100%',
                  textAlign: TextAlign.center,
                  style: _subTitle,
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: _five * 2,
        ),
        Container(
          margin: _standard,
          child: Text(
            '1 BNB - 1,778.947 MITH',
            style: _title,
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: EdgeInsets.all(35.0),
          child: MaterialButton(
            onPressed: () {},
            elevation: 8.0,
            color: kThemeColor,
            height: 45,
            shape: Palette.btnShape,
            child: Text('SWAP', style: Palette.blackSubTitleB),
          ),
        )
      ],
    );
  }

  Widget _exchangeWidget() {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _exhangeFirstRowWidget(),
              SizedBox(width: 15.0),
              _exchangeSecondRowWidget(),
            ],
          ),
        ),
        Divider(),
        ListTile(
          title: Text('Open Orders', style: Palette.listTileTitle),
          trailing: Text('All', style: Palette.themeBtnText),
        ),
        Container(
          margin: EdgeInsets.all(25.0),
          child: Text(
            'Open Orders will appear here',
            style: Palette.subTitle2,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }

  Widget _exhangeFirstRowWidget() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //firt row element
          Row(
            children: [
              CircleAvatar(
                radius: 18.0,
                backgroundColor: kThemeColor,
                child: Container(
                  height: 26.0,
                  child: Image.asset(
                    'images/pineapple-icon.png',
                  ),
                ),
              ),
              SizedBox(width: 15.0),
              Expanded(child: Text('PWT / BNB', style: Palette.title)),
              SizedBox(width: 5.0),
              Container(
                  child: Icon(Icons.arrow_forward_ios_rounded, size: 18.0)),
            ],
          ),

          SizedBox(height: 10.0),

          //second buy sell row
          Row(
            children: [
              Expanded(
                child: Card(
                  margin: EdgeInsets.zero,
                  shape: Palette.leftCardShape,
                  color: Colors.green[600],
                  elevation: 0.0,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'Buy',
                      style: Palette.whiteSubTitleB,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  margin: EdgeInsets.zero,
                  color: Colors.amber[100],
                  shape: Palette.rightCardShape,
                  elevation: 0.0,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'Sell',
                      style: Palette.greySubTitleB,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),

          SizedBox(height: 15.0),

          TextField(
            keyboardType: TextInputType.text,
            controller: priceBNBController,
            decoration: InputDecoration(
              labelText: 'Price BNB',
              border: etBoxDecoration,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 18.0,
                horizontal: 15.0,
              ),
            ),
          ),

          SizedBox(height: 12.0),
          Text('~ \$ 0.915567', style: Palette.subTitle2),
          SizedBox(height: 12.0),

          TextField(
            keyboardType: TextInputType.text,
            //controller: priceBNBController,
            decoration: InputDecoration(
              labelText: 'Amount TWT',
              border: etBoxDecoration,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 18.0,
                horizontal: 15.0,
              ),
            ),
          ),

          SizedBox(height: 15.0),

          Row(
            children: [
              Expanded(
                child: Card(
                  elevation: 0.0,
                  shape: Palette.cardShape,
                  color: Colors.amber[100],
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 5.0),
                    child: Text(
                      '25%',
                      style: Palette.darkYelloText,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  elevation: 0.0,
                  shape: Palette.cardShape,
                  color: Colors.amber[100],
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 5.0),
                    child: Text(
                      '50%',
                      style: Palette.darkYelloText,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  elevation: 0.0,
                  shape: Palette.cardShape,
                  color: Colors.amber[100],
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 5.0),
                    child: Text(
                      '75%',
                      style: Palette.darkYelloText,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 15.0),

          //Balance Row
          Container(
            child: Row(
              children: [
                Expanded(child: Text('Balance', style: Palette.subTitle2)),
                Container(child: Text('0 BNB', style: Palette.subTitle2)),
              ],
            ),
          ),

          SizedBox(height: 15.0),

          //Total Row
          Container(
            child: Row(
              children: [
                Expanded(child: Text('Total', style: Palette.title2)),
                Container(child: Text('0 BNB', style: Palette.title2)),
              ],
            ),
          ),

          SizedBox(height: 15.0),

          MaterialButton(
            onPressed: () {},
            elevation: 0.0,
            minWidth: MediaQuery.of(context).size.width,
            shape: Palette.cardShape,
            color: Colors.green[600],
            child: Text(
              'Buy PWT',
              style: Palette.whiteBtn,
            ),
          )
        ],
      ),
    );
  }

  Widget _exchangeSecondRowWidget() {
    return Expanded(
      child: Column(
        children: <Widget>[
          SizedBox(height: 10.0),
          //firt row
          Row(
            children: [
              Expanded(child: Text('Price BNB', style: Palette.subTitle2)),
              Container(child: Text('Amount', style: Palette.subTitle2))
            ],
          ),

          SizedBox(height: 20.0),

          //red elemts
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 22.0,
                color: Colors.red[50],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  children: [
                    Expanded(child: Text('0.0015', style: Palette.redText)),
                    Container(child: Text('50', style: Palette.redText)),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 22.0,
                color: Colors.red[50],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  children: [
                    Expanded(child: Text('0.001496', style: Palette.redText)),
                    Container(child: Text('50', style: Palette.redText)),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 22.0,
                color: Colors.red[50],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  children: [
                    Expanded(child: Text('0.001494', style: Palette.redText)),
                    Container(child: Text('50', style: Palette.redText)),
                  ],
                ),
              ),
            ],
          ),

          Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 90.0,
                  height: 22.0,
                  color: Colors.red[50],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  children: [
                    Expanded(child: Text('0.0014935', style: Palette.redText)),
                    Container(child: Text('27', style: Palette.redText)),
                  ],
                ),
              ),
            ],
          ),

          Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 60.0,
                  height: 22.0,
                  color: Colors.red[50],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  children: [
                    Expanded(child: Text('0.001488', style: Palette.redText)),
                    Container(child: Text('20', style: Palette.redText)),
                  ],
                ),
              ),
            ],
          ),

          Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 30.0,
                  height: 22.0,
                  color: Colors.red[50],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  children: [
                    Expanded(child: Text('0.001485', style: Palette.redText)),
                    Container(child: Text('4', style: Palette.redText)),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 15.0),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('0.00147206 ', style: Palette.redText),
                Icon(Icons.arrow_downward, size: 12.0, color: Colors.red)
              ],
            ),
          ),

          SizedBox(height: 15.0),

          Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 80.0,
                  height: 22.0,
                  color: Colors.green[50],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  children: [
                    Expanded(child: Text('0.001485', style: Palette.greenText)),
                    Container(child: Text('17.81K', style: Palette.greenText)),
                  ],
                ),
              ),
            ],
          ),

          Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 22.0,
                  color: Colors.green[50],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Text('0.00147207', style: Palette.greenText)),
                    Container(child: Text('35.63K', style: Palette.greenText)),
                  ],
                ),
              ),
            ],
          ),

          Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 0.0,
                  height: 22.0,
                  color: Colors.green[50],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Text('0.00148578', style: Palette.greenText)),
                    Container(child: Text('100', style: Palette.greenText)),
                  ],
                ),
              ),
            ],
          ),

          Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 90.0,
                  height: 22.0,
                  color: Colors.green[50],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  children: [
                    Expanded(child: Text('0.001485', style: Palette.greenText)),
                    Container(child: Text('15.913K', style: Palette.greenText)),
                  ],
                ),
              ),
            ],
          ),

          Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 0.0,
                  height: 22.0,
                  color: Colors.green[50],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  children: [
                    Expanded(child: Text('0.001485', style: Palette.greenText)),
                    Container(child: Text('162', style: Palette.greenText)),
                  ],
                ),
              ),
            ],
          ),

          Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 0.0,
                  height: 22.0,
                  color: Colors.green[50],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Text('0.0014669', style: Palette.greenText)),
                    Container(child: Text('40', style: Palette.greenText)),
                  ],
                ),
              ),
            ],
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
