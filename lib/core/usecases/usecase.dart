abstract class UseCase<Type,Params> {
  Future<Type> call({Params params}); //in this method, we take the data need from the repository
}