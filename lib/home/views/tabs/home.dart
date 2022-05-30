import 'package:hollow_design_system/hollow_design_system.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppContainer(
      child: Center(
        child: AppText('Home'),
      ),
    );
  }
}
