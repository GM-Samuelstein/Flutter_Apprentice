import 'package:flutter/material.dart';
import 'package:fooderlich_v2/fooderlich_theme.dart';
import 'package:fooderlich_v2/components/components.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard({
    super.key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  });

  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  @override
  State<AuthorCard> createState() => AuthorCardState();
}

class AuthorCardState extends State<AuthorCard> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: widget.imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.authorName,
                    style: FooderlichTheme.lightTextTheme.displayMedium,
                  ),
                  Text(
                    widget.title,
                    style: FooderlichTheme.lightTextTheme.displaySmall,
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _isFavorited = !_isFavorited;
              });
            },
            icon: Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
            iconSize: 30,
            color: Colors.red[400],
          ),
        ],
      ),
    );
  }
}
