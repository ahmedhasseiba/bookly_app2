import 'package:bookly_app2/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.amber, size: 14),
        SizedBox(width: 7),
        Text('4.9', style: Styles.textStyle16),
        SizedBox(width: 5),
        Opacity(opacity: .5, child: Text('8888', style: Styles.textStyle14)),
      ],
    );
  }
}
