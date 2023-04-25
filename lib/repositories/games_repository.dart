import '../model/comentarios.dart';
import '../model/games.dart';
import '../model/usuario.dart';

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
    
    Games(
      nome: 'God of War', 
      foto: 'lib/images/gow.jpg',  
      categoria: 'Ação',
      plataforma: 'PC, PS4, PS5',
      sobre: 'Com a vingança contra os deuses do Olimpo em um passado distante, Kratos agora vive como um mortal no reino dos deuses e monstros nórdicos. É nesse mundo duro e implacável que ele deve lutar para sobreviver... e ensinar seu filho a fazer o mesmo.' ),

    Games(
      nome: 'Red Dead Redemption 2', 
      foto: 'lib/images/rdr2.jpg',  
      categoria: 'Ação',
      plataforma: 'PC, PS4, Xbox One',
      sobre: 'Red Dead Redemption 2, a épica aventura de mundo aberto da Rockstar Games aclamada pela crítica e o jogo mais bem avaliado desta geração de consoles, agora chega aprimorado para PC com conteúdos inéditos no Modo História, melhorias visuais e muito mais.' ),

    Games(
      nome: 'Need for Speed Unbound', 
      foto: 'lib/images/nfs.jpg',  
      categoria: 'Corrida',
      plataforma: 'PC, PS5, Xbox Series X,',
      sobre: 'Red Dead Redemption 2, a épica aventura de mundo aberto da Rockstar Games aclamada pela crítica e o jogo mais bem avaliado desta geração de consoles, agora chega aprimorado para PC com conteúdos inéditos no Modo História, melhorias visuais e muito mais.' ),

    Games(
      nome: 'The Last of Us Part I', 
      foto: 'lib/images/thelast.jpg',  
      categoria: 'Ação',
      plataforma: 'PC, PS3, PS4, PS5',
      sobre: 'Em uma civilização devastada, em que infectados e sobreviventes veteranos estão à solta, Joel, um protagonista abatido, é contratado para tirar uma garota de 14 anos, Ellie, de uma zona de quarentena militar. No entanto, o que começa como um pequeno serviço se transforma em uma jornada brutal através do país.' ),

    Games(
      nome: 'Cyberpunk 2077', 
      foto: 'lib/images/cyberpunk.jpg',  
      categoria: 'RPG',
      plataforma: 'PC, PS4, PS5, Xbox One, Xbox Series X',
      sobre: 'Cyberpunk 2077 é um RPG de ação e aventura em mundo aberto que se passa em Night City, uma megalópole perigosa onde todos são obcecados por poder, glamour e alterações corporais.' ),

    Games(
      nome: 'Hitman', 
      foto: 'lib/images/hitman.jpg',  
      categoria: 'Ação',
      plataforma: 'PC, PS4, PS5, Xbox One, Xbox Series X',
      sobre: 'Aonde ir, quando atacar, quem matar: você decide.' ),

      Games(
      nome: 'Assassins Creed Valhalla', 
      foto: 'lib/images/acvalhalla.png',  
      categoria: 'RPG',
      plataforma: 'PC, PS4, PS5, Xbox One, Xbox Series X',
      sobre: 'Torne-se um viking lendário em busca de glória. Ataque seus inimigos, amplie seu assentamento e consolide seu poder político.' ),
  
      Games(
      nome: 'The Crew 2', 
      foto: 'lib/images/thecrew2.jpg',  
      categoria: 'Corrida',
      plataforma: 'PC, PS4, Xbox One',
      sobre: 'Seja bem-vindo a Motornation! Enfrente desafios por terra, céu e mar e sinta a liberdade sem limites do nosso grande e belo mundo aberto recriado! Conquiste a fama!' ),

      Games(
      nome: 'Mount & Blade II: Bannerlord', 
      foto: 'lib/images/mb2.jpg',  
      categoria: 'Estratégia',
      plataforma: 'PC, PS4, PS5, Xbox One, Xbox Series X',
      sobre: 'Um RPG de ação/estratégia. Crie um personagem, seja diplomata, fabrique, comercialize e conquiste terras num vasto mundo medieval. Leve seus exércitos a grandes batalhas, comande suas tropas e use sua habilidade para lutar ao lado delas num sistema de combate direcional complexo e intuitivo.' ),

      Games(
      nome: 'A Total War Saga: TROY', 
      foto: 'lib/images/troy.jpg',  
      categoria: 'Estratégia',
      plataforma: 'PC',
      sobre: 'Nessa era lendária, os heróis caminham sobre a Terra. Com uma conduta que surpreende o mundo, o audacioso Páris, príncipe de Troia, foge com a bela rainha de Esparta. Os dois fogem de navio e o rei Menelau roga uma praga contra a rainha. Ele promete trazer sua esposa de volta para casa, custe o que custar!' ),

  ];

}

class ComentariosRepository{
  static List<Comentar> tabelacomentario = [
    Comentar(
      nome: 'GTA V',
      comentario: 'Jogo muito bom'),
  ];
}

class Favorito{
  static List<Games> favoritos = [];
}

class Usuarios{
  static List<Usuario> tabelausuario = [];
}