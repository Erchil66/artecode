import 'package:arte/constant/colors.dart';
import 'package:arte/constant/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppbarDash extends StatelessWidget implements PreferredSizeWidget {
  final String? urlimage;
  final Function()? bellFunction;
  final Function()? cartFunction;

  const AppbarDash(
      {super.key, this.urlimage, this.bellFunction, this.cartFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SizedBox(
        width: 325,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(900),
                  child: Container(
                    height: 56,
                    width: 56,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: colorWhite,
                    ),
                    child: urlimage == ""
                        ? Padding(
                            padding: const EdgeInsets.all(6),
                            child: Image.asset(logoshop),
                          )
                        : Image.network(
                            urlimage!,
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: bellFunction,
              child: SvgPicture.asset(bell),
            ),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: cartFunction,
              child: SvgPicture.asset(cart),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90);
}
