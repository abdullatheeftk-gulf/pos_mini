import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/add_bloc.dart';
import 'package:pos_mini/models/product/product.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/add_category_screen/add_category_screen.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/edit_or_delete_a_product/edit_product_screen/edit_product_main_screen.dart';


class AddProductListCard extends StatelessWidget {
  final Product product;

  final int categoryId;


  const AddProductListCard({super.key, required this.product, required this.categoryId});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: ListTile(
          title: Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 5,
                child: Text(
                  product.productName,
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                flex: 1,
                child:
                PopupMenuButton<PopUpMenuButton>(
                  onSelected: (cb){
                    if(cb.name == PopUpMenuButton.edit.name){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProductMainScreen(product: product)));
                    }
                    if(cb.name == PopUpMenuButton.delete.name){
                      context.read<AddBloc>().add(DeleteAProductEvent(categoryId: categoryId,productId: product.productId));
                      //context.read<AddBloc>().add(AddDeleteACategoryEvent(category: _categories[index]));
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
    );
  }
}
