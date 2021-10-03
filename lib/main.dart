import 'package:flutter/material.dart';

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
                  title: Text(
                    'Melomaniac',
                    style: TextStyle(
                      color: Color(0xFF3A6878),
                      fontFamily: 'Khyay',
                    ),
                  ),
                  actions: [
                    Icon(
                      Icons.search,
                      color: Color(0XFF5F5D5D),
                    ),
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
                    child: _tabSection(context)),
              ])
            ],
          ),
        ));
  }
}

Widget _tabSection(BuildContext context) {
  List<String> trackTitle = [
    'On My Way',
    'Believer',
    'Bad Liar',
    'Shape of You',
    'The Middle',
    'The Greatest',
  ];
  List<String> trackArtist = [
    'Ed Sheeran',
    'Ed Sheeran',
    'Ed Sheeran',
    'Ed Sheeran',
    'Ed Sheeran',
    'Ed Sheeran',
  ];

  List<String> trackImage = [
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fsoundcloud.com%2Ffrizzyboyz%2Falan-walker-feat-sabrina-carpenter-farruko-on-my-way-frizzyboyz-remix&psig=AOvVaw1Sknl-0R72aa0oGVPipoD6&ust=1633265127192000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIiM4fDgq_MCFQAAAAAdAAAAABAD',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fsoundcloud.com%2Ffrizzyboyz%2Falan-walker-feat-sabrina-carpenter-farruko-on-my-way-frizzyboyz-remix&psig=AOvVaw1Sknl-0R72aa0oGVPipoD6&ust=1633265127192000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIiM4fDgq_MCFQAAAAAdAAAAABAD',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fsoundcloud.com%2Ffrizzyboyz%2Falan-walker-feat-sabrina-carpenter-farruko-on-my-way-frizzyboyz-remix&psig=AOvVaw1Sknl-0R72aa0oGVPipoD6&ust=1633265127192000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIiM4fDgq_MCFQAAAAAdAAAAABAD',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fsoundcloud.com%2Ffrizzyboyz%2Falan-walker-feat-sabrina-carpenter-farruko-on-my-way-frizzyboyz-remix&psig=AOvVaw1Sknl-0R72aa0oGVPipoD6&ust=1633265127192000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIiM4fDgq_MCFQAAAAAdAAAAABAD',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fsoundcloud.com%2Ffrizzyboyz%2Falan-walker-feat-sabrina-carpenter-farruko-on-my-way-frizzyboyz-remix&psig=AOvVaw1Sknl-0R72aa0oGVPipoD6&ust=1633265127192000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIiM4fDgq_MCFQAAAAAdAAAAABAD',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fsoundcloud.com%2Ffrizzyboyz%2Falan-walker-feat-sabrina-carpenter-farruko-on-my-way-frizzyboyz-remix&psig=AOvVaw1Sknl-0R72aa0oGVPipoD6&ust=1633265127192000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIiM4fDgq_MCFQAAAAAdAAAAABAD',
  ];

  return DefaultTabController(
    initialIndex: 1,
    length: 4,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        // ignore: avoid_unnecessary_containers
        Container(
          child: TabBar(tabs: [
            Tab(
                child: const Text(
              "Playlist",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Khyay',
              ),
            )),
            Tab(
              child: Text(
                "Tracks",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Khyay',
                ),
              ),
            ),
            const Tab(
              child: Text(
                "Albums",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Khyay',
                ),
              ),
            ),
            Tab(
              child: Text(
                "Artists",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Khyay',
                ),
              ),
            ),
          ]),
        ),
        Container(
          //Add this to give height
          height: MediaQuery.of(context).size.height,
          child: TabBarView(children: [
            Container(
              child: Text("Home Body"),
            ),
            Container(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.shuffle,
                                color: Color(0xFF3A6878),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Shuffle All',
                                style: TextStyle(
                                  fontFamily: 'Khyay',
                                  fontSize: 15.0,
                                  color: Color(0xFF3A6878),
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: trackTitle.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/images/image1.jpg'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  trackTitle[index],
                                  style: TextStyle(
                                    fontFamily: 'Khyay',
                                    fontSize: 15.0,
                                    color: Color(0xFF3A6878),
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  trackArtist[index],
                                  style: TextStyle(
                                    fontFamily: 'Khyay',
                                    fontSize: 15.0,
                                    color: Color(0xFF3A6878),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            IconButton(
                              icon: Icon(
                                Icons.more_vert,
                                color: Color(0xFF3A6878),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            )),
            Container(
              child: Text("User Body"),
            ),
            Container(
              child: Text("User Body"),
            ),
          ]),
        ),
      ],
    ),
  );
}
