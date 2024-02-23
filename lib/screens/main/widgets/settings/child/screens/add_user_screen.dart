
import 'package:flutter/material.dart';
import 'package:pos_mini/screens/ui_util/hide_key_board.dart';

class AddUserScreen extends StatefulWidget {
  const AddUserScreen({super.key});

  @override
  State<AddUserScreen> createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUserScreen> {
  final _userNameController = TextEditingController();
  final _userPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _userNameController.dispose();
    _userPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add User"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final screenWidth = constraints.widthConstraints().maxWidth;
          final width = (screenWidth >= 600) ? 600.0 : screenWidth;
          return Center(
            child: SizedBox(
              height: double.infinity,
              width: width,
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      TextFormField(
                        controller: _userNameController,
                        decoration: InputDecoration(
                          label: const Text("User Name"),
                          hintText: "Enter user name (optional)",
                          hintStyle: TextStyle(
                            color: Colors.black26.withOpacity(0.3),
                          ),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: _userPasswordController,
                        decoration: InputDecoration(
                          label: const Text("User Password"),
                          hintText: "Enter user password",
                          hintStyle: TextStyle(
                            color: Colors.black26.withOpacity(0.3),
                          ),
                          border: const OutlineInputBorder(),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Enter valid password";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          hideKeyboard(context);

                          if(_formKey.currentState!.validate()){
                            // ToDo
                          }

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          foregroundColor: Colors.white
                        ),
                        child: const Text("Add"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
