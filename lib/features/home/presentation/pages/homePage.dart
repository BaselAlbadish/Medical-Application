import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mdcin_ca/configure_di.dart';
import 'package:mdcin_ca/core/presentation/routes/routes.dart';
import 'package:mdcin_ca/core/presentation/screens/welcoming_screen.dart';
import 'package:mdcin_ca/core/presentation/widgets/app_widget.dart';
import 'package:mdcin_ca/core/utility/local_datasource/local_data_source.dart';
import 'package:mdcin_ca/features/auth/core/presentation/landing_page.dart';
import 'package:mdcin_ca/features/auth/signin/data/datasources/local_datasource/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Khalo mdcin'),
            ),
            ListTile(
              title: Text('Log out'),
              onTap: () {
                getIt
                    .get<LocalDataSource>()
                    .removeValue(KEY_AUTH_TOKEN)
                    .then((value) {
                  if (value) {
                    print(value);
                    navigateToRemove(context: context, Widget: AppWidget());
                  } else {
                    print("false");
                  }
                });
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("home Page"),
      ),
    );
  }
}
