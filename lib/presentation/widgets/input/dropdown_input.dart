import 'package:flutter/material.dart';

import 'package:jas_cuaca/util/global_style.dart';

class DropdownInput extends StatefulWidget {
  final String tittle;
  final List<String> data;
  final String firstText;
  final TextStyle tittleStyleText = TextStyle(
    color: kBlack,
    fontFamily: h4.fontFamily,
    fontSize: h4.fontSize,
    fontWeight: h4.fontWeight,
  );

  DropdownInput({
    Key? key,
    required this.tittle,
    required this.data,
    required this.firstText,
  }) : super(key: key);

  String get firsTexts => firstText;

  @override
  State<DropdownInput> createState() => _DropdownInputState();
}

class _DropdownInputState extends State<DropdownInput> {
  String dropdownValue = 'Pilih Jawaban';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: <Widget>[
          Text(
            widget.tittle,
            style: widget.tittleStyleText,
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(top: 10),
            width: (MediaQuery.of(context).size.width * 1) - 150,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: kTersier,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: DropdownButton<String>(
                value: dropdownValue,
                items: widget.data.map<DropdownMenuItem<String>>((value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: widget.tittleStyleText,
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(
                    () {
                      dropdownValue = newValue!;
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
