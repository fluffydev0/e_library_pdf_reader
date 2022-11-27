import 'package:e_library/feature/e-book/screens/filter_page.dart';
import 'package:e_library/helpers/colors.dart';
import 'package:e_library/helpers/components/app_icon.dart';
import 'package:e_library/helpers/components/button.dart';
import 'package:e_library/helpers/navigators.dart';
import 'package:e_library/helpers/page_layout/page_layout.dart';
import 'package:e_library/helpers/page_layout/text_formating.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageLayout( 
      title:"Welcome",
      fontSize:28.0,
      navPop:false,
      appBarColor:secondaryColor,
      titleTextColor:Colors.white,
      appBarElevation:1.0,
      child:SingleChildScrollView(
        child: Column(
            crossAxisAlignment:CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height:20.0,),

              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width:200.0,
                    child: AppIcon()
                  )
                ],
              ),
              const SizedBox(height:100.0,),
              Column(
                crossAxisAlignment:CrossAxisAlignment.center,
                children: [
                  Text("What we do",style:textStyle(
                    fontWeight:FontWeight.w800,fontSize:18.0
                  ),),
                  const SizedBox(height:10.0,),
                  Row(
                    children: [
                      Expanded(child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        textAlign:TextAlign.center,
                        overflow:TextOverflow.ellipsis,
                        maxLines:20,
                        style:textStyle(
                          fontSize:14.0,
                        ),)
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height:100.0,),
              AppButton(
                onPress:()=>nextPage(context,(context)=>FilterScreen()),
                title:"Advance",
              ),
            ],
        ),
      ),
    );
  }
}