import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:oloid/global/myColors.dart';
import 'package:oloid/global/myDimens.dart';

Widget BuildCupertinoTextField(String placeholderText, TextInputType type, bool obscureText) {
  return CupertinoTextField(
    padding: EdgeInsets.symmetric(
        horizontal: MyDimens.double_20, vertical: MyDimens.double_15),
    decoration: BoxDecoration(
        color: MyColors.lightAccentColor,
        borderRadius: BorderRadius.all(Radius.circular(MyDimens.double_4))),
    maxLines: 1,
    obscureText: obscureText,
    keyboardType: type,
    placeholder: placeholderText,
    placeholderStyle: TextStyle(color: MyColors.grey),
    cursorColor: MyColors.white,
    cursorWidth: 3,
    cursorRadius: Radius.circular(50),
    style: TextStyle(color: MyColors.white),
  );
}