import 'package:adaptive_admin_dashboard/models/all_expenses_item_model.dart';
import 'package:adaptive_admin_dashboard/utils/app_images.dart';
import 'package:adaptive_admin_dashboard/widgets/home_widgets/all_expenses_widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItemBuilder extends StatefulWidget {
  const AllExpensesItemBuilder({super.key});

  @override
  State<AllExpensesItemBuilder> createState() => _AllExpensesItemBuilderState();
}

class _AllExpensesItemBuilderState extends State<AllExpensesItemBuilder> {
  final List<AllExpensesItemModel> items = [
    const AllExpensesItemModel(
        itemIcon: AppImages.imagesBalance,
        itemText: 'Balance',
        itemDate: 'April 2022',
        itemMoney: 20.129),
    const AllExpensesItemModel(
        itemIcon: AppImages.imagesIncome,
        itemText: 'Income',
        itemDate: 'April 2022',
        itemMoney: 20.129),
    const AllExpensesItemModel(
        itemIcon: AppImages.imagesExpenses,
        itemText: 'Expenses',
        itemDate: 'April 2022',
        itemMoney: 20.129),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: List.generate(
        items.length,
        (index) => Expanded(
          child: GestureDetector(
            onTap: () {
              setState(
                () {
                  activeIndex = index;
                },
              );
            },
            child: AllExpensesItem(
              model: items[index],
              isActive: activeIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
