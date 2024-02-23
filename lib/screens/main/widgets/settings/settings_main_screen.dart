import 'package:flutter/material.dart';
import 'package:pos_mini/screens/main/widgets/settings/child/admin_Text_buttons.dart';

class SettingsMainScreen extends StatefulWidget {
  final bool isAdminLogin;
  const SettingsMainScreen({super.key, required this.isAdminLogin});

  @override
  State<SettingsMainScreen> createState() => _SettingsMainScreenState();
}

class _SettingsMainScreenState extends State<SettingsMainScreen> {

  bool _isAdminLogin = false;

  @override
  void initState() {
    _isAdminLogin = widget.isAdminLogin;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final screenWidth = constraints.widthConstraints().maxWidth;
            final width =(screenWidth>=900) ? 900.0 : screenWidth;
            return SizedBox(
              width: width,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      if(_isAdminLogin)
                        const AdminTextButtons(),
                      const SizedBox(height: 8,),
                      InkWell(
                        child: const Card(
                          child: ListTile(
                            title: Text("Change Base Url"),
                            titleTextStyle: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 18),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        onTap: (){},
                      ),
                      const SizedBox(height: 8,),
                      InkWell(
                        child: const Card(
                          child: ListTile(
                            title: Text("Logout"),
                            titleTextStyle: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 18),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                        onTap: (){},
                      ),

                    ],
                  ),
                ),
              ),
            );
          },
        )
      )


    );
  }
}
