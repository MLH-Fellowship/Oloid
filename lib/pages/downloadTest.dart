import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oloid/global/myColors.dart';
import 'package:oloid/global/myDimens.dart';
import 'package:oloid/global/mySpaces.dart';
import 'package:oloid/global/myStrings.dart';
import 'package:oloid/pages/home.dart';
import 'package:oloid/pages/login.dart';
import 'package:oloid/pages/menu.dart';
import 'package:oloid/pages/signup.dart';
import 'package:oloid/widgets/BuildCupertinoTextField.dart';

class DownloadTest extends StatefulWidget {
  static const id = "/download-test";
  @override
  _DownloadTestState createState() => _DownloadTestState();
}

class _DownloadTestState extends State<DownloadTest> {
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
        child: Material(
            color: MyColors.dark,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width / 3,
                  color: MyColors.dark,
                  margin: EdgeInsets.only(
                      left: MyDimens.double_40,
                      right: MyDimens.double_40,
                      top: MyDimens.double_120),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Download a test',
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .headline4
                                      .copyWith(
                                      color: MyColors.white,
                                      fontFamily: 'airbnb')),
                              MySpaces.vMediumGapInBetween,
                              BuildCupertinoTextField(
                                  'Test code', TextInputType.emailAddress,
                                  false),
                              MySpaces.vMediumGapInBetween,
                            ],
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Menu.id);
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    MyDimens.double_4)),
                            color: MyColors.accentColor,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: MyDimens.double_15,
                                  horizontal: MyDimens.double_20),
                              child: Text(
                                MyStrings.confirmLabel,
                                style:
                                Theme
                                    .of(context)
                                    .textTheme
                                    .subtitle1
                                    .
                                copyWith(
                                    color: MyColors.white,
                                    fontFamily: 'lexenddeca'),
                              ),
                            ),
                          ),
                          MySpaces.vMediumGapInBetween,
                        ],
                      ),
                      MySpaces.vMediumGapInBetween,
                    ],
                  )
              ),
            )
        ),
      ),
    );
  }
}
