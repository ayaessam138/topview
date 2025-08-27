
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:topview/core/theming/app_images.dart';
import 'package:topview/core/theming/app_spacing.dart';
import 'package:topview/core/theming/app_values.dart';
import 'package:topview/core/theming/colors.dart';
import 'package:topview/features/home/ui/widgets/reviwes_widget.dart';
import 'package:topview/features/home/ui/widgets/top_bloger_widget.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C100E),
      body: Stack(
        children: [
          Positioned(
            top: -56.h,
            left: -70.w,
            child: SvgPicture.asset(AppImages.background),
          ),

          Positioned.fill(
            top: 30.h,
            child: Column(
              children: [
                TabBar(
                  controller: _tabController,
                  labelColor: ColorsManager.selectedTabBarItemColor,
                  indicatorColor: ColorsManager.selectedTabBarItemColor,
                  unselectedLabelColor: ColorsManager.unSelectedTabBarItemColor,
                  tabs: const [
                    Tab(text: "Top Reviwers"),
                    Tab(text: "Top Reviewers"),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Column(
                        children: [
                          AppSpace.vertical(AppHeight.h70),
                          TopBlogersWidget(),
                          ReviwesWidget(),
                        ],
                      ),
                      Container(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

