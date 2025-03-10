import 'package:flutter/material.dart';

class BuyPage extends StatelessWidget {
  const BuyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 80,),
          Container(
            height: 350,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: Image.asset('assets/empty_cart.jpg').image)),
          ),
          Text(
            'No Groceries',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            'Shopping for Ingredients? Write them down.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            height: 40,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 0,
            color: Theme.of(context).primaryColor,
            child: Text(
              'Browse recipes',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }
}
