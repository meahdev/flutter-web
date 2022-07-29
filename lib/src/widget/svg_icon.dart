import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/provider/theme/bloc/bloc/theme_mode_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  final String icon;
  const SvgIcon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeModeBloc, ThemeModeState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          success: (themeMode) => SvgPicture.asset(
            icon,
            color: themeMode ? ColorConst.white : ColorConst.black,
            width: 20,
            height: 20,
          ),
        );
      },
    );
  }
}
