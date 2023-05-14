import 'package:flutter/material.dart';

class HomeViewCustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeViewCustomAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'News',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            'Cloud',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.orange),
          ),
        ],
      ),
    );
  }
}
