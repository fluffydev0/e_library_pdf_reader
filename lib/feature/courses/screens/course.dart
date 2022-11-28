import 'package:e_library/helpers/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:e_library/helpers/page_layout/page_layout.dart';
import 'package:flutter/material.dart';

class CatchUp extends StatefulWidget {
  @override
  State<CatchUp> createState() => _CatchUpState();
}

class _CatchUpState extends State<CatchUp> {
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      title: 'Department',
      navPop:false,
      scaffoldPadding: 16.0,
      appBarElevation:0.3,
      child:Courselist()
    );
  }
}



class Courselist extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding:const EdgeInsets.all(0),
        itemCount:10,
        itemBuilder:((context, index)=>Container(
          // elevation:0.3,
          // shadowColor: Colors.black,
          // color:Colors.white,
          decoration:const BoxDecoration(
            border:Border(
              bottom:BorderSide(
                color:Colors.grey,
                width:0.09
              )
            )
          ),
          child:  ListTile(
            onTap:() async{
            },
            contentPadding:EdgeInsets.all(0),
            title:Text("Computer science"),
            subtitle:Text("School of technology"),
            leading:Icon(Icons.import_contacts,color:primaryColor,),
            trailing:Icon(Icons.chevron_right),
          ),
        )
      ));
  }
}