import 'package:flutter/material.dart';
import 'package:fooderlich_v2/components/components.dart';
import 'package:fooderlich_v2/models/models.dart';

class FriendPostTile extends StatelessWidget {
  const FriendPostTile({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleImage(
          imageProvider: AssetImage(post.profileImageUrl),
          imageRadius: 20,
        ),
        const SizedBox(width:16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(post.comment),
              Text(
                '${post.timestamp} mins ago',
                style: const TextStyle(fontWeight:FontWeight.w700),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
