import 'package:flutter/material.dart';
import 'package:jas_cuaca/util/global_style.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HumadityCard extends StatefulWidget {
  final String type;
  final int value;
  final TextStyle typeStyleText = TextStyle(
    color: kBlack,
    fontFamily: h4.fontFamily,
    fontSize: h4.fontSize,
    fontWeight: h4.fontWeight,
  );
  final TextStyle persenStyleText = TextStyle(
    color: kPrimary,
    fontFamily: h1.fontFamily,
    fontSize: h1.fontSize,
    fontWeight: h1.fontWeight,
  );

  LinearGradient get linierGradien => const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment(1, 1),
        colors: <Color>[kPrimary, kSecondary],
      );

  HumadityCard({
    Key? key,
    required this.type,
    required this.value,
  }) : super(key: key);

  @override
  State<HumadityCard> createState() => _HumadityCardState();
}

class _HumadityCardState extends State<HumadityCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 190,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: kWhite,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
              color: kTersier,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: widget.linierGradien,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.water_drop_rounded,
                        size: 24,
                        color: kWhite,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Center(
                      child: Text(
                    widget.type,
                    style: widget.typeStyleText,
                  )),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                )
              ],
            ),
          ),
          CircularPercentIndicator(
            radius: 60.0,
            lineWidth: 10.0,
            percent: (widget.value / 100),
            center: Text(
              "${widget.value}%",
              style: widget.persenStyleText,
            ),
            linearGradient: widget.linierGradien,
            backgroundColor: kWhite,
          ),
        ],
      ),
    );
  }
}
