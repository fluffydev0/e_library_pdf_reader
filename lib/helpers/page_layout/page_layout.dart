import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:e_library/features/account/services/account_services.dart';
import 'package:e_library/helpers/colors.dart';
import 'package:e_library/helpers/page_layout/text_formating.dart';

class PageLayout extends StatefulWidget {
  PageLayout(
      {this.appBarDrawerEnabled = false,
      this.noAppBar = false,
      this.key,
      this.child,
      this.title,
      this.titleTextColor = textColor,
      this.fontSize = 16,
      this.backOnPressed = null,
      this.appBarActions,
      this.appBarColor = Colors.white,
      this.scaffoldColor = Colors.white,
      this.scaffoldPadding = 16.0,
      this.bottomNavEnabled = false,
      this.navPop = true,
      this.appBarElevation = 0.1});

  final appBarActions;
  final Color appBarColor;
  final bool appBarDrawerEnabled;
  final double appBarElevation;
  final Function? backOnPressed;
  final Widget? child;
  final double fontSize;
  final key;
  final bool bottomNavEnabled, navPop;
  final bool noAppBar;
  final Color scaffoldColor;
  final double? scaffoldPadding;
  final String? title;
  final Color? titleTextColor;

  @override
  _PageLayoutState createState() => _PageLayoutState();
}

class _PageLayoutState extends State<PageLayout> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },

      child: widget.noAppBar
          ? Scaffold(
              key: widget.key,
              body: SafeArea(
                child: _loading
                    ? const Text("")
                    : Container(
                        color: widget.scaffoldColor,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: widget.scaffoldPadding!),
                          child: widget.child,
                        ),
                      ),
              ),
            )
          : Scaffold(
              key: widget.key,
              body:Container(
                  color: widget.scaffoldColor,
                  child: Column(
                    children: [
                      PhysicalModel(
                        elevation:widget.appBarElevation,
                        shadowColor: Colors.black,
                        color:widget.appBarColor,
                        child: SizedBox(
                          height: 120.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0,right:16.0,top:24.0),
                            child: Row(
                              children: [
                                widget.navPop
                                    ? InkWell(
                                        child: Icon(Icons.arrow_back_ios),
                                        onTap: () => Navigator.of(context).pop(),
                                      )
                                    : const SizedBox(
                                        width: 0,
                                      ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Expanded(
                                    child: Row(
                                  children: [
                                    Text(
                                      '${widget.title}',
                                      style: textStyle(
                                        fontSize: widget.fontSize,
                                        fontWeight: FontWeight.w700,
                                        color: widget.titleTextColor,
                                      ),
                                    ),
                                  ],
                                )),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: widget.appBarActions ?? [],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: widget.scaffoldPadding!),
                          child: _loading ? const Text("") : widget.child,
                        ),
                      ),
                    ],
                  ),
                ),
            ),
      // ),
    );
  }

  bool _loading = false;
}
