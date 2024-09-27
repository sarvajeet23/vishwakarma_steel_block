import 'package:block_testing/core/configs/app_dime.dart';
import 'package:flutter/material.dart';

class TitleWithLabel extends StatelessWidget {
  const TitleWithLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: Dime.padding,
      leading: Text(
        "Title",
        style: TextStyle(fontSize: Dime.h3),
      ),
      trailing: const FittedBox(
        fit: BoxFit.fill,
        child: Row(
          children: <Widget>[
            Text(
              "More",
              style: TextStyle(fontSize: 15),
            ),
            Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
