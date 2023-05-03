import 'package:city_problems/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class DangerContainer extends StatelessWidget {
  const DangerContainer({super.key, required this.builder});

  final ViewModelBuilder<DangerState?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DangerState?>(
      converter: (Store<AppState> store) {
        return store.state.danger;
      },
      builder: builder,
    );
  }
}
