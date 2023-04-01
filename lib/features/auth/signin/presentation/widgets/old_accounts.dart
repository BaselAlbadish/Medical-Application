import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/configure_di.dart';
import 'package:mdcin_ca/core/error/exceptions.dart';
import 'package:mdcin_ca/core/presentation/widgets/app_logo.dart';
import 'package:mdcin_ca/core/presentation/widgets/customText.dart';
import 'package:mdcin_ca/core/themes/light_theme.dart';
import 'package:mdcin_ca/core/utility/local_datasource/local_data_source.dart';
import 'package:mdcin_ca/features/auth/signin/data/datasources/local_datasource/constants.dart';
import 'package:mdcin_ca/features/auth/signin/domain/entities/user_model.dart';
import 'package:mdcin_ca/features/auth/signin/presentation/bloc/signin_bloc.dart';

class OldAccountwidget extends StatefulWidget {
  OldAccountwidget() : super();

  @override
  State<OldAccountwidget> createState() => _OldAccountwidgetState();
}

class _OldAccountwidgetState extends State<OldAccountwidget> {
  var allAccounts = List.empty();
  var listAccount = [];

  @override
  void initState() {
    super.initState();
    // getAllAccounts();
  }

  // getAllAccounts() async {
  //   await context.read<SignInBloc>().SignInAfterRememberMy();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignInBloc>(
      create: (BuildContext context) => getIt<SignInBloc>(),
      child: BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: SafeArea(
                child: Column(
                  children: [
                    const AppLogo(),
                    SizedBox(
                      height: 32.8.h,
                    ),
                    CustomText(
                      text: "Welcome Back",
                      alignment: Alignment.center,
                      color: kSecondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 258.w,
                      child: CustomText(
                        text:
                            "Don't miss your next opportunity. Sign in to stay updated on your professional world.",
                        alignment: Alignment.center,
                        color: kSecondaryColor,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 32.8.h,
                    ),
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxHeight: double.infinity,
                            ),
                            // child: FutureBuilder<List<UserModel>>(
                            //   future: context
                            //       .read<SignInBloc>()
                            //       .getAllAccountFromId(),
                            //   builder: (context, snapshot) {
                            //     if (snapshot.connectionState ==
                            //         ConnectionState.waiting) {
                            //       return const CircularProgressIndicator();
                            //     } else {
                            //       if (snapshot.hasData) {
                            //         return ListView.builder(
                            //           physics:
                            //               const NeverScrollableScrollPhysics(),
                            //           shrinkWrap: true,
                            //           itemCount: listAccount.length,
                            //           itemBuilder: (context, index) => account(
                            //             name: snapshot.data![index].username,
                            //             password: snapshot.data![index].password,
                            //           ),
                            //         );
                            //       } else {
                            //         throw ServerException(400, "error");
                            //       }
                            //     }
                            //   },
                            // ),
                          ),
                          anotherAccount()
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32.8.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: "New to Mdcin ? ",
                          alignment: Alignment.center,
                        ),
                        CustomText(
                          text: "Join now",
                          alignment: Alignment.center,
                          color: Colors.blue,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget account({
    required String name,
    required String password,
    String image = "",
  }) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://icons.iconarchive.com/icons/icons-land/medical/128/People-Doctor-Male-icon.png")),
              SizedBox(
                width: 12.6.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: name,
                    alignment: Alignment.center,
                    color: kSecondaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                  CustomText(
                    text: password,
                    alignment: Alignment.center,
                    color: kAlternativeColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ],
              )
            ],
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Text("Delete"),
                value: 1,
              ),
            ],
          )
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 12.w),
      padding: EdgeInsets.symmetric(
        horizontal: 17.2.h,
        vertical: 11.w,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget anotherAccount() {
    return Container(
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.black12,
            child: Icon(
              Icons.person_outline_rounded,
              color: Colors.blue,
            ),
          ),
          SizedBox(
            width: 12.6.w,
          ),
          CustomText(
            text: "Sign in another account",
            alignment: Alignment.centerLeft,
            fontSize: 14,
          )
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 12.w),
      padding: EdgeInsets.symmetric(
        horizontal: 17.2.h,
        vertical: 11.w,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
      ),
    );
  }
}
