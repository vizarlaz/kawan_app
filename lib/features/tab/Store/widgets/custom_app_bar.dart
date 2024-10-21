import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.storefront_outlined),
        onPressed: () {},
      ),
      title: Row(
        children: [
          Expanded(
            child: Text(
              'UMKM',
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      actions: [
        Icon(Icons.favorite_border),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.more_vert)
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
