import 'package:cinemovie_app/pages/details/widgets/comment_card.dart';
import 'package:flutter/material.dart';
import '/constants.dart';
import '/repository/comments_repository.dart';

class Comments extends StatelessWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var comments = CommentsRepository().comments;
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding * 2),
      child: Column(
        children: [
          for (var i = 0; i < comments.length; i++)
            Padding(
              padding: const EdgeInsets.only(bottom: kDefaultPadding),
              child: CommentsCard(
                avatar: comments[i].picture,
                name: comments[i].name,
                date: comments[i].date,
                rating: comments[i].rating,
                review: comments[i].review,
              ),
            ),
        ],
      ),
    );
  }
}
