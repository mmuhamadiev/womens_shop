import 'package:bloc/bloc.dart';

part 'bloc_state_manager_event.dart';
part 'bloc_state_manager_state.dart';

class StateManagerBloc extends Bloc<StateManagerEvent, StateManagerInitial> {
  StateManagerBloc() : super(StateManagerInitial(isChecked: false));

    void radioButtonCheck(bool isChecked) {
      state.isChecked = isChecked;
      emit(StateManagerInitial(isChecked: state.isChecked));
    }

  @override
  Stream<StateManagerInitial> mapEventToState(StateManagerEvent event, bool isChecked) async* {
    switch(event) {
      case StateManagerEvent.checkRadioButton:
        state.isChecked = isChecked;
        yield StateManagerInitial(isChecked: state.isChecked);
        break;
    }
    throw UnimplementedError();

  }

}
