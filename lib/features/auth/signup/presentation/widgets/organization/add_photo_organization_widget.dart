import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../../configure_di.dart';
import '../../../../../../core/presentation/responsive_logic/logic.dart';
import '../../../../../../core/presentation/routes/routes.dart';
import '../../../../../../core/presentation/widgets/app_logo.dart';
import '../../../../../../core/presentation/widgets/customText.dart';
import '../../../../../../core/themes/light_theme.dart';
import '../../../../forgotPassword/presentation/widgets/customShowSnackBar.dart';
import '../../../domain/repositories/organization_repository.dart';
import '../../blocs/organization/organization_bloc.dart';
import '../core/cusom_button.dart';
import '../core/custom_sizeBox.dart';
import 'indivadualFollow.dart';

class SignUpOrganizationAddPhoto extends StatefulWidget {
  BuildContext context;
  SignUpOrganizationAddPhoto(this.context, {Key? key}) : super(key: key);

  @override
  State<SignUpOrganizationAddPhoto> createState() =>
      _SignUpOrganizationAddPhotoState();
}

class _SignUpOrganizationAddPhotoState
    extends State<SignUpOrganizationAddPhoto> {
  File? image;
  final imagePicker = ImagePicker();
  bool isLoading = false;

  uploadImageGallery() {
    imagePicker.pickImage(source: ImageSource.gallery).then((valued) {
      if (valued != null) {
        valued.length().then((value) {
          if (value < 10000) {
            setState(() {
              image = File(valued.path);
            });
          } else {
            CustomShowSnakBar(
                context: context, text: "The image size is large");
          }
        });
      } else {}
    });
  }

  uploadImageCamera() {
    imagePicker.pickImage(source: ImageSource.camera).then((valued) {
      if (valued != null) {
        valued.length().then((value) {
          if (value < 10000) {
            setState(() {
              image = File(valued.path);
            });
          } else {
            CustomShowSnakBar(
                context: context, text: "The image size is large");
          }
        });
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    var _bloc = context.read<OrganizationBloc>();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            children: [
              const AppLogo(),
              CustomSizeBox(
                height: 41.8,
              ),
              CustomText(
                text: "Create a free Mdcin account",
                alignment: Alignment.center,
                color: kSecondaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              CustomSizeBox(
                height: 7,
              ),
              CustomText(
                text: "Adding a photo helps people recognize you ",
                alignment: Alignment.center,
                color: kSecondaryColor,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
              CustomSizeBox(
                height: 78,
              ),
              Stack(
                alignment: Alignment.topCenter,
                textDirection: TextDirection.rtl,
                fit: StackFit.loose,
                overflow: Overflow.visible,
                clipBehavior: Clip.hardEdge,
                children: [
                  Container(
                    height: 193.h,
                    width: 286.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset:
                              const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80.h,
                        ),
                        CustomText(
                          text: _bloc.state.organizationName,
                          fontSize: 30,
                          color: kSecondaryColor,
                          fontWeight: FontWeight.w500,
                          alignment: Alignment.center,
                        ),
                        CustomSizeBox(
                          height: 7,
                        ),
                        CustomText(
                          text: _bloc.state.organizationBusiness!.name,
                          color: kPrimaryColor,
                          fontSize: 18,
                          alignment: Alignment.center,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -40.0.h,
                    child: Container(
                      width: 75.0.w,
                      height: 75.0.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 3,
                          color: kSecondaryColor,
                          style: BorderStyle.solid,
                        ),
                        image: DecorationImage(
                          image: image != null
                              ? FileImage(image!)
                              : const NetworkImage(
                                      "https://images-na.ssl-images-amazon.com/images/I/51UW1849rJL.__AC_SX300_SY300_QL70_FMwebp_.jpg")
                                  as ImageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: GestureDetector(
                        child: image != null ? SizedBox() : Icon(Icons.add),
                        onTap: () {
                          ShowDialog();
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    width: 270.w,
                    bottom: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Column(
                            children: [
                              const Icon(
                                Icons.edit,
                                color: kSecondaryColor,
                              ),
                              CustomText(
                                text: "Edit",
                                color: kSecondaryColor,
                              ),
                            ],
                          ),
                          onTap: () {
                            ShowDialog();
                          },
                        ),
                        InkWell(
                          child: Column(
                            children: [
                              const Icon(
                                Icons.delete,
                                color: kSecondaryColor,
                              ),
                              CustomText(
                                text: "Delete",
                                color: kSecondaryColor,
                              ),
                            ],
                          ),
                          onTap: () {
                            setState(() {
                              image = null;
                            });
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
              CustomSizeBox(
                height: 100,
              ),
              GestureDetector(
                child: Center(
                  child: isLoading
                      ? const CircularProgressIndicator()
                      : CustomButton(
                          context: context,
                          text: 'Next',
                          isActive: true,
                        ),
                ),
                onTap: () async {
                  if (image != null) {
                    setState(() {
                      isLoading = true;
                    });
                    await getIt
                        .get<OrganizationRepository>()
                        .uploadImageFile(image!)
                        .then((value) {
                      setState(() {
                        isLoading = false;
                      });
                      value.fold(
                        (l) => CustomShowSnakBar(
                          context: context,
                          text: l.toString(),
                        ),
                        (r) => CustomShowSnakBar(
                          context: context,
                          text: r.toString(),
                        ),
                      );
                    });
                  } else {
                    CustomShowSnakBar(
                      context: context,
                      text: "Please Add Photo",
                    );
                  }
                },
              ),
              CustomSizeBox(),
              !isLoading
                  ? InkWell(
                      child: CustomText(
                        text: "Skip",
                        alignment: Alignment.center,
                        fontSize: 18,
                        color: kAlternativeColor,
                      ),
                      onTap: () {
                        navigateToRemove(
                          context: context,
                          Widget: const IndividualFollow(),
                        );
                      },
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }

  Future ShowDialog() {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actions: [
            SizedBox(
              height: getScreenHeight(context) / 7,
              width: getScreenWidth(context),
              child: ListView(
                children: [
                  InkWell(
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text("Camera"), Icon(Icons.camera)],
                      ),
                    ),
                    onTap: () {
                      Future.value(
                        uploadImageCamera(),
                      ).then(
                        (value) {
                          Navigator.pop(context);
                        },
                      );
                    },
                  ),
                  InkWell(
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Gallary"),
                          Icon(Icons.phone_android)
                        ],
                      ),
                    ),
                    onTap: () {
                      Future.value(
                        uploadImageGallery(),
                      ).then(
                        (value) {
                          Navigator.pop(context);
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
