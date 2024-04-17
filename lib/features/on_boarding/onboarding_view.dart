import 'package:flutter/material.dart';
import 'package:food_project/features/on_boarding/widgets/column_After_pageView.dart';
import 'package:food_project/features/on_boarding/widgets/items_column.dart';
import 'package:food_project/features/on_boarding/widgets/onboarding_contents.dart';
import 'package:food_project/features/on_boarding/widgets/size_config.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: _controller,
                onPageChanged: (value) => setState(() => _currentPage = value),
                itemCount: onBoradingDisplay.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40.0),
                    child:
                        CustomColumnItems(height: height, width: width, i: i),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: CustomColumnAfterPageView(
                  currentPage: _currentPage,
                  width: width,
                  controller: _controller),
            ),
          ],
        ),
      ),
    );
  }
}
