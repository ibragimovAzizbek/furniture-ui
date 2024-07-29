import 'package:furniture/presentation/resource/assets_manager.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';

final images = [
  AppIcons.onBoardingPage1,
  AppIcons.onBoardingPage2,
  AppIcons.onBoardingPage3
];

final List color = [
  ColorManager.c1AD8B,
  ColorManager.c999C92,
  ColorManager.b68A41,
];

List<Map<String, String>> onboardingData = [
  {
    "icon": AppIcons.onBoardingIcon1,
    "title": "Experience Furniture With Augmented Reality",
    "subtitle": "You can try furniture from the catalog in your home with AR.",
    "indicator": "AR Furniture Setup",
  },
  {
    "icon": AppIcons.onBoardingIcon2,
    "title": "Look at the Furniture on Each Side",
    "subtitle": "You can try furniture from the catalog in your home with AR.",
    "indicator": "3d Product View",
  },
  {
    "icon": AppIcons.onBoardingIcon3,
    "title": "Explore Modern Furniture",
    "subtitle": "You can try furniture from the catalog in your home with AR.",
    "indicator": "More Explore",
  },
];
