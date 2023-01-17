import 'package:flutter/material.dart';

import 'package:jas_cuaca/util/global_style.dart';

class WeatherCard extends StatefulWidget {
  final String celcius;
  final String time;
  final String categoty;
  final String? localImage;

  WeatherCard(
      {Key? key,
      required this.celcius,
      required this.time,
      required this.categoty,
      this.localImage})
      : super(key: key);

  @override
  State<WeatherCard> createState() => _WeatherCardState();
}

class _WeatherCardState extends State<WeatherCard> {
  TextStyle times = TextStyle(
    color: kWhite,
    fontFamily: h1.fontFamily,
    fontSize: h1.fontSize,
    fontWeight: draw.fontWeight,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: MediaQuery.of(context).size.width * 1,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment(1, 1),
            colors: <Color>[kPrimary, kSecondary],
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                  widget.celcius,
                  style: TextStyle(
                    color: kWhite,
                    fontFamily: unit.fontFamily,
                    fontSize: unit.fontSize,
                    fontWeight: unit.fontWeight,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      widget.time,
                      style: times,
                    ),
                    Text(
                      widget.categoty,
                      style: times,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Center(
                  child: Image.asset('assets/drizzle-sunny.png', scale: 1.1)),
            ),
          ],
        ),
      ),
    );
  }
}
