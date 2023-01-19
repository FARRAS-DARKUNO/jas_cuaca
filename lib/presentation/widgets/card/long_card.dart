import 'package:flutter/material.dart';

import 'package:jas_cuaca/util/global_style.dart';

class LongCard extends StatefulWidget {
  final String day;
  final String max;
  final String min;
  final TextStyle dayStyleText = TextStyle(
    color: kWhite,
    fontFamily: draw.fontFamily,
    fontSize: draw.fontSize,
    fontWeight: draw.fontWeight,
  );
  final TextStyle temperatureStyleText = TextStyle(
    color: kWhite,
    fontFamily: h4.fontFamily,
    fontSize: h4.fontSize,
    fontWeight: h4.fontWeight,
  );
  final TextStyle minmaxStyleText = TextStyle(
    color: kWhite,
    fontFamily: page.fontFamily,
    fontSize: page.fontSize,
    fontWeight: page.fontWeight,
  );
  final TextStyle celciusStyleText = TextStyle(
    color: kWhite,
    fontFamily: h1.fontFamily,
    fontSize: h1.fontSize,
    fontWeight: h1.fontWeight,
  );
  final String temperatureText = 'Temperature';
  final List textMinMax = ["Min", "Max"];

  LongCard({
    Key? key,
    required this.day,
    required this.max,
    required this.min,
  }) : super(key: key);

  @override
  State<LongCard> createState() => _LongCardState();
}

class _LongCardState extends State<LongCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment(1, 1),
          colors: <Color>[kPrimary, kSecondary],
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Center(
              child: Text(
                widget.day,
                style: widget.dayStyleText,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 1,
                    margin: const EdgeInsets.only(bottom: 10),
                    width: MediaQuery.of(context).size.width * 0.65,
                    color: kTersier,
                  ),
                  Text(
                    widget.temperatureText,
                    style: widget.temperatureStyleText,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              widget.textMinMax[0],
                              style: widget.minmaxStyleText,
                            ),
                            Text(
                              widget.min,
                              style: widget.celciusStyleText,
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              widget.textMinMax[1],
                              style: widget.minmaxStyleText,
                            ),
                            Text(
                              widget.max,
                              style: widget.celciusStyleText,
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
