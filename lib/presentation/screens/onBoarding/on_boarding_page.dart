import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';
import 'package:furniture/presentation/screens/onBoarding/components/on_boarding_data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;

  final pageCtx =
      PageController(initialPage: 0, viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50.h),
          SizedBox(
            height: 360.h,
            child: PageView.builder(
              controller: pageCtx,
              itemCount: 3,
              itemBuilder: (context, index) {
                return SvgPicture.asset(
                  images[index],
                  height: 360.h,
                  width: 359.w,
                  fit: BoxFit.cover,
                );
              },
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          SizedBox(height: 74.h),
          SmoothIndicator(pageCtx: pageCtx),
          SizedBox(height: 31.h),
          indicator(),
          SizedBox(height: 6.h),
          //Title
          Padding(
            padding: EdgeInsets.only(left: 41.w, right: 28.w),
            child: Text(
              onboardingData[currentIndex]["title"].toString(),
              style: TextStyle(
                fontSize: 30.sp,
                color: ColorManager.textBlack,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 6.h),
          // Subtitle
          Padding(
            padding: EdgeInsets.only(left: 41.w, right: 28.w),
            child: Text(
              onboardingData[currentIndex]["subtitle"].toString(),
              style: TextStyle(
                fontSize: 14.sp,
                color: ColorManager.black60,
              ),
            ),
          ),
          const Spacer(),
          // Bottom buttons
          Padding(
            padding: EdgeInsets.only(left: 41.w, bottom: 51.h, right: 28.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    pageCtx.animateToPage(
                      2,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      color: ColorManager.black100,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (currentIndex != 2) {
                      pageCtx.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/login',
                        (route) => true,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(114.w, 114.h),
                    backgroundColor: ColorManager.orange,
                  ),
                  child: Icon(
                    Icons.arrow_right_alt_outlined,
                    color: ColorManager.bgBlack,
                    size: 28.w,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding indicator() {
    return Padding(
      padding: EdgeInsets.only(left: 41.w),
      child: Row(
        children: [
          SvgPicture.asset(
            onboardingData[currentIndex]["icon"].toString(),
            theme: SvgTheme(currentColor: ColorManager.c1AD8B),
            width: 15.w,
            height: 15.h,
          ),
          SizedBox(width: 9.w),
          Text(
            onboardingData[currentIndex]["indicator"].toString(),
            style: TextStyle(
              fontSize: 16.sp,
              color: color[currentIndex],
            ),
          ),
        ],
      ),
    );
  }
}

class SmoothIndicator extends StatelessWidget {
  const SmoothIndicator({
    super.key,
    required this.pageCtx,
  });

  final PageController pageCtx;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SmoothPageIndicator(
        controller: pageCtx,
        count: 3,
        effect: ExpandingDotsEffect(
          dotHeight: 7.h,
          dotWidth: 7.w,
          dotColor: ColorManager.dotColor,
          activeDotColor: ColorManager.dotActiveColor,
        ),
      ),
    );
  }
}
