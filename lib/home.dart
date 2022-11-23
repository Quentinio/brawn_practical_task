import 'package:brawn_practical_task/api/post_api.dart';
import 'package:brawn_practical_task/bloc/post_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PostBloc(
          RepositoryProvider.of<PostApi>(context),
        )..add(LoadPostEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Brawn Practice Task by Quentin'),
        ),
        body: BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            if (state is PostLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is PostLoadedState) {
              return ListView.builder(
                  itemCount: state.posts.data?.children?.length,
                  itemBuilder: (_, index) {
                    var post = state.posts.data?.children?[index];
                    return Text(post!.data!.author.toString());
                  });
            }
            if (state is PostErrorState) {
              return const Center(
                child: Text('Error'),
              );
            }
            return Container();
          },
        )
      ),
    );
  }
}
