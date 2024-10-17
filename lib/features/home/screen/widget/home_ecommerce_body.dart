import 'package:ecommerce_fruits/features/home/screen/widget/rebuild_widgets/recommended_fruits_combo_list_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theme/app_text_styles.dart';
import 'home_search.dart';
import 'home_tob_bar.dart';
import 'rebuild_widgets/type_fruits_combo_list_bloc_builder.dart';
import 'rebuild_widgets/user_name_bloc_builder.dart';
import 'type_combo_list_view.dart';

class HomeEcommerceBody extends StatefulWidget {
  const HomeEcommerceBody({super.key});

  @override
  State<HomeEcommerceBody> createState() => _HomeEcommerceBodyState();
}

class _HomeEcommerceBodyState extends State<HomeEcommerceBody> {
  @override
  void initState() {
    //context.read<HomeCubit>().getUserName();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 10.h,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeTobBar(),
            SizedBox(
              height: 24.h,
            ),
            const UserNameBlocBuilder(),
            SizedBox(
              height: 24.h,
            ),
            const HomeSearch(),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Recommended Combo',
              style: AppTextStyles.font24NavyBlueMedium,
            ),
            SizedBox(
              height: 24.h,
            ),
            const RecommendedFruitsCombListBlocBuilder(),
            SizedBox(
              height: 42.h,
            ),
            const TypeComboListView(),
            SizedBox(
              height: 20.h,
            ),
            const TypeFruitsComboListBlocBuilder()
          ],
        ),
      ),
    ));
  }
}
