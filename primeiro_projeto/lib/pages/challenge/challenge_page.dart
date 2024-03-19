import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/challenge/widgets/avatar_widget.dart';

class ChallengePage extends StatelessWidget {
  static const routeName = '/challenge';

  const ChallengePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).viewPadding.top),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/800px-Instagram_logo.svg.png',
                  width: 120,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.add_box_outlined,
                      size: 32,
                    ),
                    SizedBox(width: 16),
                    Icon(
                      Icons.favorite_border_rounded,
                      size: 32,
                    ),
                    SizedBox(width: 16),
                    Icon(
                      Icons.maps_ugc_rounded,
                      size: 32,
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 86,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (_, __) => const AvatarWidget(),
              separatorBuilder: (_, __) => const SizedBox(width: 14),
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'username',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.more_horiz_rounded,
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Divider(height: 0),
          Image.network(
            'https://github.com/LMThomaz.png',
          ),
          const Divider(height: 0),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border_rounded,
                      size: 32,
                    ),
                    SizedBox(width: 24),
                    Icon(
                      Icons.mode_comment_outlined,
                      size: 32,
                    ),
                    SizedBox(width: 24),
                    Icon(
                      Icons.send_rounded,
                      size: 32,
                    ),
                  ],
                ),
                Icon(
                  Icons.bookmark,
                  size: 32,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
