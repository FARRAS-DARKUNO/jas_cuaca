import 'package:flutter/material.dart';
import '../../../util/global_style.dart';

class SettingButton extends StatefulWidget {
  final BoxShadow shadow = BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 1,
    blurRadius: 10,
    offset: const Offset(1, 3), // changes position of shadow
  );

  SettingButton({super.key});

  @override
  State<SettingButton> createState() => _SettingButtonState();
}

class _SettingButtonState extends State<SettingButton> {
  // ignore: avoid_print
  goToSetting() => print("hallo");
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: goToSetting,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: kPrimary,
          borderRadius: BorderRadius.circular(1000),
          boxShadow: [widget.shadow],
        ),
        child: const Icon(
          Icons.settings,
          size: 24,
          color: kWhite,
        ),
      ),
    );
  }
}
