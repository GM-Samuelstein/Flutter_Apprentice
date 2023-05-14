import 'package:flutter/material.dart';

import '../models/models.dart';
import 'components.dart';

class FriendPostListView extends StatelessWidget {
  const FriendPostListView({
    super.key,
    required this.friendPosts,
  });

  final List<Post> friendPosts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        top: 0,
        right: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Social Chefs',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          const SizedBox(height: 16),
          ListView.separated(
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              final post = friendPosts[index];
              return FriendPostTile(post: post);
            }, 
            separatorBuilder: (context, index) {
              return const SizedBox(height:16);
            }, 
            itemCount: friendPosts.length,
            ),
          const SizedBox(height:16),
        ],
      ),
    );
  }
}
