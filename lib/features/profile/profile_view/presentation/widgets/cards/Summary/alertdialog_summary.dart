import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/blocs/Summary/summary_bloc.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/constants.dart';
import '../../../../../../../configure_di.dart';
import '../../../../../../../core/presentation/core_constants.dart';
import '../../../../../../../core/presentation/responsive_logic/logic.dart';

class SummaryDialog extends StatelessWidget {
  SummaryDialog({required this.context, Key? key}) : super(key: key);
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SummaryBloc>(),
      child: AlertDialog(
        title: Center(
          child: Text(
            'Summary',
            style: TextStyle(color: KMediumBlue, fontSize: 25.sp, fontWeight: FontWeight.bold),
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        content: SizedBox(
          height: getScreenHeight(context) - 300.h,
          width: getScreenWidth(context),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: getScreenWidth(context),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black26, width: 2.0),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: BlocBuilder<SummaryBloc, SummaryState>(
                          builder: (context, state) {
                            return TextFormField(
                              initialValue: state.userSummary.value,
                              maxLines: 50,
                              minLines: 1,
                              style: TextStyle(fontSize: 18.sp),
                              decoration: const InputDecoration(
                                fillColor: Colors.white,
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.multiline,
                              onChanged: (value) {
                                context.read<SummaryBloc>().add(EditSummary(UserSummary(value: value)));
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 30.h, top: 50.h),
                      child: Center(
                        child: Container(
                          height: alertButtonHeight.h,
                          width: alertButtonWidth.w,
                          decoration: const BoxDecoration(
                            color: KNewBlue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(40.0),
                            ),
                          ),
                          child: BlocBuilder<SummaryBloc, SummaryState>(
                            builder: (context, state) {
                              return TextButton(
                                onPressed: () {
                                  context.read<SummaryBloc>().add(SaveEvent(UserSummary(value: state.userSummary.value)));
                                  Navigator.pop(context, state.userSummary.value);
                                },
                                child: Center(
                                  child: Text(
                                    "Save",
                                    style: TextStyle(fontSize: 20.sp, color: Colors.white),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
