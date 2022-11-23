import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../api/post_api.dart';
import '../models/models/post_model.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostApi _postApi;

  PostBloc(this._postApi) : super(PostLoadingState()) {
    on<LoadPostEvent>((event, emit) async {
      emit(PostLoadingState());
      try {
        final posts = await _postApi.getPosts();
        emit(PostLoadedState(posts));
      } catch (e) {
        emit(PostErrorState(e.toString()));
      }
    });
  }
}
