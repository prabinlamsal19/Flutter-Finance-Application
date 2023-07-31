/* 
 * Copyright(c) 2023. 
 * Author:Prabin Lamsal
 */

import 'package:dio/dio.dart';

import '../../../src/core/typedefs/typedefs.dart';
import '../data/models/user_model.dart';

abstract class SignupRepository {
  EitherResponse<Response<dynamic>> signUp(UserModel user);
}
