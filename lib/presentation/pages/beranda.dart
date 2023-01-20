import 'package:flutter/material.dart';
import 'package:jas_cuaca/presentation/widgets/button/setting_button.dart';

import '../../util/global_style.dart';

class Beranda extends StatefulWidget {
  final TextStyle cityStyleText = TextStyle(
    color: kBlack,
    fontFamily: h2.fontFamily,
    fontSize: h2.fontSize,
    fontWeight: h2.fontWeight,
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
          ],
        ),
      ),
    );
  }
}
