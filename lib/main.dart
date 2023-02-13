import 'package:flutter/material.dart';
import 'details.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const GelexyApp(),
        'details': (context) => const Details(),
      },
    ),
  );
}

class GelexyApp extends StatefulWidget {
  const GelexyApp({Key? key}) : super(key: key);

  @override
  State<GelexyApp> createState() => _GelexyAppState();
}

class _GelexyAppState extends State<GelexyApp> {
  final List<Map<dynamic, dynamic>> planet_List = [
    {
      'name': 'Sun',
      'pic': 'build/assets/image/sun.png',
      'nick': 'The Center of Solar',
      'index': '1',
      'details':
          'Sun, star around which Earth and the other components of the solar system revolve. It is the dominant body of the system, constituting more than 99 percent of its entire mass. The Sun is the source of an enormous amount of energy, a portion of which provides Earth with the light and heat necessary to support life.The Sun is classified as a G2 V star.'
    },
    {
      'name': 'Mercury',
      'pic': 'build/assets/image/mercury.png',
      'nick': 'The Swift Planet',
      'index': '1',
      'details':
          'What are 5 facts about Mercury Image result for mercury details At a distance of only about 1/3 of Earth\'s distance to Sun, Mercury is the first planet in our Solar System. With a diameter of only 4880 kilometers (3032 miles) Mercury is the smallest planet in the Solar System. It is barely bigger than our Moon.'
    },
    {
      'name': 'Venus',
      'pic': 'build/assets/image/venus.png',
      'nick': 'Morning Star',
      'index': '2',
      'details':
          'Venus is the second planet from the Sun, and is Earth\'s closest neighbor in the solar system. Venus is the brightest object in the sky after the Sun and the Moon, and sometimes looks like a bright star in the morning or evening sky. The planet is a little smaller than Earth, and is similar to Earth inside.'
    },
    {
      'name': 'Earth',
      'pic': 'build/assets/image/earth.png',
      'nick': 'The blue Planet',
      'index': '3',
      'details':
          'Earth consists of land, air, water and life. The land contains mountains, valleys and flat areas. The air is made up of different gases, mainly nitrogen and oxygen. The water includes oceans, lakes, rivers, streams, rain, snow and ice.'
    },
    {
      'name': 'Mars',
      'pic': 'build/assets/image/mars.png',
      'nick': 'Red Planet',
      'index': '4',
      'details':
          'Mars is the fourth planet from the Sun and the next planet beyond Earth. It is, on average, more than 142 million miles from the Sun. Mars turns on its axis more slowly than Earth does. So, a day on Mars is 24.6 hours.Mariner 4, which flew by Mars on July 14, 1965, found that Mars has an atmospheric pressure of only 1 to 2 percent of the Earth.'
    },
    {
      'name': 'Jupiter',
      'pic': 'build/assets/image/jupiter.png',
      'nick': 'The Gas Giant',
      'index': '5',
      'details':
          'Jupiter is the largest planet in the solar system. It is approximately 143,000kilometers about 89,000 miles) wide at its equator. Jupiter is so large that all of the other planets in the solar system could fit inside it. More than 1,300 Earths would fit inside Jupiter.',
    },
    {
      'name': 'Saturn',
      'pic': 'build/assets/image/saturn.png',
      'nick': 'Ringed Planet',
      'index': '6',
      'details':
          'Saturn is the sixth planet from the Sun and the second-largest planet in our solar system. Like fellow gas giant Jupiter, Saturn is a massive ball made mostly of hydrogen and helium. Saturn is not the only planet to have rings, but none are as spectacular or as complex as Saturn.'
    },
    {
      'name': 'Uranus',
      'pic': 'build/assets/image/uranus.png',
      'nick': 'The Ice Giant',
      'index': '7',
      'details':
          'Uranus is the seventh planet from the Sun, and has the third-largest diameter inour solar system. It was the first planet found with the aid of a telescope, Uranus was discovered in 1781 by astronomer William Herschel, although he originally thought it was either a comet or a star.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: (AppBar(
        title: const Text(
          "Milky Way",
          style: TextStyle(
              fontSize: 25, fontStyle: FontStyle.italic, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      )),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("build/assets/image/sky.png"),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: planet_List.map((e) {
              return Center(
                child: Container(
                  margin: const EdgeInsets.all(30),
                  height: h / 4,
                  width: w / 1.02,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment(-1, 0),
                        child: AnimatedRotation(
                          turns: 1,
                          duration: Duration(hours: 40),
                          curve: Curves.ease,
                          child: Image.asset(
                            e["pic"],
                            width: 170,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const Alignment(0.9, -0.6),
                        child: Text(
                          "Name: ${e["name"]}",
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.9, -0.1),
                        child: Text(
                          "${e["nick"]}",
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.9, 0.5),
                        child: InkWell(
                          onTap: (){
                            List w = [
                              e["name"],
                              e["nick"],
                              e["pic"],
                              e["details"]
                            ];
                            Navigator.pushNamed(context, "details",arguments: w);
                          },
                          child: Container(
                            height: 35,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(width: 2, color: Colors.white)),
                            child: Center(
                                child: Text(
                              "Know More",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
