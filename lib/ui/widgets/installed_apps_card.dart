import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:revanced_manager/ui/widgets/application_item.dart';

class InstalledAppsCard extends StatelessWidget {
  final Color? color;
  const InstalledAppsCard({
    Key? key,
    this.color = const Color(0xff1B222B),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          I18nText(
            'installedAppsCard.widgetTitle',
            child: Text(
              '',
              style: GoogleFonts.inter(
                fontSize: 16,
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ApplicationItem(
            asset: 'assets/images/revanced.svg',
            name: 'ReVanced',
            releaseDate: '2 days ago',
            onPressed: () => {},
          ),
          I18nText(
            'installedAppsCard.changelogLabel',
            child: Text(
              '',
              style: GoogleFonts.roboto(
                color: Theme.of(context).colorScheme.tertiary,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'fix: we made the player even worse (you love)',
            style: GoogleFonts.roboto(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'chore: guhhughghu',
            style: GoogleFonts.roboto(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
        ],
      ),
    );
  }
}