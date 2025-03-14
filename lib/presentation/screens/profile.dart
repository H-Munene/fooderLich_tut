import 'package:flutter/material.dart';
import 'package:fooder_lich/core/widgets/nested/profile_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileCard(
        user: 'Mike Katz',
        specialty: 'Smoothie Connoisseur',
        type: 'Recipe',
        item: 'Smoothie');
  }
}
