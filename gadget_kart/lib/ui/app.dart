import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../routes/app_router.dart';
import '../themes/themes.dart';
import './screens/auth/user_state.dart';
import '../data/local/local_data.dart';
class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Styles.themeData(theme.darkTheme!, context),
      home: const UserState(),
      routes:routes,
    );
  }
}
