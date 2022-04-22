import 'package:gadget_kart/ui/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import '../../services/firebase/auth_service.dart';
import '../screens/drawer/contant_us_screen.dart';
import '../../data/local/local_data.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
            decoration: const BoxDecoration(color: Colors.cyan),
            child: Column(
              children: [
                Flexible(
                  child: Image.asset("assets/images/logo.png"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Flexible(
                    child: Text(
                  "Gadget Kart",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      fontStyle: FontStyle.italic),
                ))
              ],
            )),
        const SizedBox(
          height: 30,
        ),
        _listTiles(
            label: "Contant US",
            function: () {
              _navigateToTaskScreen(context);
            },
            icon: Icons.contact_page),
        const Divider(
          thickness: 1,
        ),
        _listTiles(
            label: "Logout",
            function: () {
              _logout(context);
            },
            icon: Icons.logout_outlined),
        const Divider(
          thickness: 1,
        ),
        Consumer(
          builder: (context, ref, child) {
            final theme = ref.watch(themeProvider);
            return Center(
              child: ListTileSwitch(
                value: theme.darkTheme!,
                leading: const Icon(
                  Icons.nightlight_round_outlined,
                ),
                onChanged: (value) => theme.toggleTheme(),
                visualDensity: VisualDensity.comfortable,
                switchType: SwitchType.cupertino,
                switchActiveColor: Colors.indigo,
                title: const Text('Dark theme'),
              ),
            );
          },
        ),
      ],
    ));
  }

  void _navigateToTaskScreen(context) {
    Navigator.pushNamed(context, ContantUsScreen.id);
  }

  void _logout(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
           /* title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    'https://image.flaticon.com/icons/png/128/1252/1252006.png',
                    height: 20,
                    width: 20,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Sign Up",
                  ),
                ),
              ],
            ), */
            content: const Text(
              "Do you wanna Sign out?",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.canPop(context) ? Navigator.pop(context) : null;
                },
                child: const Text(
                  "Cancel",
                ),
              ),
              TextButton(
                  onPressed: () async {
                    await AuthService.signOut(context);
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  child: const Text(
                    "Yes",
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          );
        });
  }

  Widget _listTiles(
      {required String label,
      required Function function,
      required IconData icon}) {
    return ListTile(
      onTap: () {
        function();
      },
      leading: Icon(
        icon,
        color: Colors.pink.shade500,
      ),
      title: Text(
        label,
        style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
      ),
    );
  }
}
