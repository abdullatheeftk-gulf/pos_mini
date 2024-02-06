import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/add_bloc.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/edit_or_delete_a_product/edit_or_delete_a_product.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/edit_or_delete_a_product/widget/add_product_category_display_screen.dart';

import '../add_product_screen/add_product_screen.dart';
import 'widget/search_alert_dialog.dart';

class EditOrDeleteMainScreen extends StatefulWidget {
  const EditOrDeleteMainScreen({super.key});

  @override
  State<EditOrDeleteMainScreen> createState() => _EditOrDeleteMainScreenState();
}

class _EditOrDeleteMainScreenState extends State<EditOrDeleteMainScreen> {
  @override
  void initState() {
    context.read<AddBloc>()
      ..add(AddProductGetAllCategoriesEvent())..add(
        AddProductCategoryClickedEvent(categoryId: 1, category: null));
    super.initState();
  }

  void _showSearchAlertDialog() async {
    await showDialog(
        context: context, builder: (_) => const SearchAlertDialog());
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final screenWidth = constraints
          .widthConstraints()
          .maxWidth;
      return BlocConsumer<AddBloc, AddState>(
        listener: (context, state) {
          if(state is AddNavigateToAddProductScreenState){
            final category = state.category;
            Navigator.push(context, MaterialPageRoute(builder: (context)=> AddProductScreen(incomingCategory: category,)));
          }
        },
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                title: const Text("Add Product"),
                actions: [
                  IconButton(
                    onPressed: () {
                      _showSearchAlertDialog();
                    },
                    icon: const Icon(Icons.search),
                  )
                ],
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  context.read<AddBloc>().add(
                      AddNavigateToAddProductScreenEvent());
                },
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 0, 26, 51),
                child: const Icon(Icons.add),

              ),
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
                    child: BlocBuilder<AddBloc, AddState>(
                      buildWhen: (prev, cur) {
                        if (cur is AddProductGetAllCategoriesSuccessState) {
                          return true;
                        }
                        return false;
                      },
                      builder: (context, state) {
                        if (state is AddProductGetAllCategoriesSuccessState) {
                          return AddProductCategoryDisplayScreen(
                              categories: state.categories);
                        }
                        return const AddProductCategoryDisplayScreen(
                            categories: []);
                      },
                    ),
                  ),
                  const Expanded(child: EditOrDeleteAProduct())
                ],
              ));
        },
      );
    });
  }
}
