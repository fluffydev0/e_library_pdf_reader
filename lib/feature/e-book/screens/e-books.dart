import 'package:e_library/feature/e-book/screens/list_books.dart';
import 'package:flutter/cupertino.dart';
import 'package:e_library/helpers/colors.dart';
import 'package:e_library/helpers/components/flexible_text.dart';
import 'package:e_library/helpers/page_layout/page_layout.dart';
import 'package:e_library/helpers/page_layout/text_formating.dart';
import 'package:flutter/material.dart';

class Blog extends StatefulWidget {
  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      // title:'Blog',
      noAppBar: true,
      scaffoldPadding: 16.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 27,
            ),
            Row(
              children: [
                Text(
                  "Start reading",
                  style: textStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: textColor),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Read articles on gists surrounding entertainment, fashion, and so many others. ",
                    style: textStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: textColor),
                  ),
                )
              ],
            ),
            Divider(),
            Expanded(
              child:Booklist()
            )
          ],
        ),
    );
  }
}
