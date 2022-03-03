import 'package:flutter/material.dart';
import '../providers/cart.dart';
import 'package:provider/provider.dart';

class TrailingWidgetCartItem extends StatelessWidget {
  const TrailingWidgetCartItem({Key key, this.quantity, this.productId})
      : super(key: key);
  final int quantity;
  final String productId;

  void increment() {}

  @override
  Widget build(BuildContext context) {
    final kart = Provider.of<Cart>(context);
    return Row(
      children: [
        IconButton(
            onPressed: () {
              kart.increment(productId);
            },
            icon: Icon(
              Icons.add,
              color: Theme.of(context).primaryColor,
              size: 20,
            )),
        Text(
          'x$quantity',
          style: TextStyle(fontSize: 20),
        ),
        IconButton(
            onPressed: () {
              kart.decrement(productId);
            },
            icon: Icon(
              Icons.remove,
              color: Theme.of(context).primaryColor,
              size: 20,
            )),
      ],
    );
  }
}
