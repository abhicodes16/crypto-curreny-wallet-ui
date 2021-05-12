import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';


class Settings extends StatefulWidget{
  const Settings({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => Page();


}

class Page extends State<Settings> {

  /* ----------------- padding, margin --------------- */
  EdgeInsets _five = EdgeInsets.all(5.0);
  EdgeInsets _standard = EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0);

  /*--------------------------- switch button ---------------------------*/
  bool isSwitched = false;


  void themeSwitch(context) {
    DynamicTheme.of(context).setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }

  TextStyle _title = TextStyle(fontWeight: FontWeight.w500, fontSize: 16,);
  TextStyle _subTitle = TextStyle(fontWeight: FontWeight.w300, fontSize: 12,);


  /* -----//////////////////////////////////////////////////////////////////////---- */
  /* -------------------------------- Main Build Function -------------------------- */
  /* -----//////////////////////////////////////////////////////////////////////---- */
  @override
  Widget build(BuildContext context) {


    /* ------------------------------------- Main Scaffold Function --------------------------- */
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),

      /*------------------ body ----------------*/
      body: ListView(
        children: <Widget>[

          /*--------------- Wallet ------------*/
          Padding(
            padding: _standard,
            child: Row(
              children: <Widget>[

                Container(
                  margin: _five,
                  child: Icon(Icons.account_balance_wallet),
                ),

                Container(margin: _five,),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: _five/2,
                        child: Text('Wallets', style: _title,),
                      ),
                      Container(
                        margin: _five/2,
                        child: Text('Multi-Coin Wallet 1', style: _subTitle,),
                      ),
                    ],
                  ),
                ),

                Container(
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                )

              ],
            ),
          ),

          Divider(),

          /*--------------- Dark Mode ------------*/
          Padding(
            padding: _standard,
            child: Row(
              children: <Widget>[

                Container(
                  margin: _five,
                  child: Icon(Icons.brightness_medium),
                ),

                Container(margin: _five,),

                Expanded(
                  child: Padding(
                    padding: _five/2,
                    child: Text(
                      'Light/Dark Mode', style: _title,
                    ),
                  ),
                ),

                Container(
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        themeSwitch(context);
                      });
                    },
                  ),
                )

              ],
            ),
          ),

          Divider(),

          /*--------------- Invite ------------*/
          Padding(
            padding: _standard,
            child: Row(
              children: <Widget>[

                Container(
                  margin: _five,
                  child: Icon(Icons.card_giftcard),
                ),

                Container(margin: _five,),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: _five/2,
                        child: Text('Invite a Friend', style: _title,),
                      ),
                      Container(
                        margin: _five/2,
                        child: Text('Get TWT tokens', style: _subTitle,),
                      ),
                    ],
                  ),
                ),

                Container(
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                )

              ],
            ),
          ),

          Divider(),

          /*--------------- Security ------------*/
          Padding(
            padding: _standard,
            child: Row(
              children: <Widget>[

                Container(
                  margin: _five,
                  child: Icon(Icons.lock),
                ),

                Container(margin: _five,),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: _five/2,
                        child: Text('Security', style: _title,),
                      ),
                    ],
                  ),
                ),

                Container(
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                )

              ],
            ),
          ),

          Divider(),

          /*--------------- Push ------------*/
          Padding(
            padding: _standard,
            child: Row(
              children: <Widget>[

                Container(
                  margin: _five,
                  child: Icon(Icons.notifications_active),
                ),

                Container(margin: _five,),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: _five/2,
                        child: Text('Push Notification', style: _title,),
                      ),
                    ],
                  ),
                ),

                Container(
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                )

              ],
            ),
          ),


          Divider(),

          /*--------------- Preferences ------------*/
          Padding(
            padding: _standard,
            child: Row(
              children: <Widget>[

                Container(
                  margin: _five,
                  child: Icon(Icons.color_lens),
                ),

                Container(margin: _five,),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: _five/2,
                        child: Text('Preferences', style: _title,),
                      ),
                    ],
                  ),
                ),

                Container(
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                )

              ],
            ),
          ),

          Divider(),

          /*--------------- Wallet Connect ------------*/
          Padding(
            padding: _standard,
            child: Row(
              children: <Widget>[

                Container(
                  margin: _five,
                  child: Icon(Icons.confirmation_number),
                ),

                Container(margin: _five,),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: _five/2,
                        child: Text('Wallet Connect', style: _title,),
                      ),
                    ],
                  ),
                ),

                Container(
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                )

              ],
            ),
          ),

          Divider(thickness: 5.0,),

          Container(
            margin: _standard,
            child: Text('Join Community', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500),),
          ),

          Container(margin: _five/2,),

          /*--------------- Help Center ------------*/
          Padding(
            padding: _standard,
            child: Row(
              children: <Widget>[

                Container(
                  margin: _five,
                  child: Icon(Icons.help),
                ),

                Container(margin: _five,),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: _five/2,
                        child: Text('Help Center', style: _title,),
                      ),
                    ],
                  ),
                ),

                Container(
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                )

              ],
            ),
          ),

          Divider(),

          /*--------------- Twitter ------------*/
          Padding(
            padding: _standard,
            child: Row(
              children: <Widget>[

                Container(
                  margin: _five,
                  child: Icon(Icons.edit),
                ),

                Container(margin: _five,),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: _five/2,
                        child: Text('Twitter', style: _title,),
                      ),
                    ],
                  ),
                ),

                Container(
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                )

              ],
            ),
          ),

          Divider(),

          /*--------------- Telegram ------------*/
          Padding(
            padding: _standard,
            child: Row(
              children: <Widget>[

                Container(
                  margin: _five,
                  child: Icon(Icons.send),
                ),

                Container(margin: _five,),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: _five/2,
                        child: Text('Telegram', style: _title,),
                      ),
                    ],
                  ),
                ),

                Container(
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                )

              ],
            ),
          ),

          Divider(),

          /*--------------- Facebook ------------*/
          Padding(
            padding: _standard,
            child: Row(
              children: <Widget>[

                Container(
                  margin: _five,
                  child: Icon(Icons.photo_album),
                ),

                Container(margin: _five,),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: _five/2,
                        child: Text('Facebook', style: _title,),
                      ),
                    ],
                  ),
                ),

                Container(
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                )

              ],
            ),
          ),

          Divider(),

          /*--------------- Youtube ------------*/
          Padding(
            padding: _standard,
            child: Row(
              children: <Widget>[

                Container(
                  margin: _five,
                  child: Icon(Icons.live_tv),
                ),

                Container(margin: _five,),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: _five/2,
                        child: Text('Youtube', style: _title,),
                      ),
                    ],
                  ),
                ),

                Container(
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                )

              ],
            ),
          ),

          Divider(),

          /*--------------- Make a suggestion ------------*/
          Padding(
            padding: _standard,
            child: Row(
              children: <Widget>[

                Container(
                  margin: _five,
                  child: Icon(Icons.add_box),
                ),

                Container(margin: _five,),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: _five/2,
                        child: Text('Make a suggestion', style: _title,),
                      ),
                    ],
                  ),
                ),

                Container(
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                )

              ],
            ),
          ),

          Divider(),

          /*--------------- About ------------*/
          Padding(
            padding: _standard,
            child: Row(
              children: <Widget>[

                Container(
                  margin: _five,
                  child: Icon(Icons.info),
                ),

                Container(margin: _five,),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: _five/2,
                        child: Text('About', style: _title,),
                      ),
                    ],
                  ),
                ),

                Container(
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                )

              ],
            ),
          ),


          Container(margin: _five*3,)

        ],
      ),
    );



  }


}

