import 'package:flutter/material.dart';

import '../../navigation/args/produce_info_args.dart';
import '../../style/produce_card/produce_card_theme.dart';


class HomeCard extends StatelessWidget {
  final String produceName;
  final String quantity;
  final String location;
  final String description;

  const HomeCard({
    required this.produceName,
    required this.quantity,
    required this.location,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, "/info", arguments: ProduceInfoArgs(
        produceName: produceName,
        quantity: quantity,
        location: location,
        description: description
      )),
      child: Card(
        color: Theme.of(context).cardColor,
        elevation: 4,
        margin: ProduceCardTheme.mainMargin,
        shape: ProduceCardTheme.borderShape,
        child: Padding(
          padding: ProduceCardTheme.padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Produce Name
              Text(
                produceName,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              ProduceCardTheme.componentPadding,
              // Quantity
              Text(
                'Quantity: $quantity',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
             ProduceCardTheme.componentPadding,
              // Location
              Row(
                children: [
                  const Icon(Icons.location_on, size: 16, color: Colors.grey),
                  ProduceCardTheme.componentPaddingSmall,
                  Text(
                    location,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              ProduceCardTheme.componentPaddingLarge,
              // Description
              Text(
                description,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey[700],
                    ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
