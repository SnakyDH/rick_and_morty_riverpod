import 'package:flutter/material.dart';
import 'package:rick_and_morty_riverpod/core/theme/rm_colors.dart';
import 'package:rick_and_morty_riverpod/features/characters/domain/enums/character_status.dart';
import 'package:rick_and_morty_riverpod/features/characters/presentation/colors/character_status_color.dart';

class HomeCard extends StatelessWidget {
  final String name;
  final String image;
  final CharacterStatus status;
  final VoidCallback onTap;
  const HomeCard({
    super.key,
    required this.name,
    required this.image,
    required this.status,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: RmColors.secondary),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Column(
              spacing: 10,
              children: [
                Hero(
                  tag: image,
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: NetworkImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 8.0,
                  ),
                  child: Text(
                    name,
                    style: textTheme.titleSmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: RmColors.black,
                      blurRadius: 10,
                      offset: const Offset(1, 1),
                    ),
                  ],
                  shape: BoxShape.circle,
                  color: status.color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
