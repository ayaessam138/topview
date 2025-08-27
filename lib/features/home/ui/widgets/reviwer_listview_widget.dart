import 'package:flutter/material.dart';
import 'package:topview/core/theming/app_images.dart';
import 'package:topview/core/theming/app_spacing.dart';
import 'package:topview/core/theming/app_values.dart';
import 'package:topview/features/home/ui/widgets/reviwer_listview_item_widget.dart';
import 'package:topview/features/home/data/models/reviwer_model.dart';

class RivwiersListViewWidget extends StatefulWidget {
  const RivwiersListViewWidget({super.key});

  @override
  State<RivwiersListViewWidget> createState() => _RivwiersListViewWidgetState();
}

class _RivwiersListViewWidgetState extends State<RivwiersListViewWidget> {
  int? selectedIndex;

  final List<ReviwerModel> reviweList = [
    ReviwerModel(name: "Aya", personImage: AppImages.person, reviews: 71),
    ReviwerModel(name: "Ahmed", personImage: AppImages.person, reviews: 54),
    ReviwerModel(name: "Sara", personImage: AppImages.person, reviews: 89),
    ReviwerModel(name: "Omar", personImage: AppImages.person, reviews: 32),
    ReviwerModel(name: "Mona", personImage: AppImages.person, reviews: 120),
    ReviwerModel(name: "Khaled", personImage: AppImages.person, reviews: 45),
    ReviwerModel(name: "Laila", personImage: AppImages.person, reviews: 67),
    ReviwerModel(name: "Hassan", personImage: AppImages.person, reviews: 23),
    ReviwerModel(name: "Nora", personImage: AppImages.person, reviews: 150),
    ReviwerModel(name: "Youssef", personImage: AppImages.person, reviews: 98),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: reviweList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ReviwerListViewItemWidget(
          reviwerModel: reviweList[index],
          index: index,
          isSelected: selectedIndex == index,
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
        );
      }, separatorBuilder: (BuildContext context, int index) { return AppSpace.vertical(AppHeight.h12); },
    );
  }
}
