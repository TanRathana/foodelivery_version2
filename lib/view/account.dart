import 'package:flutter/material.dart';
import 'package:fooddelivery/constant/constant.dart';
import 'package:fooddelivery/store/login_store.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key key}) : super(key: key);
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LoginStore>(
      builder: (_, loginStore, __) {
        return Scaffold(
          backgroundColor: Color(Constant.mainColor),
          body: Container(
            child: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.all(80),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              //  color: Colors.red,
                              borderRadius: BorderRadius.circular(60.0),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/mypic.png",
                                ),
                              )),
                        ),
                      ],
                    ),
                    Column(children: <Widget>[
                      Text(
                        "Welcome",
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                      SizedBox(
                        height: 9.0,
                      ),
                      Text(
                        "0964496438",
                        style: TextStyle(color: Colors.white),
                      ),
                    ])
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(28),
                        topRight: Radius.circular(28)),
                  ),
                  child: Column(children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("My Account",
                                style: TextStyle(fontSize: 20.0)),
                            Container(
                              //  padding: EdgeInsets.all(20),
                              child: Card(
                                  elevation: 0,
                                  color: Colors.transparent,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Column(
                                      children: <Widget>[
                                        ListTile(
                                          onTap: () {},
                                          leading: Icon(
                                            Icons.location_on,
                                            color: Colors.orange,
                                          ),
                                          title: Text("Location"),
                                        ),
                                        ListTile(
                                          onTap: () {},
                                          leading: Icon(
                                            Icons.edit,
                                            color: Colors.orange,
                                          ),
                                          title: Text("Edit"),
                                        ),
                                        ListTile(
                                          onTap: () {},
                                          leading: Icon(
                                            Icons.language,
                                            color: Colors.orange,
                                          ),
                                          title: Text("Language"),
                                        ),
                                      ],
                                    ),
                                  )),
                            )
                          ]),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Information",
                                style: TextStyle(fontSize: 20.0)),
                            Container(
                                child: Card(
                                    elevation: 0,
                                    color: Colors.transparent,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Column(
                                        children: <Widget>[
                                          ListTile(
                                            onTap: () {},
                                            leading: Icon(
                                              Icons.warning,
                                              color: Colors.orange,
                                            ),
                                            title: Text("About"),
                                          ),
                                          ListTile(
                                            onTap: () {},
                                            leading: Icon(
                                              Icons.book,
                                              color: Colors.orange,
                                            ),
                                            title: Text("Term of Agreement"),
                                          ),
                                          ListTile(
                                            onTap: () {
                                              loginStore.signOut(context);
                                            },
                                            leading: Icon(
                                              Icons.exit_to_app,
                                              color: Colors.orange,
                                            ),
                                            title: Text("Sign Out"),
                                          ),
                                        ],
                                      ),
                                    )))
                          ]),
                    )
                  ]),
                ),
              )
            ]),
          ),
        );
      },
    );
  }
}
