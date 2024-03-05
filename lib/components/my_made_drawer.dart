import 'package:flutter/material.dart';
import '../pages/setting_page.dart';
import '../services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    AuthService authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(

            children: [
              const DrawerHeader(
                child: Icon(
                  Icons.message,
                  size: 64,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:30.0),
                child: ListTile(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  leading: const Icon(Icons.home),
                  title: const Text('H O M E'),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left:30.0),
                child: ListTile(
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const SettingPage();
                    }));
                  },
                  leading: const Icon(Icons.settings),
                  title: const Text('S E TT I N GS'),
                ),
              ),
            ],
          ),
           Padding(
            padding: const EdgeInsets.only(left:30.0,bottom: 25),
            child: ListTile(
              onTap:logout,
              leading: const Icon(Icons.login),
              title: const Text('LOG OUT'),
            ),
          ),
        ],
      ),
    );
  }
}
