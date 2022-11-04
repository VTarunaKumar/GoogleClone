import 'package:flutter/material.dart';

class SearchResultComponent extends StatelessWidget {
  final String link;
  final Function()? onTap;
  const SearchResultComponent({Key? key, required this.link, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(link),
        Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: onTap,
            onHover: (hovering) {},
          ),
        )
      ],
    );
  }
}
