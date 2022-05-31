import 'package:shared/shared.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

Future<void> launchUrl(String url) async{
  if (!await launcher.launchUrl(Uri.parse(url))) throw UrlLaunchFailure();
}
