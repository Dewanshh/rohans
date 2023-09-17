import 'package:flutter/material.dart';
import 'package:rohans/styles.dart';

class DrawerCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() onPressed;
  const DrawerCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: title == "Home"
                    ? HomeVacationColors.teal.withOpacity(0.12)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(22),
              ),
              padding: const EdgeInsets.symmetric(
                  horizontal: HomeVacationInsets.md,
                  vertical: HomeVacationInsets.xs + 4),
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: title == "Home"
                        ? HomeVacationColors.teal
                        : HomeVacationColors.purpleLight,
                    weight: 20,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    title,
                    style: HomeVacationTextStyle.bodyMedium.copyWith(
                        color: title == "Home"
                            ? HomeVacationColors.teal
                            : HomeVacationColors.purpleLight,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShortlistDrawerCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() onPressed;
  const ShortlistDrawerCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: HomeVacationInsets.sm),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
              ),
              padding: const EdgeInsets.symmetric(
                  horizontal: HomeVacationInsets.md,
                  vertical: HomeVacationInsets.xs + 4),
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: HomeVacationColors.purpleLight,
                    weight: 20,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    title,
                    style: HomeVacationTextStyle.bodyMedium.copyWith(
                        color: HomeVacationColors.purpleLight,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.teal.withOpacity(0.12),
                        borderRadius: BorderRadius.circular(39)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: HomeVacationInsets.xxs + 2,
                        vertical: HomeVacationInsets.xxs / 2),
                    child: Text(
                      "12",
                      style: HomeVacationTextStyle.bodySmall.copyWith(
                          color: HomeVacationColors.teal,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
