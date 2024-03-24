

import 'package:flutter_bloc/flutter_bloc.dart';

part 'area_state.dart';

class AreaCubit extends Cubit<AreaState> {
  AreaCubit() : super(AreaInitial());
}
