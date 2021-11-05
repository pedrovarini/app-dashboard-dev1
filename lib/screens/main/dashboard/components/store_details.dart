import 'package:flutter/material.dart';

import '../../../../constants.dart';
import 'chart.dart';
import 'store_info_card.dart';

class StoreDetails extends StatelessWidget {
  const StoreDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Store Details',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          SizedBox(height: 10),
          StoreInfoCard(
            svgSrc: "icons/Documents.svg",
            title: 'Documents Files',
            amountOfFiles: '1.3GB',
            numOfFiles: 1328,
          ),
          StoreInfoCard(
            svgSrc: "icons/media.svg",
            title: 'Media Files',
            amountOfFiles: '15.3GB',
            numOfFiles: 1328,
          ),
          StoreInfoCard(
            svgSrc: "icons/folder.svg",
            title: 'Other Files',
            amountOfFiles: '1.3GB',
            numOfFiles: 1328,
          ),
          StoreInfoCard(
            svgSrc: "icons/unknown.svg",
            title: 'Unknown',
            amountOfFiles: '1.3GB',
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
