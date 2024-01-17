import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pos_mini/models/admin_response/admin_response.dart';
import 'package:pos_mini/models/admin_user/admin_user.dart';
import 'package:pos_mini/models/category/category.dart';
import 'package:pos_mini/models/product/product.dart';
import 'package:pos_mini/models/user/user.dart';
import 'package:pos_mini/models/user_response/user_response.dart';
import 'package:pos_mini/util/api_error.dart';
import 'package:pos_mini/util/constants.dart';

import '../../main.dart';
part 'splash_repository_mixin.dart';
part 'login_repository_mixin.dart';
part 'take_away_repository_mixin.dart';
class ApiRepository with SplashRepositoryMixin,LoginRepositoryMixin,TakeAwayRepositoryMixin {
  

}
