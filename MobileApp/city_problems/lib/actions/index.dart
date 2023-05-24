library actions;

import 'dart:io';

import 'package:city_problems/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.dart';

part 'initialize_user.dart';

part 'signup.dart';

part 'logout.dart';

part 'get_location.dart';

part 'take_picture.dart';

part 'upload_picture.dart';

part 'post_danger.dart';

part 'listen_for_dangers.dart';


part 'index.freezed.dart';

typedef ActionResponse = void Function(dynamic action);
