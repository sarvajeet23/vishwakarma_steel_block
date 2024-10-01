import 'package:block_testing/Modules/comment/bloc/comment_bloc.dart';
import 'package:block_testing/Modules/comment/bloc/comment_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comments'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notification_add_outlined),
          )
        ],
      ),
      body: BlocBuilder<CommentsBloc, CommentsState>(
        builder: (context, state) {
          if (state is CommentsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CommentsLoaded) {
            return ListView.builder(
              itemCount: state.comments.length,
              itemBuilder: (context, index) {
                final comment = state.comments[index];
                return ListTile(
                  title: Text(comment.name ?? 'No name'),
                  subtitle: Text(comment.body ?? 'No body'),
                  isThreeLine: true,
                  trailing: Text(comment.email ?? 'No email'),
                );
              },
            );
          } else if (state is CommentsError) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return const Center(child: Text('No comments found'));
          }
        },
      ),
    );
  }
}


