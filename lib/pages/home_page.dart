import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../Util/EventCard.dart';
import '../widgets/bottomBar.dart';
import 'Members.dart';
import 'Robocor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final navigationkey = GlobalKey<CurvedNavigationBarState>();
  final List<Widget> _pages = [
    HomePage(),
    Members(),
    Robocor(),
  ];
  final List<Map<String, dynamic>> events = [
    {
      'title': 'Events',
      'cards': [
        {
          'cardText':
          'ROBOEXPO is an annual event organized by the Robotics club of SIT CORSIT. The primary objective is to introduce the club and its activities to the newcomers by displaying the bots that the members have created over the year',
          'imageUrl': 'https://www.corsit.org/img/Events/img1.jpg',
          'title': 'RoboExpo'
        },
        {
          'cardText':
          'CORSIT offers free workshops on IoT, Arduino, cloud, and more, providing students with hands-on experience in building basic bots such as LFR, Bluetooth, and obstacle-avoiding bots. Participants learn to code and use different components to program the bot\'s brain.',
          'imageUrl': 'https://www.corsit.org/img/Events/imgg4.png',
          'title': 'Workshop'
        },
        {
          'cardText':
          'Robocor, a nationally renowned Robotics Competition, which is one of the biggest events in Karnataka. It provides a platform for participants to showcase their innovative designs and compete for glory. In Robocor, the team has successfully organized several events such as Dcode, Spardha, Rugged Rage, Robo Soccer, Arduino Clash, Binary Rash, Project Symposium, Paper Presentation, and Init_Rc.',
          'imageUrl': 'https://www.corsit.org/img/Events/img8.jpg',
          'title': 'Robocor'
        },
        {
          'cardText':
          'CORSIT, the Robotics club of SIT, conducts an annual 12-hour hackathon since 2017, where students collaborate to find innovative solutions to real-world problems in areas such as IoT, cybersecurity, blockchain, and data science etc. The event provides a platform for teams to compete for exciting cash prizes and recognition.',
          'imageUrl': 'https://www.corsit.org/img/Events/img6.jpg',
          'title': 'Hackathon'
        },
      ],
    },
    {
      'title': 'Projects',
      'cards': [
        {
          'cardText': 'Card 1 for Event2',
          'imageUrl': 'https://www.example.com/image4.jpg',
          'title': 'Event2Card1'
        },
        {
          'cardText': 'Card 2 for Event2',
          'imageUrl': 'https://www.example.com/image5.jpg',
          'title': 'Event2Card2'
        },
        {
          'cardText': 'Card 3 for Event2',
          'imageUrl': 'https://www.example.com/image6.jpg',
          'title': 'Event2Card3'
        },
      ],
    },
    {
      'title': 'Robocor',
      'cards': [
        {
          'cardText': 'Card 1 for Event3',
          'imageUrl': 'https://www.example.com/image7.jpg',
          'title': 'Event3Card1'
        },
        {
          'cardText': 'Card 2 for Event3',
          'imageUrl': 'https://www.example.com/image8.jpg',
          'title': 'Event3Card2'
        },
        {
          'cardText': 'Card 3 for Event3',
          'imageUrl': 'https://www.example.com/image9.jpg',
          'title': 'Event3Card3'
        },
      ],
    },
  ];

  int selectedNavIndex = 0;

  void navTypeSelected(int index) {
    setState(() {
      selectedNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Scaffold(
            backgroundColor: Colors.grey[900],

            bottomNavigationBar: BottomNavBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),

            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Learn',
                        style: TextStyle(
                          fontFamily: 'Array',
                          fontSize: 28.0,
                          color: Colors.deepOrangeAccent,

                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: DefaultTextStyle(
                          style: TextStyle(
                            fontFamily: 'Array' ,
                            fontSize: 28.0,
                            color: Colors.deepOrangeAccent,

                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText(
                                'Build Play!',
                                speed: Duration(milliseconds: 100),
                              ),
                              TyperAnimatedText(
                                'App Development.',
                                speed: Duration(milliseconds: 100),
                              ),
                              TyperAnimatedText(
                                'Web Development.',
                                speed: Duration(milliseconds: 100),
                              ),
                            ],
                            repeatForever: true,
                            isRepeatingAnimation: true,
                            onTap: () {
                              print("Tap Event");
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 28,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: constraints.maxWidth,
                  child: Card(
                    elevation: 16.0,
                    child: Center(
                      child: Text("Recruitment"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: events.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          navTypeSelected(index);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            events[index]['title'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: selectedNavIndex == index
                                  ? Colors.deepOrangeAccent
                                  : Colors.white,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (int i = 0;
                      i < events[selectedNavIndex]['cards'].length;
                      i++)
                        EventCard(
                          cardText: events[selectedNavIndex]['cards'][i]['cardText'],
                          imageUrls: events[selectedNavIndex]['cards'][i]['imageUrl'],
                          title: events[selectedNavIndex]['cards'][i]['title'],
                        ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
