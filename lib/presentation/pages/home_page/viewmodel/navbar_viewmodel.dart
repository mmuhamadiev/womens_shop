import 'package:flutter/material.dart';
import 'package:womens_shop/presentation/app_theme/app_colors/app_colors.dart';
import 'package:womens_shop/presentation/constraints/assets.dart';
import 'package:womens_shop/presentation/pages/home_page/components/custom_navbar_button.dart';

class NavBarViewModel {
  List<BottomNavigationBarItem> listOfNavBars = [
    BottomNavigationBarItem(
        backgroundColor: Colors.transparent,
        icon: Image.asset(Assets.flash),
        activeIcon: Image.asset(Assets.flash, color: AppColors.staticWhiteColor,),
        label: 'Flash'
    ),
    BottomNavigationBarItem(
        backgroundColor: Colors.transparent,
        icon: Image.asset(Assets.search),
        activeIcon: Image.asset(Assets.search, color: AppColors.staticWhiteColor,),
        label: 'Search'
    ),
    BottomNavigationBarItem(
        backgroundColor: Colors.transparent,
        icon: customNavigationButton(
                (){}
        ),
        label: 'Cart'
    ),
    BottomNavigationBarItem(
        backgroundColor: Colors.transparent,
        icon: Badge(child: Image.asset(Assets.notification)),
        activeIcon: Badge(child: Image.asset(Assets.notification, color: AppColors.staticWhiteColor,)),
        label: 'Notification'
    ),
    BottomNavigationBarItem(
        backgroundColor: Colors.transparent,
        icon: Image.asset(Assets.profile),
        activeIcon: Image.asset(Assets.profile, color: AppColors.staticWhiteColor,),
        label: 'Profile'
    ),
  ];
}