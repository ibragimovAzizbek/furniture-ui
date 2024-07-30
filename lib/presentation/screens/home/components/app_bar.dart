import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture/presentation/resource/assets_manager.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.bgWhite,
      surfaceTintColor: ColorManager.bgWhite,
      elevation: 0,
      leadingWidth: 67.w,
      leading: Padding(
        padding: EdgeInsets.only(left: 28.w),
        child: Image.asset(
          ImageAssets.homeLeadingIcon,
          height: 39.h,
          width: 39.w,
        ),
      ),
      centerTitle: true,
      title: Text(
        "Home",
        style: TextStyle(
          fontSize: 16.sp,
          color: ColorManager.black100,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            ImageAssets.oclock,
            height: 24.h,
            width: 24.w,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            ImageAssets.search,
            height: 24.h,
            width: 24.w,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}

class AppBarLike extends StatelessWidget implements PreferredSizeWidget {
  const AppBarLike({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.bgWhite,
      surfaceTintColor: ColorManager.bgWhite,
      elevation: 0,
      centerTitle: true,
      title: Text(
        "Wishlist",
        style: TextStyle(
          fontSize: 16.sp,
          color: ColorManager.black100,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: CircleAvatar(
            backgroundColor: ColorManager.f5EFE5,
            child: SvgPicture.asset(
              AppIcons.bottomShop,
              height: 24.h,
              width: 14.w,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
