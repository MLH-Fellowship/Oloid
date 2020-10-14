import 'package:flutter/material.dart';
import 'package:oloid/global/myColors.dart';
import 'package:oloid/global/myDimens.dart';
import 'package:oloid/global/mySpaces.dart';
import 'package:oloid/global/myStrings.dart';
import 'package:oloid/pages/home.dart';
import 'package:oloid/pages/login.dart';

class CreateTest extends StatefulWidget {
  static const id = "/create-test";
  @override
  _CreateTestState createState() => _CreateTestState();
}

class _CreateTestState extends State<CreateTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery
            .of(context)
            .size
            .width, 1000),
        child: Container(
          color: MyColors.dark,
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: MyDimens.double_10, horizontal: MyDimens.double_20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    child: Text(MyStrings.appName, style: Theme
                        .of(context)
                        .textTheme
                        .headline5
                        .copyWith(
                        color: MyColors.white, fontWeight: FontWeight.bold),),
                    onTap: () {
                      Navigator.pushNamed(context, Home.id);
                    }),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        MyStrings.aboutLabel,
                        style: TextStyle(color: MyColors.white,
                            fontSize: MyDimens.double_17),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 50,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        MyStrings.featureLabel,
                        style: TextStyle(color: MyColors.white,
                            fontSize: MyDimens.double_17),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 50,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        MyStrings.contactLabel,
                        style: TextStyle(color: MyColors.white,
                            fontSize: MyDimens.double_17),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 50,
                    ),
                    FlatButton(
                        child: Text(
                          MyStrings.loginLabel, style: Theme
                            .of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(
                            color: MyColors.white, fontSize: MyDimens.double_17),
                        ),
                        color: MyColors.accentColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(MyDimens.double_7),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, Login.id);
                        }
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(MyStrings.createATestLabel, style: Theme.of(context).textTheme.headline5.copyWith(color: MyColors.white, fontWeight: FontWeight.bold),),
            MySpaces.vSmallGapInBetween,
            FlatButton(onPressed: () {
              //
            },
              child: Text('Upload a test PDF', style: Theme.of(context).textTheme.subtitle1.copyWith(color: MyColors.grey),), color: MyColors.lightAccentColor,),
          MySpaces.vSmallGapInBetween,
            Text('Password: HIDQN91', style: TextStyle(color: MyColors.white),)
          ],
        ),
      ),
    );
  }
}
