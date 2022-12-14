import 'package:e_library/helpers/colors.dart';
import 'package:e_library/helpers/page_layout/page_layout.dart';
import 'package:e_library/helpers/snakbars.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher.dart';


class ListEbooks extends StatefulWidget {

  @override
  State<ListEbooks> createState() => _ListEbooksState();
}

class _ListEbooksState extends State<ListEbooks> {
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      title:"Books",
      appBarElevation:0.3,
      child:Booklist()
    );
  }
}


class Booklist extends StatelessWidget {

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
              final url = "https://res.cloudinary.com/acekn/image/upload/v1669625357/asnl/Toyib_ES_practical_assignment_l9qs41.pdf";
              await canLaunch(url)
              ? await launch(url)
              : throw pageToast('Could not launch $url', dangerColor);
            },
            contentPadding:EdgeInsets.all(0),
            title:Text("Com 101"),
            subtitle:Text("computer security"),
            leading:Icon(Icons.book,color:primaryColor,),
            trailing:Icon(Icons.chevron_right),
          ),
        )
      ));
  }
}