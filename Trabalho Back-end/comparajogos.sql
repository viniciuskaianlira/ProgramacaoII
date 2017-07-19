CREATE DATABASE COMPARAJOGOS;

CREATE TABLE NOTICIAS(
    ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    TITLE VARCHAR(120) NOT NULL,
    NDATA VARCHAR(32) NOT NULL,
    TEXTO VARCHAR(8000) NOT NULL,
    RESUMONOTICIA VARCHAR(256) NOT NULL,
    FONTES VARCHAR(120) NOT NULL,
    LINKFONTE VARCHAR(2048) NOT NULL,
    NOMEFONTEIMAGENS VARCHAR(120) NOT NULL,
    LINKIMAGEM VARCHAR(2048) NOT NULL,
    NOMEIMAGEM VARCHAR(32) NOT NULL
);

CREATE TABLE JOGO(
    ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(32) NOT NULL,
    LANCAMENTO VARCHAR(32) NOT NULL,
    TEXTO VARCHAR(8000) NOT NULL,
    NOMEIMAGEMARTIGO VARCHAR(32) NOT NULL,
    FONTE VARCHAR(120) NOT NULL,
    LINKFONTE VARCHAR(2048) NOT NULL,
    NAMECAPA VARCHAR(32) NOT NULL,
    GRAFICOS INTEGER NOT NULL,
    JOGABILIDADE INTEGER NOT NULL,
    DIVERSAO INTEGER NOT NULL,
    SOM INTEGER NOT NULL,
    PROS VARCHAR(512) NOT NULL,
    CONTRAS VARCHAR(512) NOT NULL,
    PLATAFORMA VARCHAR(80) NOT NULL
);

CREATE TABLE COMENTARIOS(
    ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    COMENTARIO VARCHAR(1024) NOT NULL,
    IDJOGO INTEGER NOT NULL,
    IDUSER INTEGER NOT NULL
);

CREATE TABLE ESPORTS(
    ID INTEGER NOT NULL,
    NOMEGAME VARCHAR(32) NOT NULL,
    TEXTO VARCHAR(2000) NOT NULL,
    FOREIGN KEY (ID) REFERENCES JOGO(ID)
);

CREATE TABLE DESTAQUEINDEX(
    ID INTEGER PRIMARY KEY,
    DESTAQUE VARCHAR(32) NOT NULL,
    LINKVIDEO VARCHAR(1000) NOT NULL,
    FOREIGN KEY (ID) REFERENCES JOGO (ID)
);

CREATE TABLE MENSAGEMCONTATO(
    ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(32) NOT NULL,
    EMAIL VARCHAR(32) NOT NULL,
    MENSAGEM VARCHAR(3000) NOT NULL
);

CREATE TABLE USUARIOS(
    ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    USERNAME VARCHAR(32) NOT NULL,
    EMAIL VARCHAR(32) NOT NULL,
    DATACRIACAO VARCHAR(16) NOT NULL,
    NOMEIMG VARCHAR(32) NOT NULL,
    SENHA VARCHAR(32) NOT NULL
);

INSERT INTO NOTICIAS(TITLE, NDATA, TEXTO, RESUMONOTICIA, FONTES, LINKFONTE, NOMEFONTEIMAGENS, LINKIMAGEM, NOMEIMAGEM) VALUES("Star Wars Battlefront II não terá Season Pass, mas terá Early Access", "19 ABR 2017 - 17H00", "<p id="text">
                        &emsp;&emsp;Não adianta: o sistema de passe de temporada é algo comum atualmente, mas ele ainda não desce pela garganta de muita gente. Afinal, trata-se de um modelo que cobra previamente por conteúdo extra de um jogo que, muitas vezes, nem foi lançado ainda. Parece que a EA está aprendendo com os erros e decidiu: Star Wars Battlefront II não terá Season Pass.
                        <br><br>&emsp;&emsp;Se você se lembra, o primeiro jogo foi muito incrível e trouxe bastante conteúdo interessante, mas se visto por um escopo maior, trazia poucos mapas, heróis e armas, algo que só foi suprido com DLCs pagas ao longo do tempo. Por conta disso, o segundo game não seguirá essa fórmula. Ou pelo menos é isso que está imperando até o momento.
                        <br><br>&emsp;&emsp;Alguns executivos da EA Games não quiseram confirmar, enquanto outros disseram que o game não terá o passe de temporada. A própria pré-venda ressalta isso, já que não teremos as três versões padrão: normal, deluxe e ultimate. Mas isso não quer dizer que a EA não pensa em outras formas de ganhar dinheiro extra com o título de Star Wars.
                        <br><br>&emsp;&emsp;“Quando olhamos como Battlefront se desenvolveu, com as DLCs e tudo mais, nós decidimos que que para esse tipo de jogo, o passe de temporada não é a melhor coisa. Nós precisamos tirar isso e colocar algo melhor”, explicou o diretor Bernd Diemer.
                        <br><br>&emsp;&emsp;Atualmente, Battlefront II tem uma edição mais cara que oferece Early Access, permitindo que os jogadores desfrutem da experiência alguns dias antes do lançamento oficial. Star Wars Battlefront II chega no dia 17 de novembro para PC, Xbox One e PlayStation 4 (dia 9 para membros do Early Access).
                    </p>", "Não adianta: o sistema de passe de temporada é algo comum atualmente, mas ele ainda não desce pela garganta de muita gente.", "GAMEPUR", "http://www.gamepur.com/news/26439-star-wars-battlefront-ii-not-coming-season-pass-early-access-confirmed.html", "ORIGIN", "https://www.origin.com/bra/pt-br/store/star-wars/star-wars-battlefront-2/deluxe-edition", "starwar.jpg");



INSERT INTO DESTAQUEINDEX(ID, DESTAQUE, LINKVIDEO) VALUES(1, "Assassin's Creed III", "https://www.youtube.com/embed/xzCEdSKMkdU");

INSERT INTO JOGO(NAME, LANCAMENTO, TEXTO, NOMEIMAGEMARTIGO, FONTE, LINKFONTE, NAMECAPA, GRAFICOS, JOGABILIDADE, DIVERSAO, SOM, PROS, CONTRAS, PLATAFORMA) VALUES("Assassin's Creed III", "30 de outubro de 2012", "<h2>Connor, um novo Assassino</h2>
    <p>Você é Connor, o filho guerreiro de uma mãe nativo-americana e um pai britânico. Enquanto uma revolução sangrenta se aproxima, sua vila é ameaçado por um grupo poderoso que busca esmagar a revolução americana e controlar as treze colônias.</p>
    <p>Levado à ação pelo choque da devastação de sua vila, você oferece sua vida à causa da liberdade, e embarca em uma jornada de décadas para atingi-la.</p>
    <h2>A ambientação</h2>
    <p>Existe uma Revolução Americana que você conhece dos livros de história. E existe a revolução na qual você lutará, ambientada em um mundo que é muito mais realístico, sombrio e vivo do que qualquer livro de história.</p>
    <h2>Guerra naval</h2>
    <p>Em Assassin’s Creed III, Connor lutará com seus inimigos não apenas em terra, mas também em alto mar a bordo de sua nau corajosa, a Aquila.</p>
    <p>Você navegará as águas tumultuosas e comandará sua nau de guerra, enviando inimigos para seus túmulos submarinos com canhões e uma série de poderosas armas navais. Ou, caso prefira, prepare um grupo de invasão e leve a luta até o inimigo batalhando corpo a corpo no convés de seu próprio barco.</p>
    <h2>Anvil Next</h2>
    <p>Sinta o poder impressionante de Anvil Next, o novo motor criado especialmente para Assassin's Creed III.</p>
    <p>A equipe gastou três anos criando esse sistema revolucionário, começando do zero, e os resultados são nada menos que de tirar o fôlego.</p>
    <p>Começa com incríveis melhoras em captura de movimento, animação e tecnologia de IA, que oferecem animações de personagem e interações mais realísticas do que nunca e, continua com clima dinâmico, estações e tempo, que afetam o mundo ao seu redor de forma significativa.  Nenhum motor inédito estaria tão completo sem um sistema de combate e furtividade dramaticamente expandido. </p>
", "assassin_artigo.png", "UBISOFT", "https://www.ubisoft.com/pt-br/game/assassins-creed-3/", "capa_assassin_cree_III.jpg", 9, 8, 6, 7, "- Revolução americana
- Ambientação do jogo
- Novas mecânicas
- Movimentação fluída
- Melhorias no modo multiplayer", "- Missões que fogem do enredo
- Muitos loadings
- I.A. dos inimigos limitada.
- Demora no carregamento", "PC, PlayStation3, Wii U, Xbox360");
