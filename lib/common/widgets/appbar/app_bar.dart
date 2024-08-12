import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';

class SpotifyAppBar extends StatelessWidget {
  const SpotifyAppBar({super.key});

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: context.isDarkMode ? Colors.white : Colors.grey.shade800,
        ),
      ),
      title: SvgPicture.asset(
        AppVectors.logo,
        height: 48,
        width: 48,
      ),
      centerTitle: true,
    );
  }
}
