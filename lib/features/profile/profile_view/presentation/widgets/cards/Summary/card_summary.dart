import 'package:flutter/foundation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/blocs/Summary/summary_bloc.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/widgets/cards/Summary/summary_more.dart';
import '../../../../../../../configure_di.dart';
import '../../../../../../../core/presentation/core_constants.dart';
import '../../../../../../../core/themes/light_theme.dart';
import '../../../../../core/utility/profile_store.dart';
import '../../../constants.dart';
import 'alertdialog_summary.dart';
import '../../my_text.dart';

class CardSummary extends StatelessWidget {
  ProfileStore store;

  CardSummary({required this.store, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String summary = "";
    return Padding(
      padding: EdgeInsets.only(top: 5.h, bottom: 5.h, left: 10.w, right: 10.w),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: BlocProvider(
            create: (context) => getIt<SummaryBloc>(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'Summary',
                      fontSize: cardTitleSize.sp,
                      fontWeight: FontWeight.bold,
                      color: KMediumBlue,
                    ),
                    BlocBuilder<SummaryBloc, SummaryState>(
                      builder: (context, state) {
                        return TextButton(
                          onPressed: () async {
                            summary = await showDialog(
                              builder: (context) => SummaryDialog(context: context),
                              context: context,
                            );
                            context.read<SummaryBloc>().add(EditSummary(UserSummary(value: summary)));
                          },
                          child: MyText(
                            text: 'Update',
                            fontSize: cardUpdateSize.sp,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: BlocBuilder<SummaryBloc, SummaryState>(
                      builder: (context, state) {
                        return MyText(
                          text: state.userSummary.value ?? "",
                          fontSize: 14.sp,
                        );
                      },
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 250.w),
                  child: BlocBuilder<SummaryBloc, SummaryState>(
                    builder: (context, state) {
                      return TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              Theme(
                                data: customLightTheme(),
                                child: SummaryMore(
                                  summary: state.userSummary.value!,
                                  store: store,
                                ),
                              );
                              return SummaryMore(
                                summary: state.userSummary.value!,
                                store: store,
                              );
                            }));
                          },
                          child: MyText(
                            text: 'more',
                            fontSize: cardMoreSize.sp,
                            color: KMediumBlue,
                            fontWeight: FontWeight.bold,
                          ));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
