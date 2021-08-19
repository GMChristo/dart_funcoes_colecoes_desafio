void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  final pessoasSemDuplicatas = <String>{};
  pessoas.forEach((p) => pessoasSemDuplicatas.add(p));
  print(pessoasSemDuplicatas.toList());

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  final homens = [];
  final mulheres = [];

  for (var p in pessoasSemDuplicatas) {
    var pessoa = p.split('|');
    if (pessoa[2].toLowerCase() == 'masculino') {
      homens.add(pessoa[0]);
    } else {
      mulheres.add(pessoa[0]);
    }
  }
  print('A quantidade de pessoas do sexo masculino é: ${homens.length}');
  homens.forEach(print);

  print('A quantidade de pessoas do sexo feminino é: ${mulheres.length}');
  mulheres.forEach(print);

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  var maioresDeIdade = [];
  var maisVelho = 0;
  for (var p in pessoasSemDuplicatas) {
    var pessoa = p.split('|');
    var idade = int.tryParse(pessoa[1]) ?? 0;
    if (idade > 18) {
      try {
        maioresDeIdade.add(pessoa[0]);
        if (idade > maisVelho) {
          maisVelho = idade;
        }
      } catch (e) {
        print(e);
      }
    }
  }
  print('Lista de pessoas maiores de idade: $maioresDeIdade');

  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
}
