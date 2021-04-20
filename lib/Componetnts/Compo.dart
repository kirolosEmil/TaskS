import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget difultButton({
  double radius = 18,
  @required Function function,
  @required String text,
  Color front = Colors.red,
  bool toUpper = true,
}) =>
    Container(
      width: 160,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Colors.blueAccent,
      ),
      child: FlatButton(
        onPressed: function,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );

void buildProgress({context, text, bool error}) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(mainAxisSize: MainAxisSize.min, children: [
          Column(
            children: [
              Row(children: [
                if (!error) CircularProgressIndicator(),
                if (!error)
                  SizedBox(
                    width: 20,
                  ),
                Expanded(child: Text(text)),
              ]),
              if (error)
                SizedBox(
                  height: 20,
                ),
              if (error)
                difultButton(
                    function: () {
                      Navigator.pop(context);
                    },
                    text: 'close'),
            ],
          ),
        ]),
      ),
    );

Widget headText(String text) => Text(
      text,
      style: TextStyle(fontSize: 23, color: Colors.black),
    );

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );

void navigateaAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => widget), (route) => false);

Widget Captions(String text) => Text(
      text,
      style: TextStyle(
        fontSize: 16,
      ),
    );

Widget detailsText(String text) => Text(
      text,
      style: TextStyle(
        fontSize: 14,
      ),
    );

Widget defultTextForm({
  bool isPassowrd = false,
  String title,
  String hint = " ",
  @required TextEditingController controller,
  @required TextInputType Type,
}) =>
    Container(
      width: double.infinity,
      height: 74,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: Colors.white),
      padding: EdgeInsetsDirectional.only(start: 8, end: 8, top: 8, bottom: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) detailsText(title),
          Padding(
            padding: const EdgeInsets.only(top: 1),
            child: TextFormField(
              obscureText: isPassowrd,
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
              ),
              keyboardType: Type,
            ),
          )
        ],
      ),
    );

Color defultColor = Colors.blueAccent[900];

Widget difultButtonWhite({
  double radius = 18,
  @required Function function,
  @required String text,
  Color front = Colors.black,
}) =>
    Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Colors.white,
      ),
      child: FlatButton(
        onPressed: () {
          function();
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 310),
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
              color: front,
            ),
          ),
        ),
      ),
    );

Widget buildProfileItem(@required title, @required function) => Expanded(
      child: InkWell(
        onTap: function,
        child: Container(
          height: 140,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 15,
                ),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );

Widget defaultTextForm({
  String title,
  String hint = '',
  bool isPassword = false,
  @required TextEditingController controller,
  @required TextInputType type,
}) =>
    Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5.0,
        ),
        color: Colors.white,
      ),
      padding: EdgeInsetsDirectional.only(
        start: 10.0,
        end: 10.0,
        top: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) detailsText(title),
          TextFormField(
            controller: controller,
            obscureText: isPassword,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
            ),
            keyboardType: type,
          ),
        ],
      ),
    );

SharedPreferences preferences;

Future<void> initpref() async {
  preferences = await SharedPreferences.getInstance();
}

Future<bool> saveToken(String token) => preferences.setString('token', token);

Future<bool> removeToken() => preferences.remove('token');

String getToken() => preferences.getString('token');

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => widget),
    (Route<dynamic> route) => false);

Widget SowrList1(
        @required image, @required String title, @required Function function) =>
    InkWell(
      onTap: function,
      child: Container(
        height: 180,
        width: 280,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('$image'),
              width: 200,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );

Widget SowrList2(@required image, @required String title2,
        @required String title, String title3, @required Function function) =>
    InkWell(
      onTap: function,
      child: Container(
        height: 200,
        width: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text(
                title2,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            Image.network(
              ('$image'),
              width: 200,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            Text(
              title3,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );

  Widget CradTile(
        BuildContext context,
        image,
        @required String title1,
        @required String Price,
        @required String desception,
        @required String Title_Button) =>
    Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    GestureDetector(
                        child: Image.network(
                      ('$image'),
                      fit: BoxFit.cover,
                      width: 370,
                      height: 250,
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        childrenPadding: EdgeInsets.all(16).copyWith(top: 0),
                        title: Center(
                          child: Column(
                            children: [
                              Text(
                                title1,
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                Price,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                        children: [
                          Text(
                            desception,
                            style: TextStyle(fontSize: 18, height: 1.4),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          difultButton(function: () {}, text: Title_Button)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));



Widget CradTile2(
    BuildContext context,
    image,
    @required String title1,
    @required String Price,
    @required String desception,
    @required String Title_Button) =>
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Theme(
                        data: Theme.of(context)
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          childrenPadding: EdgeInsets.all(16).copyWith(top: 0),
                          title: Center(
                           child: Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(bottom: 5),
                                 child: GestureDetector(
                                     child: Image.network(
                                       ('$image'),
                                       fit: BoxFit.cover,
                                       width: 100,
                                       height: 100,
                                     ),),
                               ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                   children: [
                                     Text(
                                       title1,
                                       style: TextStyle(
                                           fontSize: 20, fontWeight: FontWeight.w500),
                                     ),
                                     SizedBox(height: 10,),
                                     Padding(
                                       padding: const EdgeInsets.only(right: 60),
                                       child: Text(
                                         Price,
                                         style: TextStyle(
                                             fontSize: 20, fontWeight: FontWeight.w300),
                                       ),
                                     ),
                                   ],
                               ),
                                ),
                             ],
                           ),
                          ),
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5 , bottom: 5),
                                child: Text(
                                  desception,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18, height: 1.4),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                                child: Image.network(
                                  ('$image'),
                                  fit: BoxFit.cover,
                                  width: 370,
                                  height: 250,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                           Padding(
                             padding: const EdgeInsets.only(top: 20, bottom: 15),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 40),
                                   child: difultButton(function: () {}, text: Title_Button),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 20),
                                   child: Column(
                                     children: [
                                       InkWell(
                                         onTap: (){},
                                           child: Icon(Icons.favorite_border)),
                                       Text(
                                         'Add to Favourites',
                                         style: TextStyle(fontSize: 10, height: 1.5),
                                       ),
                                     ],
                                   ),
                                 )
                               ],
                             ),
                           )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );

