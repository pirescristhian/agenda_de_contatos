import 'package:agenda_de_contatos/style.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  double horizontalPadding;

  CustomDivider([this.horizontalPadding = 0]);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: horizontalPadding,
      ),
      child: Divider(
        color: greyDivider,
        thickness: 1,
      ),
    );
  }
}
