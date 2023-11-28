import 'package:news_app_clean_architecture/core/resources/data_state.dart';
import 'package:news_app_clean_architecture/features/data/models/article.dart';
import 'package:news_app_clean_architecture/features/domain/entities/article.dart';
import 'package:news_app_clean_architecture/features/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository{
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() {
    // TODO: implement getNewsArticles
    throw UnimplementedError();
  }
}