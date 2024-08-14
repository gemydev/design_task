import 'package:flutter/material.dart';

import '../../../core/ui/colors.dart';
import '../search_text_filed.dart';

class WebMenuBar extends StatelessWidget {
  const WebMenuBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainColor,
      child: Row(
        children: [
          Flexible(flex: 1, child: Container()),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.facebook,
                color: AppColors.white,
              )),
          const Flexible(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: SearchTextField(),
            ),
          ),
          Flexible(flex: 1, child: Container()),
          Flexible(
            flex: 3,
            child: Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              textDirection: TextDirection.rtl,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_down_outlined)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.add_alert)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.people)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.question_mark)),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Create",
                  style: TextStyle(color: AppColors.white),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Home",
                  style: TextStyle(color: AppColors.white),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Mohamed",
                  style: TextStyle(color: AppColors.white),
                ),
              ],
            ),
          ),
          Flexible(flex: 2, child: Container()),
        ],
      ),
    );
  }
}
