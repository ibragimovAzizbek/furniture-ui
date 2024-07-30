import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture/cubits/home/bottom_nav_bar_cubit.dart';
import 'package:furniture/cubits/home/bottom_nav_state.dart';
import 'package:furniture/presentation/resource/assets_manager.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavState>(
      builder: (context, state) {
        return BottomNavigationBar(
          elevation: 0,
          backgroundColor: ColorManager.black100,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.bottomHome),
              activeIcon: SvgPicture.asset(
                AppIcons.bottomHomeActive,
              ),
              label: '',
              backgroundColor: ColorManager.black100,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.bottomLike),
              activeIcon: SvgPicture.asset(
                AppIcons.bottomLikeActive,
              ),
              label: '',
              backgroundColor: ColorManager.black100,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.bottomBasic),
              activeIcon: SvgPicture.asset(AppIcons.bottomBasic,
                  theme: SvgTheme(currentColor: ColorManager.eA592A)),
              label: '',
              backgroundColor: ColorManager.black100,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.bottomShop),
              activeIcon: SvgPicture.asset(
                AppIcons.bottomShop,
              ),
              label: '',
              backgroundColor: ColorManager.black100,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.bottomProfile),
              activeIcon: SvgPicture.asset(
                AppIcons.bottomProfile,
                theme: SvgTheme(currentColor: ColorManager.eA592A),
              ),
              label: '',
              backgroundColor: ColorManager.black100,
            ),
          ],
          currentIndex: context.watch<BottomNavBarCubit>().selectedIndex,
          onTap: (index) {
            context.read<BottomNavBarCubit>().setIndex(index);
          },
        );
      },
    );
  }
}
