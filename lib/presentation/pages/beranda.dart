import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jas_cuaca/presentation/widgets/button/setting_button.dart';
import 'package:jas_cuaca/presentation/widgets/card/humidity_card.dart';
import 'package:jas_cuaca/presentation/widgets/card/long_card.dart';
import 'package:jas_cuaca/util/convert_value.dart';
import 'package:jas_cuaca/util/dummie_data.dart';

import '../../util/global_style.dart';

// ignore: must_be_immutable
class Beranda extends StatefulWidget {
  final TextStyle cityStyleText = TextStyle(
    color: kBlack,
    fontFamily: h2.fontFamily,
    fontSize: h2.fontSize,
    fontWeight: h2.fontWeight,
  );
  final TextStyle humidityStyleText = TextStyle(
    color: kBlack,
    fontFamily: h3.fontFamily,
    fontSize: h3.fontSize,
    fontWeight: h3.fontWeight,
  );
  final TextStyle dateStyleText = TextStyle(
    color: kBlack,
    fontFamily: page.fontFamily,
    fontSize: page.fontSize,
    fontWeight: page.fontWeight,
  );

  final BoxShadow shadow = BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 1,
    blurRadius: 10,
    offset: const Offset(1, 3), // changes position of shadow
  );

  double borderRadius = 30;

  int indexdata = 0;

  Beranda({
    Key? key,
  }) : super(key: key);

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Jawa Barat, Bandung", style: widget.cityStyleText),
                      Text("Senin, 20 Maret 2021", style: widget.dateStyleText)
                    ],
                  ),
                  SettingButton(),
                ],
              ),
            ),
            Center(
              child: CarouselSlider.builder(
                  itemCount: dataCardDummie.length,
                  options: CarouselOptions(
                    height: 410,
                    onPageChanged: (index, reason) {
                      // print(dataCardDummie[index]["day"]);
                      setState(() {
                        widget.indexdata = index;
                        print(convertPersentoInt("9 %"));
                      });
                    },
                  ),
                  itemBuilder: (context, index, realIndex) {
                    return LongCard(
                        day: dataCardDummie[index]["day"],
                        max: dataCardDummie[index]["temperatureMax"],
                        min: dataCardDummie[index]["temperatureMin"]);
                  }),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.28,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                color: kTersier,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(widget.borderRadius),
                  topRight: Radius.circular(widget.borderRadius),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Humidity",
                      style: widget.humidityStyleText,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HumadityCard(
                          type: "Max",
                          value: convertPersentoInt(
                              dataCardDummie[widget.indexdata]["humidityMax"]),
                        ),
                        HumadityCard(
                          type: "Man",
                          value: convertPersentoInt(
                              dataCardDummie[widget.indexdata]["humidityMin"]),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
