import 'package:flutter/material.dart';

import '../../style/produce_info/produce_info_theme.dart';



class ProduceInfoBody extends StatelessWidget {
  String produceName;
  String quantity;
  String location;
  String pickupInstructions;
  String expirationDate;
  
  ProduceInfoBody({
    Key? key,
    required this.produceName,
    required this.quantity,
    required this.location,
    required this.pickupInstructions,
    required this.expirationDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: ProduceInfoTheme.paddingLarge,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          produceName,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        ProduceInfoTheme.componentPadding,
        Text('Quantity: $quantity'),
        ProduceInfoTheme.componentPadding,
        Text('Location: $location'),
        ProduceInfoTheme.componentPadding,
        Text('Pickup Instructions: $pickupInstructions'),
        ProduceInfoTheme.componentPadding,
        if (expirationDate != null)
          Text('Pick up by: ${expirationDate}'),
        
        ProduceInfoTheme.componentPadding,
        ElevatedButton(
          onPressed: () {
            // Action to contact or reserve
          },
          child: Text('Contact Provider'),
        ),
      ],
    ));
  }
  
}
