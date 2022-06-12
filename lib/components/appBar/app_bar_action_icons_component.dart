import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarActionIconsComponent extends StatelessWidget
    implements PreferredSizeWidget {
  final SystemUiOverlayStyle? systemUiOverlayStyle;
  final Color? backgroundColor;
  final Color? iconThemeDataColor;
  final String? title;
  final bool? centerTitle;
  final Color? foregroundColor;
  const AppBarActionIconsComponent({
    Key? key,
    this.systemUiOverlayStyle,
    this.backgroundColor,
    this.iconThemeDataColor,
    this.title,
    this.centerTitle,
    this.foregroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      systemOverlayStyle: systemUiOverlayStyle,
      iconTheme: IconThemeData(color: iconThemeDataColor),
      elevation: 0,
      title: Text(title ?? ""),
      foregroundColor: foregroundColor ?? Colors.black,
      centerTitle: centerTitle ?? true,
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
