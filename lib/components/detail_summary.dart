import 'package:flutter/material.dart';
import 'package:quickdrop/const/colors.dart';
import 'package:quickdrop/helper.dart';

class DetailSummary extends StatelessWidget {
  const DetailSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Summary(
                    icon: Icons.video_collection_rounded,
                    label: 'Video',
                    total: 10)),
            SizedBox(width: 10),
            Expanded(
                child: Summary(
                    icon: Icons.audiotrack_rounded, label: 'Audio', total: 20))
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
                child: Summary(
                    icon: Icons.text_snippet_rounded,
                    label: 'Text',
                    total: 30)),
            SizedBox(width: 10),
            Expanded(
                child: Summary(
                    icon: Icons.insert_drive_file_rounded,
                    label: 'Other',
                    total: 40))
          ],
        ),
      ],
    );
  }
}

class Summary extends StatelessWidget {
  final IconData icon;
  final String label;
  final int total;

  const Summary({
    super.key,
    required this.icon,
    required this.label,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: darken(const Color(AppColors.quaternary)),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
      child: Row(
        children: [
          Icon(
            icon,
            color: lighten(Colors.black, 40),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: lighten(Colors.black, 40)),
              ),
              Text('$total ${total > 1 ? 'files' : 'file'}',
                  style: TextStyle(color: lighten(Colors.black, 40))),
            ],
          ),
        ],
      ),
    );
  }
}
