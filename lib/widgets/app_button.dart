import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Widget tombol reusable
class AppButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final String url;
  final double height;
  final double borderRadius;

  const AppButton({
    super.key,
    required this.label,
    required this.icon,
    required this.url,
    required this.height,
    required this.borderRadius,
  });

  // Fungsi untuk membuka URL di browser eksternal
  Future<void> _launchURL() async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint('Gagal membuka $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: _launchURL,
        icon: Icon(icon),
        label: Text(label),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
