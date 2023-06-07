
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:four20society/constants/colors/app_colors.dart';
import 'package:four20society/feature/cart/presentation/cart.dart';
import 'package:four20society/feature/category/presentaion/category_screen.dart';
import 'package:four20society/feature/dashboard/presentation/dashboard.dart';
import 'package:four20society/feature/profile/presentaion/user_profile_screen.dart';
import 'package:four20society/feature/wish_list/presentation/wish_list_screen.dart';
class HomePageWithBottomBar extends StatefulWidget {
  const HomePageWithBottomBar({Key? key}) : super(key: key);

  @override
  _HomePageWithBottomBarState createState() => _HomePageWithBottomBarState();
}

class _HomePageWithBottomBarState extends State<HomePageWithBottomBar> {
  int pageIndex = 0;

  final pages = [
    const DashboardScreen(),
    const ProductCategoryScreen(),
    const CardScreen(),
    const ProductWishList(),
    const UserProfileScreen(),
 
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildMyNavBar(context),
      body: pages[pageIndex],
    );
  }

  Widget buildMyNavBar(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      decoration: const BoxDecoration(
        color: AppColors.app_bottombar_color
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          navBarItem(
              context: context,
              navIcon:  Icon(Icons.dashboard,color:pageIndex == 0 ? Colors.white : Colors.black.withOpacity(0.2)),
              navTitle: "Dashboard",
              onTap: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              index: 0),
              navBarItem(
              context: context,
              navIcon:  Icon(Icons.category,color:pageIndex == 1 ? Colors.white : Colors.black.withOpacity(0.2)),
              navTitle: "Categories",
              onTap: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              index: 1),
               navBarItem(
              context: context,
              navIcon:  Icon(Icons.card_giftcard,color:pageIndex == 2 ? Colors.white : Colors.black.withOpacity(0.2)),
              navTitle: "Cart",
              onTap: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              index: 2),
               navBarItem(
              context: context,
              navIcon:  Icon(Icons.favorite,color:pageIndex == 3 ? Colors.white : Colors.black.withOpacity(0.2)),
              navTitle: "Wishlist",
              onTap: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              index: 3),
               navBarItem(
              context: context,
              navIcon:  Icon(Icons.man,color:pageIndex == 4 ? Colors.white : Colors.black.withOpacity(0.2)),
              navTitle: "Profile",
              onTap: () {
                setState(() {
                  pageIndex = 4;
                });
              },
              index: 4),
          ],
      ),
    );
  }
  Widget navBarItem(
      {required BuildContext context,
      required Widget navIcon,
      required String navTitle,
      Function()? onTap,
      required int index}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 13,horizontal:10),
        decoration: BoxDecoration(
            color: pageIndex == index ? Colors.green.withOpacity(0.2) : Colors.transparent,
            borderRadius: BorderRadius.circular(50)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            navIcon,
            // const SizedBox(height: 10),
           pageIndex==index? Padding(
             padding: const EdgeInsets.only(left: 5),
             child: Text(
                navTitle,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: pageIndex == index ? FontWeight.w600 :FontWeight.w400,
                    color:Colors.white),
              ),
           ):const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
