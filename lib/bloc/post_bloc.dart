import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {

  PostBloc() : super(PostLoadingState()) {
    on<LoadPostEvent>((event, emit) {
      emit(PostLoadingState());
      print('Switching from loading to loaded');
      emit(PostLoadedState());
    });
  }
}
