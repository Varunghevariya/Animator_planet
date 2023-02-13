
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Details(),
    ),
  );
}

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> with TickerProviderStateMixin {
  late AnimationController animationController;
  @override
  @override
  void initState() {
// TODO: implement initState
    super.initState();
    animationController =
    AnimationController(vsync: this, duration: const Duration(seconds: 5))
      ..repeat();
  }
  @override
  void dispose() {
// TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List s = ModalRoute.of(context)!.settings.arguments as List;
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${s[0]}",
          style:
              const TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("build/assets/image/sky.png"),
              fit: BoxFit.fill),
        ),
        child: Stack(
          children: [
            Align(
              alignment: (const Alignment(0, -1)),
              child: RotationTransition(
                turns: animationController,
                child: Image.asset(
                  "${s[2]}",
                  width: 280,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, -0.1),
              child: Container(
                margin: const EdgeInsets.all(20),
                height: h / 12,
                width: w,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(width: 5, color: Colors.white),
                    borderRadius: BorderRadius.circular(50)),
                alignment: Alignment.center,
                child: Text(
                  "${s[0]}",
                  style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: const Alignment(0, 0.15),
              child: Container(
                margin: const EdgeInsets.all(20),
                height: h / 12,
                width: w,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(width: 5, color: Colors.white),
                    borderRadius: BorderRadius.circular(50)),
                alignment: Alignment.center,
                child: Text(
                  "${s[1]}",
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 1),
              child: Container(
                margin: const EdgeInsets.all(20),
                height: h / 3.3,
                width: w,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(width: 5, color: Colors.white),
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(
                      "${s[3]}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        letterSpacing: 2,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
