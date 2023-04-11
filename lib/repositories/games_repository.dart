import '../model/comentarios.dart';
import '../model/games.dart';

class GamesRepository{
  static List<Games> tabela = [
    Games(
      nome: 'GTA V', 
      foto: 'lib/images/gta5.jpg',
      categoria: 'Ação',
      plataforma: 'PC, PS3, PS4, PS5, Xbox 360, Xbox One, Xbox Series X',
      sobre: 'O jogo se passa no estado ficcional de San Andreas, com a história da campanha um jogador seguindo três criminosos e seus esforços para realizarem assaltos sob a pressão de uma agência governamental. O mundo aberto permite que os jogadores naveguem livremente pelas áreas rurais e urbanas de San Andreas.' ),

    Games(
      nome: 'Kingdom Come: Deliverance', 
      foto: 'lib/images/kcd.jpg',
      categoria: 'RPG',
      plataforma: 'PC, PS4, Xbox One',
      sobre: 'Kingdom Come: Deliverance é um RPG histórico onde você embarca em uma aventura épica pelo mundo aberto e gigantesco da Boêmia medieval. Vingue a morte de seus pais enquanto enfrenta hordas invasoras e se envolva em missões onde suas escolhas influenciam o mundo à sua volta.' ),

    Games(
      nome: 'The Witcher 3: Wild Hunt', 
      foto: 'lib/images/thewitcher3.jpg',  
      categoria: 'RPG',
      plataforma: 'PC, PS4, PS5, Xbox One, Xbox Series X, Nintendo Switch',
      sobre: 'Você é Geralt de Rívia, mercenário matador de monstros. Você está em um continente devastado pela guerra e infestado de monstros para você explorar à vontade. Sua tarefa é encontrar Ciri, a Criança da Profecia — uma arma viva que pode alterar a forma do mundo.' ),
  ];

}

class ComentariosRepository{
  static List<Comentar> tabelacomentario = [
    Comentar(
      nome: 'GTA V',
      comentario: 'Jogo muito bom'),
  ];
}