import 'package:flutter/cupertino.dart';
import 'package:e_library/helpers/colors.dart';
import 'package:e_library/helpers/page_layout/text_formating.dart';

class FlexibleText extends StatelessWidget {
  const FlexibleText({Key? key, this.maxLine = 1, this.text = "", this.style})
      : super(key: key);
  final int maxLine;
  final String? text;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text("$text",
                overflow: TextOverflow.ellipsis,
                maxLines: maxLine,
                style: style))
      ],
    );
  }
}
