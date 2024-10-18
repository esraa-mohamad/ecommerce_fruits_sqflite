import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/color_manager.dart';
import '../../manager/details_cubit.dart';
import '../widgets/details_body.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final fruitComboId = ModalRoute.of(context)!.settings.arguments as int;
    context.read<DetailsCubit>().getFruitsDataById(fruitComboId);
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.mainOrange,
      body: DetailsBody(),
    );
  }
}
