import 'package:flutter/cupertino.dart';
import 'package:e_library/helpers/page_layout/page_layout.dart';

class CatchUp extends StatefulWidget {
  @override
  State<CatchUp> createState() => _CatchUpState();
}

class _CatchUpState extends State<CatchUp> {
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      title: 'CatchUp',
      noAppBar: true,
      scaffoldPadding: 16.0,
      child: const Center(
        child: Text("CatchUp"),
      ),
    );
  }
}
