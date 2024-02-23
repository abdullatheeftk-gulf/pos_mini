import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/settings/get_all_users/get_all_users_cubit.dart';
import 'package:pos_mini/main.dart';
import 'package:pos_mini/models/user/user.dart';
import 'package:pos_mini/screens/main/widgets/settings/child/screens/add_user_screen.dart';
import 'package:pos_mini/screens/main/widgets/settings/child/screens/update_a_user_screen.dart';
import 'package:pos_mini/screens/ui_util/pop_up_menu_button.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';

class ShowAllUsersScreen extends StatefulWidget {
  const ShowAllUsersScreen({super.key});

  @override
  State<ShowAllUsersScreen> createState() => _ShowAllUsersScreenState();
}

class _ShowAllUsersScreenState extends State<ShowAllUsersScreen>
    with RouteAware {
  bool _showProgressBar = false;
  String? _errorMessage;

  List<User> _listOfUsers = List.empty();

  @override
  void initState() {
    context.read<GetAllUsersCubit>().getAllUsers();

    super.initState();
  }

  @override
  void didChangeDependencies() {
    routeObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetAllUsersCubit, GetAllUsersState>(
      listenWhen: (prev, cur) {
        if (cur is GetAllUsersUIActionState) {
          return true;
        }
        return false;
      },
      listener: (context, state) {
        if (state is GetAllUsersApiFetchingFailedState) {
          final apiError = state.apiError;
          final errorMessage =
              "${apiError.errorCode}, ${apiError.errorMessage}, ${apiError.errorData}";
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(errorMessage),
              duration: const Duration(seconds: 3),
            ),
          );
        }
      },
      buildWhen: (prev, cur) {
        if (cur is GetAllUsersUIBuildState) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is GetAllUsersShowProgressBarState) {
          _showProgressBar = true;
          _errorMessage = null;
        }
        if (state is GetAllUsersGetUsersFailedState) {
          _showProgressBar = false;
          final apiError = state.apiError;
          _errorMessage = "${apiError.errorData}, ${apiError.errorMessage}";
        }
        if (state is GetAllUsersGetUsersSuccessState) {
          _showProgressBar = false;
          _errorMessage = null;

          // Get user list
          _listOfUsers = state.users;
        }

        // Scaffold
        return Scaffold(
          appBar: AppBar(
            title: const Text("Users"),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              _showProgressBar
                  ? const CircularProgressIndicator()
                  : const SizedBox(),
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddUserScreen()));
                },
                child: const Icon(Icons.add),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                final screenWidth = constraints.widthConstraints().maxWidth;
                final gridViewCrossAxisCount = screenWidth > 900 ? 2 : 1;
                final childAspectRatio = screenWidth > 400
                    ? (screenWidth > 600
                        ? (screenWidth > 800
                            ? (screenWidth > 900
                                ? (screenWidth > 1200
                                    ? (screenWidth > 1500)
                                        ? (screenWidth > 1700 ? 12 : 10)
                                        : 8
                                    : 6)
                                : 9)
                            : 8)
                        : 6)
                    : 5;

                return Column(
                  children: [
                    if (_errorMessage != null)
                      Text(
                        "ErrorMessage:- $_errorMessage",
                        style: const TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    Expanded(
                      child: _listOfUsers.isEmpty && !_showProgressBar
                          ?
                          // Show Empty Widget when list of users are empty
                          Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.no_accounts,
                                    size: 200,
                                    color: Colors.black26.withAlpha(70),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "No User",
                                    style: TextStyle(
                                        color: Colors.black26.withAlpha(70)),
                                  )
                                ],
                              ),
                            )
                          :

                          // Show grid view when list of users are not empty
                          GridView.count(
                              crossAxisCount: gridViewCrossAxisCount,
                              childAspectRatio: childAspectRatio.toDouble(),
                              children: List.generate(
                                _listOfUsers.length,
                                (index) {
                                  final userName =
                                      _listOfUsers[index].userName ??
                                          "No user name";
                                  final password =
                                      _listOfUsers[index].userPassword;
                                  return Card(
                                    child: ListTile(
                                        title: Text("User:- $userName"),
                                        subtitle: Text("Password:- $password"),
                                        trailing:
                                            PopupMenuButton<PopUpMenuButton>(
                                          tooltip: "",
                                          itemBuilder: (BuildContext context) {
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
                                          onSelected: (cb) {
                                            if (cb.name ==
                                                PopUpMenuButton.edit.name) {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      UpdateAUserScreen(
                                                          user: _listOfUsers[
                                                              index]),
                                                ),
                                              );
                                            }
                                            if (cb.name ==
                                                PopUpMenuButton.delete.name) {
                                              // Todo
                                            }
                                          },
                                        )),
                                  );
                                },
                              ),
                            ),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }

  @override
  void didPopNext() {
    context.read<GetAllUsersCubit>().getAllUsers();
    //printWarning("didPopNext");
  }
}
