import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:flutter/material.dart';
import 'package:pos_mini/models/admin_response/admin_response.dart';
import 'package:pos_mini/models/admin_user/admin_user.dart';
import 'package:pos_mini/models/barcode/barcode.dart';
import 'package:pos_mini/models/category/category.dart';
import 'package:pos_mini/models/dine_in/area/dine_in_area.dart';
import 'package:pos_mini/models/dine_in/dine_in_kot/dine_in_kot.dart';
import 'package:pos_mini/models/dine_in/table/dine_in_table.dart';
import 'package:pos_mini/models/food_item/food_item.dart';

import 'package:pos_mini/models/tran_response/tran_response.dart';
import 'package:pos_mini/models/user/user.dart';
import 'package:pos_mini/models/user_response/user_response.dart';



import 'package:pos_mini/util/api_error/api_error.dart';
import 'package:pos_mini/util/constants.dart';

import 'package:http/http.dart' as http;
import 'package:pos_mini/util/log_functions/log_functions.dart';

import '../../main.dart';

part 'splash_repository_mixin.dart';

part 'login_repository_mixin.dart';

part 'take_away_repository_mixin.dart';

part 'category_repository.dart';

part 'product_repository.dart';

part 'settings_repository.dart';

part 'dine_area_repository.dart';

part 'dine_table_repository.dart';

part 'barcode_repository.dart';

part 'dine_table_display_screen_mixin.dart';


class ApiRepository
    with
        SplashRepositoryMixin,
        LoginRepositoryMixin,
        TakeAwayRepositoryMixin,
        CategoryRepository,
        ProductRepository,
        SettingsRepository,
        DineAreaRepository,
        DineTableRepository,
        BarcodeRepository,
        DineTableDisplayScreenMixin   
{}
