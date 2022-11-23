part of 'post_bloc.dart';

@immutable
abstract class PostEvent {}

class LoadPostEvent extends PostEvent {
  @override
  List<Object?> get props => [];
}
