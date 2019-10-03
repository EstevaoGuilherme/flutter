abstract class Teste{
  void test();
}

class Testando implements Teste{
  @override
  void test() {
    print('Ola mundo');
  }
}
              
main(List<String> args) {
  Testando t = Testando();
  t.test();
}