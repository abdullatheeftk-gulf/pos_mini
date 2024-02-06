import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/take_away/take_away_bloc.dart';

import 'package:pos_mini/models/category/category.dart';

class CategoryDisplayWidget extends StatelessWidget {
  final List<Category> categories;
  const CategoryDisplayWidget({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {

    int clickedCategory = 1;

    return BlocBuilder<TakeAwayBloc, TakeAwayState>(
      buildWhen: (prev, cur) {
      if(cur is TakeAwayOnCategoryClickedState){
          return true;
        }
        return false;
      },
      builder: (context, state) {


        if (state is TakeAwayOnCategoryClickedState) {
          clickedCategory = state.categoryId;
        }

        return LayoutBuilder(
          builder: (context, constraints) {
            final screenWidth = constraints.widthConstraints().maxWidth;

            return Card(
              elevation: 10,
              shape:
                  const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return RotatedBox(
                    quarterTurns: (screenWidth >= 120) ? 0 : 3,
                    child: screenWidth < 80
                        ? TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: (clickedCategory ==
                                      categories[index].categoryId)
                                  ? const Color.fromARGB(255, 236, 102, 56)
                                  : const Color.fromARGB(255, 0, 26, 51),
                            ),
                            onPressed: () {
                              context.read<TakeAwayBloc>().add(
                                    TakeAwayOnCategoryClickedEvent(
                                      categoryId: categories[index].categoryId,
                                    ),
                                  );
                            },
                            child: Text(
                              categories[index].categoryName,
                              style: TextStyle(
                                  fontSize: screenWidth >= 80 ? 16 : 14),
                            ),
                          )
                        : Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextButton(
                                style: TextButton.styleFrom(
                                    foregroundColor: (clickedCategory ==
                                            categories[index].categoryId)
                                        ? const Color.fromARGB(255, 236, 102, 56)
                                        : const Color.fromARGB(255, 0, 26, 51)),
                                onPressed: () {
                                  context.read<TakeAwayBloc>().add(
                                        TakeAwayOnCategoryClickedEvent(
                                          categoryId:
                                              categories[index].categoryId,
                                        ),
                                      );
                                },
                                child: Text(
                                  categories[index].categoryName,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: screenWidth >= 80 ? 16 : 14,
                                  ),
                                ),
                              ),
                              if (index == categories.length - 1 &&
                                  screenWidth >= 120)
                                const Divider(
                                  color: Colors.brown,
                                )
                            ],
                          ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Colors.brown,
                  );
                },
                itemCount: categories.length,
              ),
            );
          },
        );
      },
    );
  }
}
