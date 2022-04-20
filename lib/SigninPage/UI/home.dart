import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/Assets/assets.dart';
import 'package:test_app/Assets/colors.dart';

import 'customwidgets .dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  Map<String, bool> values = {
    'foo': true,
    'bar': false,
  };
  String val = 'Male';

  @override
  Widget build(BuildContext context) {
    var _dimension = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(40),
                color: Colors.white,
                width: _dimension.width,
                height: _dimension.height - 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: SvgPicture.asset(Assets.assetNames[0]),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new Text(
                          'Step 1/3',
                          style: new TextStyle(
                              fontSize: 13,
                              fontFamily: 'Montserrat',
                              color: Colors_Singin.Step,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        new Text(
                          'First Name',
                          style: new TextStyle(
                              fontSize: 13,
                              fontFamily: 'Montserrat',
                              color: Colors_Singin.text,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        TextField(
                            controller: null,
                            decoration: InputDecoration(
                              hintText: "Rawan",
                              border: myinputborder(),
                            )),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        new Text(
                          'Last Name',
                          style: new TextStyle(
                              fontSize: 13,
                              fontFamily: 'Montserrat',
                              color: Colors_Singin.text,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        TextField(
                            controller: null,
                            decoration: InputDecoration(
                              hintText: "Alaa",
                              border: myinputborder(),
                            )),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Text(
                                  'Gender',
                                  style: new TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Montserrat',
                                      color: Colors_Singin.text,
                                      fontWeight: FontWeight.w500),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                DropdownButton<String>(
                                  items: <String>['Famale','Male']
                                      .map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(val),
                                    );
                                  }).toList(),
                                  onChanged: (vall) {
                                    setState(() {
                                      val = vall.toString();
                                    });
                                  },
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Text(
                                  'Country',
                                  style: new TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Montserrat',
                                      color: Colors_Singin.text,
                                      fontWeight: FontWeight.w500),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                TextButton(
                                  onPressed: null,
                                  child: new Text(
                                    'Egypt',
                                    style: new TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Montserrat',
                                        color: Colors_Singin.Step,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Center(
                        child: TextButton(
                      onPressed: null,
                      child: new Text(
                        'Already have an account? Login',
                        style: new TextStyle(
                            fontSize: 13,
                            fontFamily: 'Montserrat',
                            color: Colors_Singin.Step,
                            fontWeight: FontWeight.w400),
                      ),
                    ))
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: _dimension.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xff77214A),
                        Color(0xffEAC43E)
                      ], // red to yellow
                      tileMode: TileMode
                          .repeated, // repeats the gradient over the canvas
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextButton(
                          onPressed: null,
                          child: new Text(
                            'Previous',
                            style: new TextStyle(
                                fontSize: 20,
                                fontFamily: 'Montserrat',
                                color: Colors_Singin.bottomText,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: TextButton(
                          onPressed: null,
                          child: new Text(
                            'Next',
                            style: new TextStyle(
                                fontSize: 20,
                                fontFamily: 'Montserrat',
                                color: Colors_Singin.bottomText,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return OutlineInputBorder(
        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color: Colors.redAccent,
          width: 3,
        ));
  }

  OutlineInputBorder myfocusborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color: Colors.greenAccent,
          width: 3,
        ));
  }
}





/*

Stack(
      children: [
      Center(
        child: SvgPicture.asset(Assets.assetNames[0]),),

      Center(
        child :Container(
              width: _dimension.width-20,
              height: _dimension.height-_dimension.height/3,
              
            child:Stack(
              children: [
              Container(
            margin: EdgeInsets.only(top: 50),
              height: _dimension.height-_dimension.height/2.5,
              decoration: BoxDecoration(
            color: Colors_Singin.backgroundContaner,
            borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
        child: SingleChildScrollView(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
          Padding(padding: EdgeInsets.only(top: 50)),
         
          Center(
            child: new Text(
                'Welcome',
                style: new TextStyle(
                    fontSize: 45,
                    fontFamily: 'Open Sans Hebrew',
                    color: Colors_Singin.text,
                    fontWeight: FontWeight.w700
                    ),
              ),
          ),
          
          Padding(padding: EdgeInsets.only(right: 10,left: 10),
          child:TextField( 
                  controller: null,
                  decoration: InputDecoration( 
                      hintText: "Phone Number",
                      hintTextDirection: TextDirection.rtl,
                      prefixIcon: Icon(Icons.phone),
                      border: myinputborder(),
                  )
                ),
                ),
          
          Padding(padding: EdgeInsets.only(top: 10,right: 10,left: 10),
          child:CustomWidgets.socialButtonRect(
              'Get a code', Colors_Singin.backGetCode,null,60.0,290.0,FontWeight.w700,20.0,
              onTap: () {
                 }),
            ),
              
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Expanded(child: Divider(height: 5,color: Colors_Singin.divider,)),
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                'or',
                style: new TextStyle(
                    fontSize: 18,
                    fontFamily: 'Open Sans Hebrew',
                    color: Colors_Singin.orText,
                    fontWeight: FontWeight.w400
                    ),
              ),
              Padding(padding: EdgeInsets.only(right: 20)),
              Expanded(child: Divider(height: 5,color: Colors_Singin.divider,)),
              Padding(padding: EdgeInsets.only(right: 20)),

              
          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomWidgets.socialButtonRect(
              'Facebook', Colors_Singin.backfacebookColor,Assets.assetNames[1],70.0,130.0,FontWeight.w400,14.0, 
              onTap: () {
          }),
              CustomWidgets.socialButtonRect(
              'Google', Colors_Singin.backgoogleColor,Assets.assetNames[2],70.0,130.0,FontWeight.w400,14.0, 
              onTap: () {
          }),
          ],)

          ,Padding(padding: EdgeInsets.only(bottom: 30)),

        ],
      ),)
        ),

              Padding(
                padding: EdgeInsets.only(
                left: _dimension.width/3,right: _dimension.width/3,
                  bottom: _dimension.height/2),
                child: SvgPicture.asset(Assets.assetNames[3]),)

              
            ],)),
     ),
      

      ],
    ),
    

    */