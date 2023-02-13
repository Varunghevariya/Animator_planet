import 'package:flutter/material.dart';
import 'package:animation_list/animation_list.dart';
import 'details.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const GelexyApp(),
     //   'details': (context) => const Details(),
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
      'detail':
          'Sun, star around which Earth and the other components of the solar system revolve. It is the dominant body of the system, constituting more than 99 percent of its entire mass. The Sun is the source of an enormous amount of energy, a portion of which provides Earth with the light and heat necessary to support life.The Sun is classified as a G2 V star, with G2 standing for the second hottest stars of the yellow G class—of surface temperature about 5,800 kelvins (K)—and the V representing a main sequence, or dwarf, star, the typical star for this temperature class'
    },
    {
      'name': 'Mercury',
      'pic': 'build/assets/image/mercury.png',
      'nick': 'The Swift Planet',
      'index': '1',
      'detail':
          'What are 5 facts about Mercury Image result for mercury details At a distance of only about 1/3 of Earth\'s distance to Sun, Mercury is the first planet in our Solar System. With a diameter of only 4880 kilometers (3032 miles) Mercury is the smallest planet in the Solar System. It is barely bigger than our Moon. Not only is Mercury the smallest planet, it is also shrinking!'
    },
    {
      'name': 'Venus',
      'pic': 'build/assets/image/venus.png',
      'nick': 'Morning Star',
      'index': '2',
      'detail':
          'Venus is the second planet from the Sun, and is Earth\'s closest neighbor in the solar system. Venus is the brightest object in the sky after the Sun and the Moon, and sometimes looks like a bright star in the morning or evening sky. The planet is a little smaller than Earth, and is similar to Earth inside.'
    },
    {
      'name': 'Earth',
      'pic': 'build/assets/image/earth.png',
      'nick': 'The blue Planet',
      'index': '3',
      'detail':
          'Earth consists of land, air, water and life. The land contains mountains, valleys and flat areas. The air is made up of different gases, mainly nitrogen and oxygen. The water includes oceans, lakes, rivers, streams, rain, snow and ice.'
    },
    {
      'name': 'Mars',
      'pic': 'build/assets/image/mars.png',
      'nick': 'Red Planet',
      'index': '4',
      'detail':
          'Mars is the fourth planet from the Sun and the next planet beyond Earth. It is, on average, more than 142 million miles from the Sun. Mars turns on its axis more slowly than Earth does. So, a day on Mars is 24.6 hours.Mariner 4, which flew by Mars on July 14, 1965, found that Mars has an atmospheric pressure of only 1 to 2 percent of the Earth\'s. Temperatures on Mars average about -81 degrees F. However, temperatures range from around -220 degrees F. in the wintertime at the poles, to +70 degrees F.'
    },
    {
      'name': 'Jupiter',
      'pic': 'build/assets/image/jupiter.png',
      'nick': 'The Gas Giant',
      'index': '5',
      'detail':
          'Jupiter is the largest planet in the solar system. It is approximately 143,000kilometers about 89,000 miles) wide at its equator. Jupiter is so large that all of the other planets in the solar system could fit inside it. More than 1,300 Earths would fit inside Jupiter.',
    },
    {
      'name': 'Saturn',
      'pic': 'build/assets/image/saturn.png',
      'nick': 'Ringed Planet',
      'index': '6',
      'detail':
          'Saturn is the sixth planet from the Sun and the second-largest planet in our solar system. Like fellow gas giant Jupiter, Saturn is a massive ball made mostly of hydrogen and helium. Saturn is not the only planet to have rings, but none are as spectacular or as complex as Saturn.'
    },
    {
      'name': 'Uranus',
      'pic': 'build/assets/image/uranus.png',
      'nick': 'The Ice Giant',
      'index': '7',
      'detail':
          'Uranus is the seventh planet from the Sun, and has the third-largest diameter inour solar system. It was the first planet found with the aid of a telescope, Uranus was discovered in 1781 by astronomer William Herschel, although he originally thought it was either a comet or a star.',
    },
  ];
  Widget _GelexyApp(String name,String nick,String details,String pic) {
    return Container(
        height: 100,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ));
  }

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
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
      child: AnimationList(
        children: planet_List.map((e) {
          return _GelexyApp(e["name"], e["nick"], e["details"], e["pic"]);

        }).toList(),
      duration: 1000,
      ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
