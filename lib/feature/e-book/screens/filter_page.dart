import 'package:e_library/feature/e-book/screens/list_books.dart';
import 'package:e_library/helpers/components/button.dart';
import 'package:e_library/helpers/components/dropdown_fields.dart';
import 'package:e_library/helpers/navigators.dart';
import 'package:e_library/helpers/page_layout/page_layout.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      title:"Search filter ",
      navPop:true,
      scaffoldPadding:16.0,
      appBarElevation:0.3,
      child:Column(
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children: [
          SizedBox(height:30.0,),
          DropdownField(
            titleFontSize: 16.0,
            titleSpacing: 7.0,
            titleFontWeight: FontWeight.w500,
            title: "Type",
            items: const [
              '',
              'Full time',
              'Part time',
            ],
            initValue:'',
            onChange: (val) {
            },
          ),
          const SizedBox(height:10.0,),
          DropdownField(
            titleFontSize: 16.0,
            titleSpacing: 7.0,
            titleFontWeight: FontWeight.w500,
            title: "Program type",
            items: const [
              '',
              'ND',
              'HND',
            ],
            initValue:'',
            onChange: (val) {
            },
          ),
          const SizedBox(height:10.0,),

          DropdownField(
            titleFontSize: 16.0,
            titleSpacing: 7.0,
            titleFontWeight: FontWeight.w500,
            title: "Semester",
            items: const [
              '',
              'First semester',
              'Second semester',
            ],
            initValue:'',
            onChange: (val) {
            },
          ),
          const SizedBox(height:10.0,),
          DropdownField(
            titleFontSize: 16.0,
            titleSpacing: 7.0,
            titleFontWeight: FontWeight.w500,
            title: "Level",
            items: const [
              '',
              'ND1',
              'ND2',
              'HND1',
              'HND2',
            ],
            initValue:'',
            onChange: (val) {
            },
          ),
          const SizedBox(height:50.0,),
          AppButton(
            onPress:()=>nextPage(context,(context)=>ListEbooks()),
            title:"Proceed",
          ),


        ],
      ),
    );
  }
}