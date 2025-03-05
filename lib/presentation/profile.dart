import 'package:flutter/material.dart';
import 'package:fooder_lich/core/widgets/profile_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ProfileCard(
            user: 'Mike Katz',
            specialty: "Smoothie Connoisseur",
            type: "Recipe",
            item: "Smoothie"));
  }
}
