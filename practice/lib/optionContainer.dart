import 'package:flutter/material.dart';

import './option.dart';

class OptionContainer extends StatelessWidget {
  final List<Option> options = [];

  OptionContainer({List<String> options, Function onPressedHandler}) {
    for (int i = 0; i < options.length; i++) {
      this.options.add(Option(options.elementAt(i), onPressedHandler));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        children: this.options,
      ),
    );
  }
}
