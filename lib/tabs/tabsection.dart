import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  @override
  _Tabs createState() => _Tabs();
}

class _Tabs extends State<Tabs> {
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

  List<String> playlists = [
    'Sleepy',
    'Romantic',
    'Workout',
    'Party',
    'Malayalam Hits'
  ];

  List<String> playlistSongCount = ['109', '20', '120', '390', '1254'];

  @override
  Widget build(BuildContext context) {
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
//PLAYLISTS

              Container(
                  child: Column(children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemCount: playlists.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 10.0, right: 10.0),
                              height: 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    width: 80,
                                    height: 80,
                                    child: Image.asset(
                                      'assets/images/image1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    // width:
                                    //     MediaQuery.of(context).size.width - 100,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        //SizedBox()
                                        Container(
                                          child: Text(
                                            playlists[index],
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Khyay',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            playlistSongCount[index],
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'Khyay',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(Icons.more_vert),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ])),

              //TRACKS

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
                                    image:
                                        AssetImage('assets/images/image1.jpg'),
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

//ALBUMS

              Container(
                  child: Column(children: [
                Container(
                    child: GridView(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.0,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0),
                        children: List.generate(
                            trackTitle.length, (index) => _buildTrack(index))))
              ])),
              Container(
                child: Column(children: [
                  Container(
                      child: GridView(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 1.0,
                                  crossAxisSpacing: 10.0,
                                  mainAxisSpacing: 10.0),
                          children: List.generate(trackTitle.length,
                              (index) => _buildTrack(index))))
                ]),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

_buildTrack(int index) {
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
  return Container(
    child: Column(
      children: [
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            //shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/image1.jpg'),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
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
        Divider(
          height: 5,
        )
      ],
    ),
  );
}
