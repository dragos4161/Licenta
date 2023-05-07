import 'package:city_problems/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class LocationContainer extends StatelessWidget {
  const LocationContainer({super.key, required this.builder});

  final ViewModelBuilder<CurrentLocation?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, CurrentLocation?>(
      converter: (Store<AppState> store) {
        return store.state.userLocation;
      },
      builder: builder,
    );
  }
}
