-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Out-2020 às 22:19
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jornal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1910),
(1911),
(1912),
(1913),
(1914),
(1915),
(1916),
(1917),
(1918),
(1919),
(1920),
(1921),
(1922),
(1923),
(1924),
(1925),
(1926),
(1927),
(1928),
(1929),
(1930),
(1931),
(1932),
(1933),
(1934),
(1935),
(1936),
(1937),
(1938),
(1939),
(1940),
(1941),
(1942),
(1943),
(1944),
(1945),
(1946),
(1947),
(1948),
(1949),
(1950),
(1951),
(1952),
(1953),
(1954),
(1955),
(1956),
(1957),
(1958),
(1959),
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Arte'),
(3, 'Literatura'),
(4, 'Comunidade'),
(5, 'Política'),
(6, 'Alimentação'),
(7, 'Ciência'),
(8, 'Séries'),
(9, 'Tecnologia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `escritor`
--

CREATE TABLE `escritor` (
  `codEscritor` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ddd` varchar(2) DEFAULT NULL,
  `telefone` varchar(9) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `escritor`
--

INSERT INTO `escritor` (`codEscritor`, `nome`, `sobrenome`, `email`, `ddd`, `telefone`, `cidade`, `codTurma`, `dia`, `mes`, `ano`) VALUES
(1, 'João', 'Carvalho', 'joao@gmail.com', '11', '999999999', 'Mauá', 2, 18, 5, 2004),
(2, 'Rodrigo', 'Casell', 'Roger@gmail.com', '11', '987546123', 'Ribeirão Pires', 9, 15, 8, 1910),
(3, 'Ana ', 'Maria', 'maria@gmail.com', '11', '465871238', 'Santo André', 3, 6, 6, 2003),
(4, 'Laura', 'Silva', 'lala@gmail.com', '11', '468769541', 'Ribeirão Pires', 2, 12, 6, 2004),
(5, 'Ester', 'Fernandes', 'Star@gmail.com', '11', '984236487', 'Ribeirão Pires', 4, 4, 1, 2005);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codNoticia` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `noticia` mediumtext DEFAULT NULL,
  `codEscritor` int(11) DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codNoticia`, `titulo`, `noticia`, `codEscritor`, `codCategoria`, `dia`, `mes`, `ano`) VALUES
(1, 'Dia do Hobbit: conheça locações e paisagens na Nova Zelândia', 'Se você é fã da saga “Senhor dos Anéis”, sabe muito bem o que é celebrado neste 22 de setembro. O Dia do Hobbit é comemorado desde 1973. O dia marca os aniversários de dois dos personagens mais queridos criados por JRR Tolkien: Bilbo e Frodo Boseiro.\r\n\r\nEsses pequenos e simpáticos seres foram criados e imortalizados pelos livros de Tolkien.\r\n\r\nDesde o início dos anos 2000, com o lançamento dos filmes baseados na obra de Tolkien, a mitologia da Terra Média acabou se associando à Nova Zelândia, terra natal do cineasta Peter Jackson, responsável por levar para as telas as trilogias de “O Senhor dos Anéis” e “O Hobbit”.\r\n\r\nApesar dos filmes terem sido gravados em locações diversas, foram as exuberantes paisagens neozelandesas que se tornaram quase sinônimo das aventuras de Frodo, Bilbo e toda uma gama de personagens que os fãs bem conhecem.\r\n\r\nParte das locações foi preservada após o final das filmagens de “O Hobbit”, dando lugar ao Hobbiton Movie Set, uma das principais atrações turísticas da Nova Zelândia, localizado na cidade de Waikato, em Matamata.\r\n\r\nodos os anos, milhares de turistas locais e estrangeiros visitam o local e podem conhecer de perto alguns cenários icônicos dos filmes, como os “hobbit holes” -as casas dos hobbits- e a Pousada do Dragão Verde, onde é possível degustar cervejas, cidras e refrigerantes de gengibre artesanais ou comer um banquete digno dos personagens. Por ora, enquanto as viagens ainda estão restritas, é possível matar um pouco da curiosidade fazendo o tour virtual 360º.\r\n\r\nPara celebrar o Dia do Hobbit, o Turismo Nova Zelândia preparou ações especiais para marcar a data. Nesta terça-feira, os perfis do Instagram e no Facebook , por exemplo, irão exibir um vídeo comemorativo que mostra uma receita de torta de nozes e mel -uma iguaria que todo hobbit ficaria feliz de apreciar. Já no site www.newzealand.com será possível fazer o download de fundos de tela para Zoom inspirados no universo de Tolkien, para animar as videoconferências durante o período de isolamento social.\r\n\r\nMas a magia da Terra Média vive em várias outras paisagens na Nova Zelândia. Conheça outras atrações do país ligadas à mitologia de Tolkien. E aproveite para fazer o teste e descobrir se você é um mago, um anão, um hobbit ou um elfo para direcionar melhor suas visitas.', 1, 3, 21, 10, 2020),
(2, 'Novo livro sobre Game of Thrones traz segredos da série da HBO', 'Uma das maiores séries da história da TV, Game of Thrones, terá algumas curiosidades sobre os seus bastidores compartilhadas com o público por meio do novo livro Fire Cannot Kill a Dragon: Game of Thrones and the Official Untold Story of the Epic Series, do autor James Hibberd, editor geral do site Entertainment Weekly.\r\n\r\nNós já fomos apresentados a uma dessas curiosidades, na qual George R.R. Martin, autor dos livros que deram origem à série da HBO, revelou qual ele considera a pior cena de todas as temporadas do programa.\r\n\r\nO livro revela que um dos casais preferidos do público foi concebido originalmente como irmãos. Missandei e Verme Cinzento teriam um relacionamento igual ao de Cersei e Jamie Lannister.\r\n\r\nConfira alguma das outras histórias curiosas por trás da produção de Game of Thrones que estarão presentes no livro:\r\n\r\nSibel Kekilli não estava disposta a interpretar a personagem Shae, ela precisou ser convencida pelos diretores.\r\nNatalie Dormer, a rainha Margaery Tyrell, originalmente fez teste para ser Melisandre.\r\nO veado morto encontrado pelos Starks na 1ª temporada era um cadáver real.\r\nRickon Stark quase foi cortado da série.\r\nLiam Cunningham lutou contra os diretores para que seu personagem Davos não fosse apaixonado por Missandei.\r\nMaisie Williams torcia para que sua personagem, Arya, matasse Cersei usando o rosto de Jamie Lannister.\r\nE aí, o que achou dessas curiosidades? Parece que essa é mais uma leitura obrigatória para os fãs assíduos da série!', 3, 3, 28, 5, 2018),
(3, 'Morador de rua já pode pagar a comida, diz SP sobre fim do Bom Prato grátis', 'O Governo João Doria (PSDB-SP) disse à Justiça que, com o aumento da circulação das pessoas nas ruas em decorrência da flexibilização das regras de confinamento, os moradores de rua já têm condições de pagar por sua própria comida. A declaração foi feita pelo Estado para justificar o fim da gratuidade das refeições do programa \"Bom Prato\", medida adotada no auge da pandemia do coronavírus, mas que foi encerrada no dia 30 de setembro. \"É evidente que os moradores de rua voltaram a angariar doações em dinheiro, alimentos e outras modalidades de apoio\", afirma o governo.', 5, 6, 16, 11, 2020),
(4, 'O viés de confirmação na detecção de fosfina em Vênus', 'A ciência de fronteira é uma luta selvagem contra o viés da confirmação. O grupo de Greaves observou fosfina em Vênus em 2017 com o James Clerk Maxwell Telescope (JCMT). Para publicá-lo na revista Nature Astronomy, confirmou-se a observação com o ALMA em 2019, ajustando os dados com um polinômio de grau 12, atingindo ∼15 sigmas. Uma reanálise independente com o mesmo software de dados do ALMA a 267 GHz acaba de ser publicada no arXiv; o sinal de fosfina (PH₃) atinge apenas ∼2 sigmas. Portanto, a fosfina não foi observada na atmosfera de Vênus. Além disso, o uso de um polinômio de grau 12 produz falsas linhas de absorção com mais de 10 sigmas em outras regiões do espectro. Um duro golpe para a observação do grupo Greaves e da fosfina como biomarcador.\r\n\r\nJá havia muitas dúvidas, especialmente porque apenas uma única linha espectral de absorção de fosfina (com comprimento de onda de 1.123 mm) havia sido observada no rádio; embora tenha sido “confirmada” com dois instrumentos, o JCMT no Havaí, em junho de 2017, e o ALMA no Atacama, Chile, em março de 2019. Além disso, o grupo Greaves não conseguiu observar a fosfina em Vênus no infravermelho, usando o telescópio infravermelho de 3 metros da NASA no Observatório Mauna Kea (Havaí, EUA), conforme publicado na Astronomy & Astrophysics. Ou há tão pouca fosfina que é indetectável no infravermelho, ou sua concentração é altamente variável, ou sua observação no rádio é produto de um viés de confirmação.', 4, 7, 19, 9, 2020),
(5, 'Positivo anuncia o Q20, com tela de 6,1\'\', 128GB de espaço e acabamento em vidro', 'A Positivo anunciou nessa semana o Positivo Q20, seu novo celular mais avançado até hoje. O aparelho traz tela de 6,1\'\', um processador octa-core não especificado, três câmeras, 128GB de armazenamento e um acabamento em vidro que pode ajudar a dar um visual mais \"premium\" ao smartphone. Independentemente do visual, a Positivo mira no segmento custo x benefício com seu dispositivo, que será vendido por R$ 899 no Prime Day da Amazon.\r\n\r\n\"O grande diferencial do Positivo Q20 é a capacidade de armazenamento, superior a qualquer outro concorrente nessa faixa de preço, os quais costumam ter entre 32 e 64 GB. Consideramos também a experiência do usuário nas mais diversas tarefas do dia a dia, garantindo fluidez e performance devido ao processador Octa-core e os 4 GB de memória RAM.\"', 2, 7, 13, 10, 2020),
(6, 'The Witcher 2ª temporada: Henry Cavill divulga imagem de seu treinamento', 'O ator Henry Cavill continua firme e forte — literalmente — em sua preparação para interpretar o bruxo Geralt de Rivia na 2ª temporada de The Witcher na Netflix.\r\n\r\nCavill divulgou uma imagem em seu Instagram pessoal, em que mostra o local onde ele tem feito sua preparação física para o personagem.\r\n\r\nO ator tem feito algumas corridas em Lake District, um parque nacional na região noroeste da Inglaterra, que é conhecido por ter muitos lagos, montanhas e percursos que exigem mais do atleta que corre no local, por ter um relevo mais acidentado. O local se tornou, como o próprio ator definiu, um de seus três lugares favoritos no mundo.', 1, 8, 18, 9, 2020),
(7, 'Volante Jonas, ex-Flamengo, pede rescisão com clube árabe e treina no Brasil à espera de propostas', 'O volante Jonas, que deixou o Flamengo em 2018, está pronto para retornar ao futebol brasileiro. O jogador de 29 anos solicitou a rescisão contratual com o Al Ittihad, da Arábia Saudita, por falta de pagamentos. O clube árabe foi notificado, e agora o atleta aguarda os trâmites judiciais para se ver liberado de vínculo e poder buscar uma nova equipe.\r\n\r\nEnquanto espera a resolução de sua situação, Jonas decidiu voltar a Teresina, no Piauí, sua cidade natal, onde vem realizando treinamentos para manter a forma física. Clubes da Série A souberam do pedido de rescisão de Jonas e manifestaram interesse em contar com o jogador, que aguarda, além da liberação, propostas oficiais para definir seu futuro.\r\n\r\n', 4, 1, 21, 10, 2020),
(8, 'Abastecimento com água salgada em Itajaí seguirá até o fim de semana', 'O problema que aconteceu agora, de acordo com o engenheiro, está embaixo da laje que sustenta as paredes de contenção. Questionado se houve avaliações periódicas no local, ele disse que, até então, não havia nenhum indicativo de problemas – a pista seria o aparecimento de bolhas de ar e aumento no índice de salinidade da água, o que só apareceu a partir do dia 13 de outubro.\r\n\r\nInicialmente, suspeitou-se que um vazamento em uma adutora que passa embaixo da barragem, a quatro metros de profundidade, tivesse sido o responsável por revolver o solo e provocar os danos. No entanto, não há certeza de que essa tenha sido a causa.\r\n\r\nVictor Silvestre diz que as dúvidas ocorrem porque a captação do Semasa ocorre em um ponto incomum, no Canal Retificado do Rio Itajaí Mirim – um ‘braço’ do Rio Itajaí Mirim aberto artificialmente. Essa condição torna imprevisível a dinâmica das águas e do solo sob o canal. É um “fluxo de sedimentos atípico”, segundo o diretor.\r\n\r\nA influência das marés é outro ponto delicado. Captações em locais assim são raras no Brasil – tanto que a barragem de cunha salina de Itajaí é uma das únicas do país.\r\n\r\n- É o rio que temos para captar. Não temos outra opção com tamanha vazão – afirma Silvestre.\r\n\r\nNos últimos dias, especialistas contratados têm trabalhado para avaliar os danos à barragem. Foi construído um projeto de contenção emergencial para garantir a retomada do abastecimento de água potável, que deve ter resultado até o fim da semana. Posteriormente, será feito o conserto definitivo.', 5, 7, 16, 9, 2020),
(9, 'Artistas do teatro musical celebram obra de Mariah Carey em evento online', 'Projeto que já celebrou a obra de artistas pop do quilate de Madonna, Rihanna, Lady Gaga e Whitney Houston, entre outros, Teatro Musical Canta prestará um tributo a obra de Mariah Carey na edição de outubro.\r\n\r\nCom transmissão agendada para o dia 23, sexta-feira, no canal Sessão Popular, o projeto receberá nomes como a vencedora do Prêmio Bibi Ferreira Kiara Sasso, a indicada ao Shell Letícia Soares, Jeniffer Nascimento, Tiago Barbosa, Cidália Castro, Helga Nemetick e Pedro Navarro, entre outros.\r\n\r\nConteúdo recomendado:\r\nWhitney Houston ganha homenagem do teatro musical brasileiro na esteira de musical na Broadway\r\nPasseando pelo repertório da musa pop, o evento contará com canções como My All, Hero, Without You e Against All Odds, entre outras. Pela primeira vez, o projeto contará com dois duets, protagonizados por Myrthes Monteiro e Benét Monteiro e por Victor Moresco e Chiara Guttieri. Abner Depret, Gabriel Camilo e Thiago Perticarrari completam o elenco.\r\n\r\nA transmissão é gratuita e acontece a partir das 20h.', 3, 2, 13, 6, 2020),
(10, 'Repaginados, clubes do livro ganham adeptos de todas as idades em formato virtual', 'Mesmo com muita gente afastada de amigos e parentes por causa da pandemia do novo coronavírus, a leitura não precisa ser um hábito solitário. Se por um lado as pessoas têm menos perspectivas de sair das próprias casas, por outro, a tecnologia facilitou a interação entre leitores e propiciou o crescimento de um velho conhecido daqueles que não querem apenas viajar nas histórias contadas, mas compartilha-las com quem está na mesma página: o clube do livro.', 4, 3, 19, 3, 2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1C'),
(2, '2C'),
(3, '3C'),
(4, '1F'),
(5, '2F'),
(6, '3F'),
(7, '1A'),
(8, '2A'),
(9, '3A'),
(10, '1B'),
(11, '2B'),
(12, '3B');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Índices para tabela `escritor`
--
ALTER TABLE `escritor`
  ADD PRIMARY KEY (`codEscritor`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codNoticia`),
  ADD KEY `codEscritor` (`codEscritor`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `escritor`
--
ALTER TABLE `escritor`
  MODIFY `codEscritor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `escritor`
--
ALTER TABLE `escritor`
  ADD CONSTRAINT `escritor_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `escritor_ibfk_2` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `escritor_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `escritor_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codEscritor`) REFERENCES `escritor` (`codEscritor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
