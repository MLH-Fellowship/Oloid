import 'package:flutter/material.dart';
import 'package:oloid/global/myColors.dart';
import 'package:oloid/global/myDimens.dart';
import 'package:oloid/global/mySpaces.dart';
import 'package:oloid/global/myStrings.dart';
import 'package:oloid/pages/createTest.dart';
import 'package:oloid/pages/downloadTest.dart';
import 'package:oloid/pages/home.dart';
import 'package:oloid/pages/login.dart';


class Menu extends StatefulWidget {
  static const id = "/menu";
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => Navigator.pushNamed(context, CreateTest.id),
              child: Wrap(
                children: <Widget>[Container(
                  margin: EdgeInsets.all(MyDimens.double_30),
                  padding: EdgeInsets.all(MyDimens.double_30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MyDimens.double_7),
                      border: Border.all(color: MyColors.white)
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.cloud_upload_outlined, color: MyColors.white, size: MyDimens.double_60,),
                      MySpaces.vGapInBetween,
                      Text(MyStrings.createATestLabel, style: Theme.of(context).textTheme.headline5.copyWith(color: MyColors.white,))
                    ],
                  ),
                )],
              ),
            ),
            InkWell(
              child: Wrap(
                children: <Widget>[Container(
                  margin: EdgeInsets.all(MyDimens.double_30),
                  padding: EdgeInsets.all(MyDimens.double_30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MyDimens.double_7),
                      border: Border.all(color: MyColors.white)
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.picture_as_pdf_outlined, color: MyColors.white, size: MyDimens.double_60,),
                      MySpaces.vGapInBetween,
                      Text(MyStrings.gradedTestsLabel, style: Theme.of(context).textTheme.headline5.copyWith(color: MyColors.white,))
                    ],
                  ),
                )],
              ),
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, DownloadTest.id),
              child: Wrap(
                children: <Widget>[Container(
                  margin: EdgeInsets.all(MyDimens.double_30),
                  padding: EdgeInsets.all(MyDimens.double_30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MyDimens.double_7),
                      border: Border.all(color: MyColors.white)
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.folder_open, color: MyColors.white, size: MyDimens.double_60,),
                      MySpaces.vGapInBetween,
                      Text(MyStrings.downloadATestLabel, style: Theme.of(context).textTheme.headline5.copyWith(color: MyColors.white,))
                    ],
                  ),
                )],
              ),
            )
          ],
        ),
      ),
    );
  }
}
