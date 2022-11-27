import 'package:flutter/cupertino.dart';
import 'package:e_library/helpers/page_layout/page_layout.dart';

class Reels extends StatefulWidget {
  @override
  State<Reels> createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      title: 'Reels',
      noAppBar: true,
      scaffoldPadding: 16.0,
      child: Center(
        child: Text("Reels"),
      ),
    );
  }
}
