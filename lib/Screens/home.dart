import 'package:flutter/material.dart';
import 'package:threads_clone/data/datasource/datasource_thread.dart';
import 'package:threads_clone/widgets/thread_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  'images/threads.jpg',
                  height: 35,
                ),
              ),
            ),
            SliverList(delegate: SliverChildBuilderDelegate((context, index) {
              return ThreadPage(threadRemoteDatasource().getThread()[index]);
            },
              childCount: threadRemoteDatasource().getThread().length,
            ),)
          ],
        ),
      ),
    );
  }
}
