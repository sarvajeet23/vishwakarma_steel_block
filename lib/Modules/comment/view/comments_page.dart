import 'package:vishwakarama_steel_bloc/Modules/comment/bloc/comment_bloc.dart';
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
      body: BlocBuilder<CommentBloc, CommentState>(builder: (context, state) {
        return state.when(
            initial: () => const Text("initial state"),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (comments) => ListView.builder(
                itemCount: comments.length,
                itemBuilder: (context, index) {
                  final comment = comments[index];
                  return ListTile(
                    onTap: () {
                      // Navigate to the comment details page
                      Navigator.pushNamed(context, '/comment/${comment.id}');
                    },
                    title: Text(comment.name ?? 'No name'),
                    subtitle: Text(comment.body ?? 'No body'),
                    isThreeLine: true,
                    trailing: Text(comment.email ?? 'No email'),
                  );
                }),
            error: (message) => Text("Error::$message"));
      }),
    );
  }
}
