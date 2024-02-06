import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/take_away/take_away_bloc.dart';
import 'package:pos_mini/screens/main/widgets/take_away/widgets/menu_item_display_screen/widget/category_display/category_display_widget.dart';
import 'package:pos_mini/screens/main/widgets/take_away/widgets/menu_item_display_screen/widget/menu_display/menu_display_widget.dart';
import 'package:pos_mini/screens/main/widgets/take_away/widgets/menu_item_display_screen/widget/search_product_widget/search_product_widget.dart';

class MenuItemDisplayScreen extends StatefulWidget {
  const MenuItemDisplayScreen({super.key});

  @override
  State<MenuItemDisplayScreen> createState() => _MenuItemDisplayScreenState();
}

class _MenuItemDisplayScreenState extends State<MenuItemDisplayScreen> {
  @override
  void initState() {
    context.read<TakeAwayBloc>()
      ..add(TakeAwayGetAllCategoriesEvent())..add(
        TakeAwayOnCategoryClickedEvent(categoryId: 1));
    super.initState();
  }

  void _showProductSearchDialog(double screenWidth) async {
    showDialog(
        context: context,
        builder: (context) {
          return SearchProductWidget(
            screenWidth: screenWidth,
            onSearchButtonClicked: (searchText) {
              context.read<TakeAwayBloc>().add(
                TakeAwayOnProductSearchButtonClickedEvent(
                  searchText: searchText,
                ),
              );
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final screenWidth = constraints
            .widthConstraints()
            .maxWidth;
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _showProductSearchDialog(screenWidth);
            },
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 0, 26, 51),
            child: const Icon(Icons.search),
          ),

          // need to remove stack
          body: Row(
            children: [
              SizedBox(
                width: screenWidth > 800
                    ? (screenWidth > 1200)
                    ? (screenWidth > 1600)
                    ? 160
                    : 120
                    : 80
                    : 40,
                child: BlocBuilder<TakeAwayBloc, TakeAwayState>(
                  buildWhen: (prev,cur){
                    if(cur is TakeAwayGetAllCategoriesSuccessState){
                      return true;
                    }
                    return false;
                  },
                  builder: (context, state) {

                    if(state is TakeAwayGetAllCategoriesSuccessState){
                      return  CategoryDisplayWidget(categories: state.categories,);
                    }
                    return const CategoryDisplayWidget(categories: [],);
                  },
                ),
              ),
              const Expanded(child: MenuDisplayWidget()),
            ],
          ),
        );
      },
    );
  }
}
