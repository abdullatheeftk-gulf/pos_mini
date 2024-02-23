import 'package:flutter/material.dart';
import 'package:pos_mini/screens/main/widgets/settings/child/screens/add_user_screen.dart';
import 'package:pos_mini/screens/main/widgets/settings/child/screens/show_all_users_screen.dart';

class AdminTextButtons extends StatelessWidget {
  const AdminTextButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          child: const Card(
            child: ListTile(
              title: Text("Show All Users"),
              titleTextStyle: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 18),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ShowAllUsersScreen()));
          },
        ),

        const SizedBox(
          height: 8,
        ),
        InkWell(
          child: const Card(
            child: ListTile(
              title: Text("Add User"),
              titleTextStyle: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 18),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddUserScreen()));
          },
        ),
        const SizedBox(
          height: 8,
        ),
        InkWell(
          child: const Card(
            child: ListTile(
              title: Text("Reset the Admin Password"),
              titleTextStyle: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 18),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          onTap: () {
            // Todo
          },
        ),
      ],
    );
  }
}
