import 'package:flutter/cupertino.dart';

import 'orange_container_image.dart';
import 'welcome_messages.dart';


class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
        child: Column(
          children: [
            OrangeContainerImage(),
          WelcomeMessages(),
          ],
    ),
    );
  }
}
