import 'package:flutter/material.dart';
import 'tabs/tabsection.dart';
import 'package:bottom_drawer/bottom_drawer.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

// class SplashHome extends StatefulWidget {
//   const SplashHome({Key? key}) : super(key: key);

//   @override
//   _SplashHomeState createState() => _SplashHomeState();
// }

// class _SplashHomeState extends State<SplashHome> {
//   @override
//   Widget build(BuildContext context) {
//     return SplashScreen(
//         seconds: 14,
//         navigateAfterSeconds: new Home(),
//         title: const Text(
//           'Welcome In SplashScreen',
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
//         ),
//         image: Image.asset('assets/images/melomaniac-logo.png'),
//         backgroundColor: Colors.white,
//         styleTextUnderTheLoader: new TextStyle(),
//         photoSize: 100.0,
//         onClick: () => print("Flutter Egypt"),
//         loaderColor: Colors.red);
//   }
// }

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget appBarTitle = new Text("Melomaniac",
      style: TextStyle(
        color: Color(0xFF3A6878),
        fontFamily: 'Khyay',
      ));
  Icon actionIcon = new Icon(Icons.search);

  /// create a bottom drawer controller to control the drawer.
  BottomDrawerController controller = BottomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0XFFF2EEEE),
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        //   title: Text(
        //     'Melomaniac',
        //     style: TextStyle(
        //       color: Color(0xFF3A6878),
        //       fontFamily: 'Khyay',
        //     ),
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(children: [
                Positioned(
                  top: -90,
                  right: -80,
                  child: CircleAvatar(
                    radius: 140,
                    backgroundColor: Color(0XFF51C3A8).withOpacity(0.3),
                    //backgroundColor:,
                  ),
                ),
                Positioned(
                  top: 120,
                  right: -150,
                  child: CircleAvatar(
                    radius: 140,
                    backgroundColor: Color(0XFF51C3A8).withOpacity(0.3),
                    //backgroundColor:,
                  ),
                ),
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: appBarTitle,

                  // title: Text(
                  //   appBarTitle
                  //   ),
                  // ),
                  actions: [
                    IconButton(
                      icon: actionIcon,
                      color: Colors.black,
                      onPressed: () {
                        setState(() {
                          if (this.actionIcon.icon == Icons.search) {
                            this.actionIcon = new Icon(Icons.close);
                            this.appBarTitle = new TextField(
                              style: new TextStyle(
                                color: Colors.black,
                              ),
                              decoration: new InputDecoration(
                                  prefixIcon: new Icon(Icons.search,
                                      color: Colors.black),
                                  hintText: "Search...",
                                  hintStyle:
                                      new TextStyle(color: Colors.black)),
                            );
                          } else {
                            this.actionIcon = new Icon(Icons.search);
                            this.appBarTitle = new Text("Melomaniac",
                                style: TextStyle(
                                  color: Color(0xFF3A6878),
                                  fontFamily: 'Khyay',
                                ));
                          }
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    PopupMenuButton(
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.black,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        itemBuilder: (context) => [
                              PopupMenuItem(
                                  child: Text('Notifications On/Off')),
                              PopupMenuItem(child: Text('Share Us')),
                              PopupMenuItem(child: Text('About')),
                              PopupMenuItem(child: Text('Terms & Conditions')),
                              PopupMenuItem(child: Text('Privacy & Policies')),
                              PopupMenuItem(child: Text('Version')),
                            ])
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 70),
                  //child: _tabSection(context)
                  child: Tabs(),
                ),
              ]),
            ],
          ),
        ));
  }
  }
