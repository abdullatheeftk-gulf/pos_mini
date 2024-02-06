import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/add_bloc.dart';
import 'package:pos_mini/models/category/category.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/add_category_screen/widget/add_category_alert_dialog.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/add_category_screen/widget/edit_category_alert_dialog.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/add_category_screen/widget/error_text_widget.dart';
import 'package:pos_mini/util/api_error/api_error.dart';

class AddCategoryScreen extends StatefulWidget {
  const AddCategoryScreen({super.key});

  @override
  State<AddCategoryScreen> createState() => _AddCategoryScreenState();
}

class _AddCategoryScreenState extends State<AddCategoryScreen> {
  List<Category> _categories = [];
  ApiError? _apiError;
  bool _showProgressbar = false;

  @override
  void initState() {
    context.read<AddBloc>().add(AddGetAllCategoriesEvent());
    super.initState();
  }

  void _showAddCategoryDialog() async {
    await showDialog(
      context: context,
      builder: (_) => const AddCategoryAlertDialog(),
    );
  }

  void _showEditCategoryDialog(Category category) async{
    await showDialog(context: context, builder: (_)=>EditCategoryAlertDialog(category: category));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddCategoryDialog();
        },
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Add Category"),
      ),
      body: BlocBuilder<AddBloc, AddState>(
        buildWhen: (prev, cur) {
          if (cur is AddCategoryAddUiBuildStates) {
            return true;
          }
          return false;
        },
        builder: (context, state) {
          if (state is AddShowCategoryAddShowProgressBarState) {
            _apiError = null;
            _showProgressbar = true;
          }
          if (state is AddGetAllCategoriesState) {
            _categories = state.categories;
            _apiError = null;
            _showProgressbar = false;
          }
          if (state is AddCategoryAddEditDeleteFailedState) {
            _apiError = state.apiError;
            _showProgressbar = false;
          }
          return LayoutBuilder(
            builder: (context, constraints) {
              final screenWidth = constraints.widthConstraints().maxWidth;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    if (_apiError != null)
                      ErrorTextWidget(apiError: _apiError!),
                    GridView.count(
                      crossAxisCount: screenWidth >= 550
                          ? (screenWidth > 900)
                              ? (screenWidth > 1200)
                                  ? (screenWidth > 1600)
                                      ? 7
                                      : 6
                                  : 5
                              : 4
                          : 2,
                      childAspectRatio: 2.2,
                      children: List.generate(
                          _categories.length,
                          (index) => Card(
                                child: Center(
                                  child: ListTile(
                                    title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                          flex: 5,
                                          child: Text(
                                            _categories[index].categoryName,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child:
                                              PopupMenuButton<PopUpMenuButton>(
                                                onSelected: (cb){
                                                  if(cb.name == PopUpMenuButton.edit.name){
                                                     _showEditCategoryDialog(_categories[index]);
                                                  }
                                                  if(cb.name == PopUpMenuButton.delete.name){
                                                    context.read<AddBloc>().add(AddDeleteACategoryEvent(category: _categories[index]));
                                                  }
                                                },
                                            itemBuilder:
                                                (BuildContext context) {
                                              return <PopupMenuEntry<
                                                  PopUpMenuButton>>[
                                                const PopupMenuItem<
                                                    PopUpMenuButton>(
                                                  value: PopUpMenuButton.edit,
                                                  child: Text(
                                                    "Edit",
                                                    style: TextStyle(
                                                        color: Colors.blue,
                                                    ),
                                                  ),
                                                ),
                                                const PopupMenuItem<
                                                    PopUpMenuButton>(
                                                  value: PopUpMenuButton.delete,
                                                  child: Text(
                                                    "Delete",
                                                    style: TextStyle(
                                                        color: Colors.red),
                                                  ),
                                                ),
                                              ];
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                    ),
                    if (_showProgressbar)
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: CircularProgressIndicator(),
                      )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

enum PopUpMenuButton { edit, delete }
