import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';
import 'bootstrap.dart';
import 'features/graphql_blogs/utils/ferry_service.dart';

Future<void> main() async {
  await bootstrap(
      builder: () => ProviderScope(overrides: [
            ferryClientProvider.overrideWithValue(GetIt.instance<Client>())
          ], child: MyApp()));
}
