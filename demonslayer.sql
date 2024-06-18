drop database db_DemonSlayer;
create database db_DemonSlayer;
use db_DemonSlayer;

create table locais(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome varchar (50), 
    descricao varchar (500),
    imagem varchar (200)
);
insert into locais( nome,descricao,imagem) 
Values 
("Castelo Infinito","O Castelo Infinito é o local principal do Arco do Castelo do Infinito. A Arte do Demônio de Sangue e domínio do Demônio BiwaNakime, é um vasto espaço extra-dimensional que serve como covil de Muzan Kibutsuji.", "https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/0/04/Infinity_Castle_-_2.png/revision/latest/scale-to-width-down/1000?cb=20230411020023"),
("Mansão Borboleta", "A Mansão Borboleta é a mansão onde vivem/viveram Kanae Kocho a Hashira das flores, Shinobu Kocho a Hashira dos Insetos, Tsuguko Kanao Tsuyuri e os assistentes Aoi Kanzaki, Sumi Nakahara, Kiyo Terauchi e Naho Takada. Matadores de Onis.", "https://static0.gamerantimages.com/wordpress/wp-content/uploads/2024/01/butterfly-mansion.jpg"),
("Vila dos Ferreiros", "A Vila dos Ferreiros é o local titular do Arco da Vila dos Espadachins. É um assentamento secreto situado em uma floresta densa. A vila oculta serve como centro para a criação e forjamento de armas exclusivas para os matadores de Onis.","https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/4/4b/Swordsmith_Village_%28Anime%29.png/revision/latest?cb=20230411022237"),
("Distrito de Yoshiwara", "Yoshiwara é um distrito localizado em Tóquio,no Japão, e serve como local principal do Entertainment District Arc. É um bairro da luz vermelha, um centro de entretenimento muito famoso, conhecido pelas belas mulheres da região", "https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/6/6d/Yoshiwara%2C_Tokyo_Scenery.png/revision/latest/scale-to-width-down/1000?cb=20211217094153"),
("Mansão Ubuyashiki","Mansão Ubuyashiki é um local significativo em Demon Slayer. É o local onde reside o Oyakata-sama , líder do Demon Slayer Corps ,  Kagaya Ubuyashiki , sua esposa Amane Ubuyashiki e filhos, e está na posse da Família Ubuyashiki há gerações.", "https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/8/8b/Ubuyashiki_Estate.png/revision/latest/scale-to-width-down/1000?cb=20240517114255"),
("Monte Fujikasane","Monte Fujikasane , é uma montanha cheia deglicínias, cujo os Onis não conseguem chegar perto. As flores florescem a cada estação, desde o sopé da montanha até a encosta, a montanha é usada pelo Demon Slayer Corps para a Seleção Final , onde indivíduos que buscam se tornar um Caçador de Onis oficial podem provar seu valor. Os examinados aprovados serão reconhecidos e receberão seu próprio Uniforme Demon Slayer, Espada Nichirin e Corvos Kasugai ." , "https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/d/d0/Mount_Fujikasane_Anime.png/revision/latest/scale-to-width-down/1000?cb=20220704155353"),
("Casa Kyogoku","A Casa Kyogoku é um bordel tradicional japonês localizado no distrito de entretenimento de Tóquio, Japão. Não se sabe quando a Casa Kyogoku foi fundada no Distrito de Entretenimento. Porém, quando Tengen Uzui estava investigando o relato de um demônio dentro do distrito, ele envia sua esposa, Hinatsuru , para se infiltrar na Casa Kyogoku para tentar reunir informações.", "https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/f/f2/Kyogoku_House_%28Anime%29.png/revision/latest/scale-to-width-down/1000?cb=20230508195152"),
("Mugen Train","Depois que uma série de desaparecimentos misteriosos começam a assolar um trem, as múltiplas tentativas do Demon Slayer Corps para remediar o problema se mostram inuteis. O Hashira Kyōjurō Rengoku, Tanjiro Kamado, Zenitsu Agatsuma e Inosuke Hashibira assumem a responsabilidade de cuidar do caso, e lutam contra O Oni Akaza, a Lua Superior 3, cujo estava controlando e manipulando o trem com suas habilidades na tentaiva de matar cerca de 200 passageiros. ","https://img.odcdn.com.br/wp-content/uploads/2021/03/demon-slayer.jpg")
;


create table respiracoes(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome varchar (50), 
descricao varchar (500),
 imagem varchar (500)
);
insert into respiracoes( nome,descricao,imagem ) 
Values 
("Respiração do Sol", "A respiração original é a da Sol. Ela foi a primeira respiração usada para caçar demônios e teve como primeiro usuário Yoriichi Tsugikuni, como dito anteriormente. A respiração do sol, ou Hinokami Kagura, é a mais forte dentre todas as outras e possui 13 formas diferentes, que ao serem utilizadas deixam um rastro de fogo que diminui a capacidade de regeneração dos Onis ao cortá-los. A respiração do Sol também deu origem às demais.","https://sm.ign.com/t/ign_br/screenshot/default/image1_z8ef.960.jpg"),
("Respiração da Lua", "A Respiração da Lua é provavelmente a segunda respiração mais forte da obra e foi criada por Kokushibo, a Lua Superior Um. Antes de se tornar um Oni, Kokushibo era irmão de Yoriichi Tsugikuni, porém ele invejava as habilidades de espadachim do irmão e se aliou a Muzan Kibutsuji para ter mais poder e alcançar o nível do irmão. A Respiração da Lua possui 16 formas e os ataques consistem na criação de diversas luas cortantes que podem alterar de forma mesmo após o corte.", "https://criticalhits.com.br/wp-content/uploads/2021/01/primeira-forma-respiracao-da-lua-910x662.jpg"),
("Respiração da Água","A Respiração da Água é uma das respirações primárias que se originou da Hinokami Kagura e é uma das primeiras que vemos na obra e uma das mais comuns entre os caçadores, já que é uma das mais fáceis de se aprender e suas formas variam entre ofensivas e defensivas. A Respiração da Água possui 11 formas, e a 11ª foi criada pelo Hashira da água, Giyu Tomioka.","https://sm.ign.com/t/ign_br/screenshot/default/image5_u8sm.960.jpg"),
("Respiração da Flor","Respiração da Flor","https://sm.ign.com/t/ign_br/screenshot/default/image11_4wfs.960.png"),
("Respiração do Inseto","A Respiração do Inseto se originou da Respiração da Flor e tem foco em imitar os movimentos de insetos venenosos com ferrão. Sua única usuária e Hashira é Shinobu Kocho, que não possui força o suficiente para empunhar uma lâmina nichirin comum. Para compensar essa falha, Shinobu utiliza uma lâmina semelhante a uma rapieira e usa estocadas para aplicar poderosos venenos combinados com a Respiração de Inseto e sua quatro formas, para matar qualquer demônio que encontrar.","https://sm.ign.com/t/ign_br/screenshot/default/image7_rx26.960.jpg"),
("Respiração da Serpente","Mais uma das respirações que se originaram da Respiração da Água, a Respiração da Serpente é uma das mais furtivas da obra, já que ela imita os movimentos ariscos de uma serpente. Tem como único usuário e Hashira Obanai Iguro, que combina a peculiar espada kris com a Respiração da Serpente e as 5 formas para atacar seus inimigos de maneira muito efetiva.","https://sm.ign.com/t/ign_br/screenshot/default/image14_6xmm.960.jpg"),
("Respiração das Chamas","Uma das respirações mais populares do anime, muito por conta de um usuário extremamente carismático: Kyojuro Rengoku. É uma respiração extremamente poderosa que possui nove formas e usa ataques poderosos que queimam seus oponentes. Ela é uma das respirações que se originaram da Respiração do Sol e tinha como seu antigo Hashira Kyojuro Rengoku .","https://sm.ign.com/t/ign_br/screenshot/default/image9_mf5j.960.jpg"),
("Respiração do Amor","A Respiração do Amor é derivada da Respiração das Chamas. Esse estilo de respiração é totalmente baseado nas emoções do amor. Mitsuri Kanroji é a única usuária e Hashira desse estilo de respiração, e ela utiliza uma lâmina especial que se assemelha a um chicote, o que permite que ela use ataques de média e longa distância com facilidade. A Respiração do Amor possui 6 formas.","https://criticalhits.com.br/wp-content/uploads/2023/11/Mitsuri1-2-1280x720.jpg"),
("Respiração do Trovão","Outra das respirações que se originaram da Respiração do Sol. A Respiração do Trovão possui foco em aumentar a velocidade do usuário imitando um raio, e tem como usuário mais notável Zenitsu Agatsuma, apesar de ele dominar apenas uma forma das seis existentes. Apesar dessa limitação, Zenitsu aprimorou a forma que dominava ao máximo, criando 4 variações dela, além de masterizar a respiração criando uma nova forma, a 7ª forma da Respiração do Trovão.","https://i.ytimg.com/vi/mvMyEAgz4yM/maxresdefault.jpg"),
("Respiração do Som","A Respiração do Som é derivada da Respiração do Trovão e tem como único usuário e Hashira Tengen Uzui. Esse estilo de respiração imita o som e os estrondos para desorientar os inimigos pela audição. A maioria das técnicas e ataques desta respiração usam explosivos para causar maior dano, e a rapidez de Tengen se assemelha à velocidade que o som se propaga. A Respiração do Som possui 5 formas e todas foram criadas por Uzui.","https://static.wikia.nocookie.net/just-fun-even-more-rpg/images/8/87/Sound_Breathing_%28Zenshuchuten%29.png/revision/latest?cb=20230109190959&path-prefix=pt-br"),
("Respiração da Pedra","A Respiração da Pedra também foi criada com base na Respiração do Sol. Ela imita a terra e a pedra com os movimentos do usuário, e a maioria das técnicas utiliza o solo como arma para que o usuário consiga atacar e defender com muita efetividade. O único usuário conhecido é o Hashira Gyomei Himejima, que também é considerado o pilar mais forte.","https://static.wikia.nocookie.net/tsrd/images/5/5f/Todas_as_formas_da_Respira%C3%A7%C3%A3o_da_Pedra_Gyomei_Himejima.jpg/revision/latest?cb=20230812034043&path-prefix=pt-br"),
("Respiração do Vento","Mais uma das respirações primárias que se originaram da Respiração do Sol, esta respiração imita o vento e todas as suas tormentas e furacões de acordo com os movimentos do usuário. Todas as 9 formas da Respiração do Vento são voltadas para ataques ofensivos que cobrem uma grande área. O Hashira do Vento é Sanemi Shinazugawa, irmão de Genya Shinazugawa.","https://animenew.com.br/wp-content/uploads/2024/06/1-Kimetsu-no-Yaiba-Hashira-Geiko-Hen-04-jpg.webp"),
("Respiração da Besta","A Respiração da Besta é derivada da Respiração do Vento e foi criada por Inosuke Hashibira. Esta respiração reproduz o comportamento animais e bestas ferozes, já que foi criada e é usada única e exclusivamente por Inosuke, e ele foi capaz de aperfeiçoar as técnicas e formas desta respiração ao extremo. Inosuke consegue mover ossos e músculos do corpo para se adaptar a cada forma da Respiração da Besta.","https://pm1.aminoapps.com/7412/c5d8345f7e6c3c4b1f93630bc1ee936030e25a0ar1-739-415v2_00.jpg"),
("Respiração da Névoa","A Respiração da Névoa é outra que se derivou da Respiração do Vento. Ela tem como foco a furtividade, já que no meio da névoa o usuário consegue ocultar seus movimentos. O único usuário conhecido dessa respiração, Muichiro Tokito, é um dos personagens mais rápidos da obra e também é o Hashira mais jovem.","https://criticalhits.com.br/wp-content/uploads/2021/05/respiracao-da-nevoa-07.jpg")
;


create table grupos(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome varchar (50)
);

insert into grupos(nome) 
Values 
("Hashira"),
("Caçador de Oni"),
("Lua Superior"),
("Lua Inferior"),
("Oni"),
("Ferreiro")
;


create table personagens(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome varchar (50),
descricao varchar (500),
imagem varchar (200),
id_grupo INT NOT NULL,
id_respiracao INT,
FOREIGN KEY (id_grupo) REFERENCES Grupos(id),
FOREIGN KEY (id_respiracao) REFERENCES respiracoes(id)
);

SELECT id,nome From respiracoes;
SELECT id,nome FROM grupos;
insert into personagens( nome,descricao,imagem,id_grupo,id_respiracao) 
Values 
("Mitsuri Kanroji","Mitsuri Kanroji é uma personagem coadjuvante importante de Demon Slayer: Kimetsu no Yaiba. Ela é uma Exterminadora de Demônios do Esquadrão de Exterminadores de Demônios e a atual Hashira do Amor ", "https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/f/f8/Mitsurino_anime.png/revision/latest?cb=20231112205837&path-prefix=pt-br",1,8),
("Kyojuro Rengoku", "Rengoku utiliza a técnica da respiração das chamas (diferente da respiração especial de Tanjiro, a solar), que consiste em poderosos golpes feitos para incapacitar os oponentes. O entusiasmado rapaz é protagonista do filme Mugen Train e principal aliado de Tanjiro nesse arco sequencial da primeira temporada. Quem assistiu garante: a história do Hashira é de emocionar, afinal, nem tudo são flores no mundo de Demon Slayer.", "https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/f/fd/Kyojuro_anime.png/revision/latest?cb=20191117152140",1,7 ),
("Tanjiro Kamado", "Tanjiro Kamado é o principal protagonista de Demon Slayer: Kimetsu no Yaiba . Ele é umDemon SlayernoDemon Slayer Corps, que se juntou para encontrar um remédio para transformar sua irmã,Nezuko Kamado, de volta em humana e para caçar e matardemônios, e mais tarde jurou derrotarMuzan Kibutsuji, o Rei dos Demônios, a fim de evitar que outros sofram o mesmo destino que ele.", "https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/d/dd/Tanjiro_Kamado_Full_Body_%28Anime%29.png/revision/latest?cb=20230117090856",2,1),
("Zenitsu Agatsuma", "Zenitsu Agatsuma é um dos personagens principais de Demon Slayer: Kimetsu no Yaiba e junto com Inosuke Hashibira, companheiro de viagem deTanjiro KamadoeNezuko Kamado. Ele também é um Demon Slayer noDemon Slayer Corps.", "https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/6/66/Zenitsu_anime.png/revision/latest?cb=20181128204231",2,9);


insert into personagens( nome,descricao,imagem,id_grupo) 
Values 
("Nezuko Kamado","Nezuko Kamado é o deuteragonista de Demon Slayer: Kimetsu no Yaiba . Ela é um Oni e irmã mais nova de Tanjiro Kamadoe um dos dois membros restantes da família Kamado. Anteriormente humana, ela foi atacada e transformada em demônio por Muzan Kibutsuji.","https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/4/4d/Nezuko_anime.png/revision/latest?cb=20211119014953",5),
("Muzan Kibutsuji", "Muzan Kibutsuji é o principal antagonista de Demon Slayer: Kimetsu no Yaiba . Ele é o Rei Demônio, o progenitor de todos os outros Onis existentes, e o líder dos Doze Kizuki, uma organização composta pelos doze demônios mais fortes sob seu comando direto.","https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/0/0e/Muzan_Kibutsuji_Full_Body_%28Anime%29.png/revision/latest?cb=20210731042132",5),
("Kokushibo", "Kokushibo é um grande antagonista coadjuvante de Demon Slayer: Kimetsu no Yaiba . Ele é um Oni afiliado aos Doze Kizuki, ocupando a posição mais alta, sendo Lua superior numero 1, Kokushibo também é o ancestral de Muichiro Tokito e Yuichiro Tokito e o responsável por transformar o sênior de Zenitsu Agatsuma , Kaigaku , em um demônio e se juntar aos Doze Kizuki.","https://i.pinimg.com/originals/ff/11/c6/ff11c6f86233e82636c586618dbdef07.png",3 ),
("Douma","Nascido totalmente sem emoções, Douma é um dos maiores vilões da série, sendo responsável direto pelas mortes de Kotoha, a mãe de Inosuke, e de Kanae, a irmã mais velha da hashira Shinobu Kocho, o que os torna arqui-inimigos. Apesar de não sentir nada, ele é carismático e amigável, usando isso para devorar suas vítimas, especialmente os membros da seita Paraíso Eterno, da qual ele é o líder. É um psicopata total, que permaneceu impassível mesmo diante da morte trágica de seus pais diante de seus olhos, reclamando apenas do cheiro de sangue que pairava no quarto. Sua principal arma são seus leques, que ele utiliza tanto para defesa quanto para ataque.","https://static.wikia.nocookie.net/liberproeliis/images/6/61/1594077817112.png/revision/latest?cb=20200707002453&path-prefix=pt-br",3),
("Hotaru Haganezuka","Hotaru Haganezuka é um personagem secundário na popular série de mangá e anime, Demon Slayer (Kimetsu no Yaiba). Ele é filho do chefe ferreiro da família Haganezuka, um clã conhecido por sua excepcional habilidade em criar armas, especialmente espadas. Ele também foi responável pela criação das espadas de Tangiro Kamado","https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/1/14/Hotaru_recognizing_Tanjiro_as_a_Child_of_Brightness.png/revision/latest?cb=20210404170616",6),
("Kotetsu","Kotetsu é um personagem coadjuvante em Demon Slayer: Kimetsu no Yaiba . Ele é um jovem aldeão da Vila dos Espadachins. Seus ancestrais construíram o boneco de batalha Yoriichi Type Zero.", "https://i.pinimg.com/736x/70/4a/f7/704af74f723e04bd8a962bb2231b14fb.jpg", 6);


;