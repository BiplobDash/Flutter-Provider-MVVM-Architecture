import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_project/model/user_model.dart';
import 'package:mvvm_project/utils/routes/routes_name.dart';
import 'package:mvvm_project/view_model/user_view_model.dart';

class SplashServices {
  Future<UserModel> getUserData() => UserViewModel().getUser();
  void checkAuthentication(BuildContext context) async {
    getUserData()
        .then((value) {
          if (value.token == null || value.token == '') {
            // ignore: use_build_context_synchronously
            Navigator.pushNamed(context, RoutesName.login);
          }else{
            // ignore: use_build_context_synchronously
            Navigator.pushNamed(context, RoutesName.home);
          }
        })
        .onError((error, stackTree) {
          if (kDebugMode) {
            print(error.toString());
          }
        });
  }
}
