import 'package:flutter/material.dart';


import '../../../../../core/theme/app_text_styles.dart';
import 'home_search.dart';
import 'home_tob_bar.dart';
import 'home_welcome_message.dart';
import 'recommended_combo_list_view.dart';
import 'type_combo_list_view.dart';

class HomeEcommerceBody extends StatelessWidget {
  const HomeEcommerceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeTobBar(),
            SizedBox(
              height: 24,
            ),
            HomeWelcomeMessage(),
            SizedBox(
              height: 24,
            ),
            HomeSearch(),
            SizedBox(
              height: 24,
            ),
            Text(
              'Recommended Combo',
              style: AppTextStyles.font24NavyBlueMedium,
            ),
            SizedBox(
              height: 24,
            ),
            RecommendedComboListView(),
            SizedBox(
              height: 42,
        
            ),
            TypeComboListView(),
            SizedBox(
              height: 20,
            ),
            RecommendedComboListView(),
          ],
        ),
      ),
    ));
  }
}
