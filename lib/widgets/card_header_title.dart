import 'package:flutter/material.dart';

class HeaderTitleCard extends StatelessWidget {
  final String headerTitle;
  final Color cardColor = Colors.red.shade900;
  final Color textColor;
  final Function()? onTab;

  HeaderTitleCard({
    Key? key,
    this.headerTitle = "",
    this.textColor = Colors.white,
    this.onTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Card(
        color: cardColor,
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: MediaQuery.of(context).size.width * 0.98,
          child: Text(
            headerTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
