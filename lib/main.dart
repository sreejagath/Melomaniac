import 'package:flutter/material.dart';
import 'tabs/tabsection.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         backgroundColor: Color(0XFFF2EEEE),
//         appBar: AppBar(
//           title: Text(
//             'Melomaniac',
//             style: TextStyle(
//               color: Color(0xFF3A6878),
//               fontFamily: 'Khyay',
//             ),
//           ),
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           actions: [
//             Icon(
//               Icons.search,
//               color: Color(0XFF5F5D5D),
//             ),
//             SizedBox(
//               width: 5.0,
//             ),
//             Icon(
//               Icons.more_vert,
//               color: Color(0XFF5F5D5D),
//             )
//           ],
//           bottom: const TabBar(tabs: [
//             Tab(
//               child: Text(
//                 'Playlists',
//                 style: TextStyle(
//                   fontFamily: 'Khyay',
//                   fontSize: 15.0,
//                   color: Color(0XFF5F5D5D),
//                 ),
//               ),
//             ),
//             Tab(
//               child: Text(
//                 'Tracks',
//                 style: TextStyle(
//                   fontFamily: 'Khyay',
//                   fontSize: 15.0,
//                   color: Color(0XFF5F5D5D),
//                 ),
//               ),
//             ),
//             Tab(
//               child: Text(
//                 'Albums',
//                 style: TextStyle(
//                   fontFamily: 'Khyay',
//                   fontSize: 15.0,
//                   color: Color(0XFF5F5D5D),
//                 ),
//               ),
//             ),
//             Tab(
//               child: Text(
//                 'Artists',
//                 style: TextStyle(
//                   fontFamily: 'Khyay',
//                   fontSize: 15.0,
//                   color: Color(0XFF5F5D5D),
//                 ),
//               ),
//             ),
//           ]),
//         ),
//         body: Column(
//           children: [
//             Container(

//               child: TabBarView(
//                 children: [
//                   Icon(Icons.directions_car),
//                   Icon(Icons.directions_transit),
//                   Icon(Icons.directions_bike),
//                   Icon(Icons.directions_bike),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
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
                      fontFamily: 'Khyay',));
  Icon actionIcon = new Icon(Icons.search);
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
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: appBarTitle,
                  // title: Text(
                  //   appBarTitle
                  //   ),
                  // ),
                  actions: [
                    new IconButton(
                      icon: actionIcon,
                      color: Colors.black,
                      onPressed:(){
                        setState(() {
                          if (this.actionIcon.icon == Icons.search) {
                            this.actionIcon = new Icon(Icons.close);
                            this.appBarTitle = new TextField(
                              style: new TextStyle(
                                color: Colors.black,
                              ),
                              decoration: new InputDecoration(
                                prefixIcon: new Icon(Icons.search, color: Colors.black),
                                hintText: "Search...",
                                hintStyle: new TextStyle(color: Colors.black),
                              ),
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
                      
        } ,),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      Icons.settings,
                      color: Color(0XFF5F5D5D),
                    )
                  ],
                ),
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
                Container(
                  padding: EdgeInsets.only(top: 70),
                  //child: _tabSection(context)
                  child: Tabs(),
                ),
              ])
            ],
          ),
        ));
  }
}
