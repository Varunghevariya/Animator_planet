import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
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

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    List s = ModalRoute.of(context)!.settings.arguments as List;
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${s[0]}",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black12,
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
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("build/assets/image/sky.png"),
              fit: BoxFit.fill),
        ),
        child: Stack(
          children: [
            Align(
              alignment: (Alignment(0, -1)),
              child: Image.asset(
                "${s[2]}",
                width: 280,
              ),
            ),
            Align(
              alignment: Alignment(0, -0.1),
              child: Container(
                margin: EdgeInsets.all(20),
                height: h / 12,
                width: w,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(width: 5, color: Colors.white),
                    borderRadius: BorderRadius.circular(50)),
                alignment: Alignment.center,
                child: Text(
                  "${s[0]}",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment(0, 0.15),
              child: Container(
                margin: EdgeInsets.all(20),
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
              alignment: Alignment(0,1),
              child: Container(
                margin: EdgeInsets.all(20),
                height: h / 3.3,
                width: w,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(width: 5, color: Colors.white),
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Text(
                  "${s[3]}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2,fontSize: 17,
                  ),
                ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
