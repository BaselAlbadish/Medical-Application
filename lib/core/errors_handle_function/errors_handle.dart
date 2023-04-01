import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:flutter/material.dart';
import '../presentation/responsive_logic/logic.dart';

handleError(BuildContext context, Failure? failure) {
  if (failure is NetworkFailure) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Container(
        color: Colors.white24,
        height: getScreenHeight(context) - 400.h,
        width: getScreenWidth(context) - 100.w,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                failure.statusCode.toString(),
                style: TextStyle(color: Colors.red, fontSize: 30.sp),
              ),
              Text(
                failure.message.toString(),
                style: TextStyle(color: Colors.black, fontSize: 20.sp),
              ),
            ],
          ),
        ),
      ),
    );
  } else if (failure is CacheFailure) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Container(
        color: Colors.white24,
        height: getScreenHeight(context) - 400.h,
        width: getScreenWidth(context) - 100.w,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "some thing wrong ",
                style: TextStyle(color: Colors.red, fontSize: 30.sp),
              ),
              Text(
                "in your local storage",
                style: TextStyle(color: Colors.red, fontSize: 30.sp),
              ),
            ],
          ),
        ),
      ),
    );
  } else {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Container(
        color: Colors.white24,
        height: getScreenHeight(context) - 400.h,
        width: getScreenWidth(context) - 100.w,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Unknown Error",
                style: TextStyle(color: Colors.red, fontSize: 30.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// abstract class UseCase<T, E> {
//   Future<Either<Failure, T>> call(E params);
// }
//
// class NoParams {}
