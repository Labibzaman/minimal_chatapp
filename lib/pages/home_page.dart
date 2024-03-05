import 'package:flutter/material.dart';
import 'package:schatapp/components/user_tile.dart';
import 'package:schatapp/services/auth/auth_service.dart';
import 'package:schatapp/services/chat_services/chat_service.dart';

import '../components/my_made_drawer.dart';
import 'chat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ChatServices _chatServices = ChatServices();
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .primary,
        centerTitle: true,
        title: const Text(
          'HOME ',
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
      body: _builUserList(),
      drawer: const MyDrawer(),
    );
  }

  Widget _builUserList() {
    return StreamBuilder(
        stream: _chatServices.getUserStream(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text('Error Data');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text('Loading...');
          }

          return ListView(
            children: snapshot.data!
                .map<Widget>((userData) => _buildUserListitem(context,userData))
                .toList(),
          );
        });
  }

  Widget _buildUserListitem(BuildContext context,
      Map<String, dynamic> userData) {
    return UserTile(
      text: userData['email'],
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const ChatPage();
        }));
      },
    );
  }
}
