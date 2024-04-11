import 'package:flutter/material.dart';
import '/constants.dart';

class CommentsCard extends StatelessWidget {
  const CommentsCard({
    super.key,
    required this.avatar,
    required this.name,
    required this.date,
    required this.rating,
    required this.review,
  });

  final String avatar;
  final String name;
  final String date;
  final double rating;
  final String review;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding - 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1.5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          Row(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: kDefaultPadding - 10),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      avatar,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: textStyle.copyWith(fontSize: 16),
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                        color: Colors.grey, letterSpacing: -0.2),
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 3),
                child: Icon(
                  Icons.star,
                  color: Colors.amber.shade400,
                  size: 20,
                ),
              ),
              Text('${rating.toString()}/10',
                  style: textStyle.copyWith(
                    fontSize: 16,
                    letterSpacing: -0.7,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: kDefaultPadding - 10),
            child: Text(
              review,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
