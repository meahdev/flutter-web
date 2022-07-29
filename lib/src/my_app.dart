import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/provider/theme/bloc/bloc/theme_mode_bloc.dart';
import 'package:admin_dashboard/src/utils/hive/hive.dart';
import 'package:admin_dashboard/src/views/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    await HiveUtils.init();
    themeModeBloc.add(const ThemeModeEvent.changeTheme(null));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => themeModeBloc,
      child: BlocBuilder<ThemeModeBloc, ThemeModeState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            success: (themeMode) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeClass.themeData(themeMode, context),
                home: const Dashboard(),
              );
            },
          );
        },
      ),
    );
  }
}
