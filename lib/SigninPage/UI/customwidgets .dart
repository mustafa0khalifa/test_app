import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/Assets/assets.dart';

class CustomWidgets {
  static Widget socialButtonRect(title, color, icon,hig,wid,fontWeight,fontSize, {Function? onTap}) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Container(
        height: hig,
        width: wid,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             if (icon != null)   SvgPicture.asset(icon),
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Text(title,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Open Sans Hebrew',
                      fontSize: fontSize,
                      fontWeight: fontWeight)),
            ),
          ],
        ),
      ),
    );
  }
}