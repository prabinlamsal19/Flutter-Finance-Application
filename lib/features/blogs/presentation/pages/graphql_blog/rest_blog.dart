import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../widgets/blog_row.dart';

final HttpLink httpLink = HttpLink(
    "https://api-us-west-2.hygraph.com/v2/cli3zhipf1sr301t7fqtq2ick/master");

final ValueNotifier<GraphQLClient> client = ValueNotifier<GraphQLClient>(
  GraphQLClient(
    link: httpLink,
    cache: GraphQLCache(),
  ),
);

const String query = """
query Content{
  posts{
    id
    title
    excerpt
    coverImage {
      url
    }
  }
}
""";

@RoutePage()
class RestBlogPage extends StatelessWidget {
  const RestBlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'GraphQL Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Scaffold(
            body: Query(
                options: QueryOptions(
                    document: gql(query),
                    variables: const <String, dynamic>{
                      "variableName": "value"
                    }),
                builder: (result, {fetchMore, refetch}) {
                  if (result.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (result.data == null) {
                    return const Center(
                      child: Text("No article found!"),
                    );
                  }
                  final posts = result.data!['posts'];
                  return ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      final post = posts[index];
                      final title = post['title'];
                      final excerpt = post['excerpt'];
                      final coverImageURL = post!['coverImage']['url'];
                      return BlogRow(
                        title: title,
                        excerpt: excerpt,
                        coverURL: coverImageURL,
                      );
                    },
                  );
                }),
          )),
    );
  }
}
