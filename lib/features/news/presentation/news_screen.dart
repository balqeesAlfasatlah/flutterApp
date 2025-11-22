import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/features/news/presentation/bloc/news_bloc.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewsBloc>();
    return Scaffold(
      appBar: AppBar(title: Text('aritcles'), centerTitle: true),
      body: BlocConsumer<NewsBloc, NewsState>(
        listener: (context, state) {
          if (state is ShowErrorState) {
            print(state.error);
          }
        },
        buildWhen: (context, state) {
          return (state is SuccessLoadedNewsState);
        },
        builder: (context, state) {
          return ListView.builder(
            itemCount: bloc.newsData?.length,
            itemBuilder: (context, index) {
              final news = bloc.newsData?[index];
              return ListTile(
                title: Text(news?.title ?? "No Title"),
                subtitle: Text(news?.description ?? ""),
              );
            },
          );
        },
      ),
    );
  }
}
