-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2020 at 06:18 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gdg`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `C_ID` int(11) NOT NULL,
  `content` varchar(400) NOT NULL,
  `author` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `Post_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`C_ID`, `content`, `author`, `date`, `Post_ID`) VALUES
(28, 'Muy interesante!!', 'darioalejandrovv@gmail.com', '2020-11-04 11:40:31', '35'),
(29, 'Totalmente de acuerdo!!', 'darioalejandrovv@gmail.com', '2020-11-04 11:40:45', '34'),
(30, 'SIgan así!', 'darioalejandrovv@gmail.com', '2020-11-04 11:40:50', '34'),
(31, 'Fin al terrorismo, paz para todos!', 'darioalejandrovv@gmail.com', '2020-11-04 11:41:10', '32'),
(32, 'Interesante, lo haré!', 'darioalejandrovv@gmail.com', '2020-11-04 11:41:23', '36'),
(33, 'Buena recomendacion!', 'darioalejandrovv@gmail.com', '2020-11-04 11:41:38', '31');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `Post_ID` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `featured` varchar(200) NOT NULL,
  `category` varchar(30) NOT NULL,
  `author` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(10) NOT NULL,
  `visitors` int(5) NOT NULL,
  `scheduledate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`Post_ID`, `title`, `description`, `featured`, `category`, `author`, `date`, `status`, `visitors`, `scheduledate`) VALUES
(31, 'Series destacadas para disfrutar en noviembre', 'Un vistazo a las series destacadas que veremos en Latinoamérica este mes.\r\n\r\nSon muchas y variadas las opciones que tendremos a disposición en Latinoamérica en las plataformas de streaming en noviembre. Series nuevas y otras que regresan alimentarán las parrillas de programación con historias para todos los gustos. Dramas  comedias  aventuras y acción violenta son algunos de los géneros que estarán disponibles en el penúltimo mes de un año bastante particular. Aquí  algunas recomendaciones para tener en cuenta.\r\n\r\n‘Foodie Love’\r\nEsta comedia española sigue la vida de dos treintañeros  amantes de la comida  que después de conocerse en una aplicación de citas para foodies se embarcarán en un viaje gastronómico  aprendiendo el uno del otro por medio del jamón  el ramen y la alta cocina de todo el mundo. Sin embargo  mientras se unen por una devoción compartida al yuzu japonés y un disgusto por la pretensión foodie  sus inseguridades y dudas alimentadas por las cicatrices de sus relaciones anteriores pueden impedirles probar el amor verdadero. La serie es dirigida y escrita por la cineasta española Isabel Coixet.\r\n\r\n¿Dónde verla? La serie se estrena el 6 de noviembre por HBO y HBO GO.\r\n\r\n‘Belgravia\r\nDel creador de Downton Abbey  Julian Fellowes  llega un nuevo drama de época. La historia se desarrolla a comienzos del siglo XIX en Belgravia  uno de los barrios más exclusivos de Londres. La serie inicia cuando la familia Trenchard acepta la invitación al legendario baile organizado por la Duquesa de Richmond en honor del duque de Wellington  en vísperas de la Batalla de Waterloo. Los eventos sucedidos en aquella gala será el origen de un escándalo que cambiará la vida de los Trenchard en las siguientes décadas.\r\n\r\n¿Dónde verla? A partir del 9 de noviembre a las 9:00 p. m. en OnDIRECTV. Un capítulo semanal.\r\n\r\n‘Industry’ ’\r\n\r\nLena Dunham produce y dirige el primer episodio de este drama de HBO y BBC ambientado en el mundo de las altas finanzas que sigue a un grupo de jóvenes recién graduados que luchan por abrirse camino en el exigente mundo financiero de Londres  y que compiten por un ganarse un puesto en el prestigioso Pierpoint & Co  impulsados por la ambición  la juventud  el romance y las drogas. La serie explora cuestiones de género  raza  clase y privilegios en el lugar de trabajo  a medida que estos comienzan a forjar sus identidades dentro de un entorno de presión y mucha competitividad.\r\n\r\n¿Dónde verla? Desde el 9 de noviembre en HBO y HBO GO.', '28555.jpg', 'Entertainment', 'darioalejandrovv@gmail.com', '2020-11-04 11:30:19', 'publish', 2, '0000-00-00'),
(32, 'Austria y Francia: el odio como motor del terrorismo', 'Como pocas veces en la historia reciente  una parte representativa de Europa ha sido víctima de atentados dramáticos contra personas indefensas llevados a cabo por simpatizantes de algún grupo perteneciente a la red Al Qaeda o del Estado Islámico como acaba de suceder en Austria  donde una agresión inédita dejó cuatro muertos luego de que un hombre abriera fuego sobre un grupo de personas que disfrutaba de las últimas horas al aire libre  antes de volver al confinamiento ordenado a causa de la pandemia. Paralelamente  Francia aún sufre la muerte trágica y dramática de Samuel Paty  profesor de historia en secundaria  decapitado por mostrar a sus alumnos una caricatura de Mahoma. El horrendo crimen trae a la memoria la coyuntura crítica de 2006  cuando medios impresos de Dinamarca y Noruega publicaron una serie de caricaturas de Mahoma  una representación proscrita por buena parte del islam.\r\n\r\nTodo empezó en Dinamarca cuando un caricaturista del diario Politiken confesó públicamente las dificultades para realizar un dibujo con ilustraciones del profeta para niños y su testimonio alcanzó tal envergadura que  diarios daneses y noruegos  Jyllans Postem y Magazinet  publicaron dibujos en las que aparecía Mahoma provocando una tormenta política con protestas diplomáticas del mundo árabe y musulmán y anuncios de boicots contra productos de esos países. La ola de protestas (varias terminaron en violencia) se extendió por Medio Oriente y el Sudeste Asiático y  derivó en amenazas contra varios medios europeos que en solidaridad publicaron las caricaturas  y contra ciudadanos  además de los nórdicos  de Alemania y Francia. Esto inauguró un pulso entre algunos medios europeos que veían en las protestas una intimidación a la libertad de expresión y algunos países musulmanes  e incluso no religiosos que consideraban las caricaturas como una innecesaria provocación.\r\n\r\nCharlie Hebdó  semanario satírico francés  desempeñó un papel importante  pues en varios episodios de la Primavera Árabe publicó caricaturas que tocaban temas sensibles para el islam y que llevaron a decenas de manifestaciones violentas e intimidatorias contra el medio. En enero de 2015  el ataque contra su sede en París  en el que murieron doce personas  puso en evidencia la complejidad del problema. El atentado fue reivindicado no por el recién creado  en ese entonces  Estados Islámico como todo indicaba  sino por Al Qaeda en la Península Arábiga  perteneciente a la red globalmente conocida y responsable de los ataques terroristas del 11 de septiembre de 2001.\r\n\r\nEl crimen de odio que acabó con la vida del profesor Samuel Paty en Francia ha puesto en evidencia los enormes riesgos a los que se enfrenta el ideal de un diálogo de civilizaciones en el que prevalezca la libertad de expresión. Los atentados inspirados en la apología a las discriminaciones religiosas vienen marcando la pauta en Europa (Alemania  Austria  Bélgica  Francia  España y Turquía  entre otros) con un preocupante común denominador: acciones realizadas por jóvenes europeos seducidos por grupos fundamentalistas musulmanes y con una convicción vehemente sobre la legitimidad de ideas absolutamente incompatibles con el humanismo que buena parte del mundo cree reivindicar.\r\n\r\nClaro está  en cada atentado en territorio europeo aparecen los testimonios velados de quienes justifican esta violencia o la relativizan recordando que en otras latitudes menos apreciadas por Occidente  como Asia Central  Medio Oriente o el África Subsahariana  han muerto muerto miles de personas de la misma manera  sin que los medios hagan semejantes despliegues para concienciar acerca de las víctimas de la intolerancia religiosa. En realidad  los medios internacionales  sobre todo los europeos  a quienes se acusa de ignorar ese tercer mundo  suelen reportar con detalle atentados de este tipo  en especial en la zona del Sahel  donde en países como Nigeria  Níger y Mali en el último tiempo abundan las masacres  torturas y secuestros. De igual forma  informan sobre atentados en el Sudeste Asiático  Medio Oriente y otras zonas golpeadas por crímenes basados en este odio. Por tanto  la postura que relativiza el dolor europeo es injustificable pero cada vez más frecuente  por lo que es urgente entender que no hay zona del mundo que se encuentre al abrigo del tentador discurso basado en los odios dogmáticos bien sea por la etnia  la religión o las interpretaciones históricas. Asomarse  por doloroso que sea  a la trágica muerte del profesor Paty constituye un deber inexcusable para entender que ninguna libertad se ha terminado por conquistar en ese turbulento siglo XXI.', 'download.jfif', 'Entertainment', 'darioalejandrovv@gmail.com', '2020-11-04 11:33:14', 'publish', 2, '0000-00-00'),
(33, 'Medio título en el bolsillo para Roglic', 'El segmento de mayor dureza de la Vuelta a España concluyó dejando a un gran candidato para imponerse en Madrid  Primoz Roglic. Con etapas ideales para el descuento favorable para los escaladores  el esloveno sacó la casta y no dio espacio a los demás favoritos para que impusieran las condiciones en su terreno. Nuevamente  el discurso tradicional de esperar a los grandes finales en alto para ver el poderío de los trepadores quedó en nada  ya hoy en día son mejores en la montaña esos corredores versátiles cuya gran especialidad no está cuando la carretera se empina  que aquellos de los que se alardea su gran talento ahí.\r\n\r\nRoglic afrontó con una actitud plausible esas etapas. El haber cedido un tiempo importante en Formigal  lo llevó a correr con más ofensividad y presión. Entendió que está contra un rival complejo al que no se le puede dar margen  por lo que su apuesta radicó en descontar esa brecha y hacerla lo más mínima posible. Para lograrlo hizo gala de esas virtudes que lo hacen sobresalir  como esa sangre fría y la punta de velocidad para obtener bonificaciones que facilitasen esa tarea. Aunque no esté de líder  la desventaja es escasa y eso es un motivo para estar contento  más aun tomando en cuenta su indecible sufrimiento en el Angliru. El perder poco tiempo en ese tipo de situaciones es una gran victoria. Ahora tiene una crono para ir sentenciando esto. Es cierto que la sombra del Tour sigue presente  pero honestamente es complicado que eso se repita en esta Vuelta por una razón sencilla  porque no hay ningún corredor que haya mostrado síntomas de estar en la capacidad de realizar una actuación estratosférica como la de Pogacar  ni que tampoco tenga un moldaje y características similares a él. Roglic sigue siendo el especialista  y  por ende  lo normal sería que la diferencia que tome sea significativa. El martes debe ratificarse.', 'ROGLIC-TITULO-EN-EL-BOLSILLO.jpg', 'Sports', 'darioalejandrovv@gmail.com', '2020-11-04 11:34:44', 'publish', 0, '0000-00-00'),
(34, 'Entrevista con Gabriela Andrade Gorab', 'Platícanos un poco de ti. ¿Qué estudiaste?\r\n\r\nSoy una persona cuyo enfoque principal es la familia  vengo de un linaje de médicos sub-especialistas  nunca pensé en esta profesión  siempre me he inclinado a la creatividad. Soy muy observadora  optimista y risueña. Estudié una Licenciatura en Artes con especialidad en Comunicación  Publicidad  Cine y Televisión en Bond University en Australia  donde viví 8 años. Más adelante hice un Programa de Emprendeduria por MIT; la verdad es que no paro de estudiar  creo que la vida es un largo aprendizaje  he hecho varios cursos  diplomados y seminarios por distintas universidades e instituciones tanto nacionales como internacionales  incluyendo uno de economía con la ganadora la Nobel de Economía (2019) Esther Duflo.', 'gaby-copy.jpg', 'Entertainment', 'darioalejandrovv@gmail.com', '2020-11-04 11:35:57', 'publish', 3, '0000-00-00'),
(35, 'Dios nos habla por medio de nuestros sueños', 'Dios nos habla por medio de nuestros sueños. Esta es una verdad tan antigua como la humanidad. Al referirme a Dios no lo hago desde una perspectiva religiosa  aunque yo profeso la mía en particular. Estimo  sin embargo  que más allá del concepto que podamos tener de él  Dios existe independientemente del nombre que le hayamos asignado (Yavé  Jehová  Alá  etc.). En ese contexto prefiero llamarlo “el Dios de cada uno”. \r\nLa Biblia  el libro sagrado de la cristiandad  trae numerosos ejemplos de este tipo de comunicación de Dios con el hombre tanto en el Antiguo como en el Nuevo Testamento. En ella vemos también la acción de dos personajes que se destacaron gracias al don que recibieron para interpretar los sueños. El primero fue José  el hijo de Jacob  quien interpretó los sueños de Faraón. El segundo  Daniel  reveló e interpretó los sueños de Nabucodonosor durante el exilio de las tribus de Israel en Babilonia. Por otro lado  algunos textos budistas y taoístas tratan el punto de manera similar. Entonces  no es una novedad afirmar que Dios le habla al hombre mediante los sueños.  \r\nLos sueños son un tema de mucha trascendencia en la sicología y la medicina. Constituyen  además  una arista fundamental del psicoanálisis. Sin embargo  debo aclarar que mi enfoque al respecto está desprovisto de teorías científicas porque no tengo formación académica al respecto. Sencillamente tengo un don que me permite descifrar las imágenes de los sueños e interpretar el mensaje que contienen.\r\nTenía seis años cuando  por primera vez  interpreté un sueño. En ese momento  dada mi corta edad  no tenía conciencia lo que estaba haciendo pero lo que dije ocurrió exactamente según mis palabras. Sucedió una mañana cuando mi madre le contaba a una de mis tías lo que había soñado la noche anterior.\r\nYo estaba cerca de ellas  escuché las palabras de mi madre y dije desprevenidamente que mi hermano menor  que era un bebé en ese momento  iba a sufrir un accidente. A cambio recibí un regaño pero en horas de la tarde de ese mismo día el niño resultó herido cuando el biberón de vidrio se rompió al caer de sus manos. A partir de ese momento  hasta el presente  sé que tengo la capacidad de interpretar los sueños.\r\nPuedo hacerlo  como lo dije al principio  sin haber estudiado ni investigado nada al respecto y no es posible para mí explicar cómo lo hago. Solo sé que cuando escucho o leo la narración de un sueño  en mi cerebro se van formando unas imágenes  como si fuera una película  que me muestran lo que está ocurriendo con ese soñador. Por eso considero mi deber aclarar que sobre el tema solo hablo de lo que he vivido  de lo que he sentido y de lo que he comprobado.\r\nMi experiencia me permite afirmar de manera categórica que no existen códigos preestablecidos para interpretar los sueños. En consecuencia  no reconozco autoridad alguna en este sentido a los famosos “diccionarios de sueños”. Quienes los escriben pueden estar inspirados por sus buenas intenciones pero conducen a los lectores por caminos equivocados porque los mensajes de los sueños son exclusivos para el soñador. Por eso no es posible decir de manera generalizada  por ejemplo  que “soñar con un muerto significa que alguien se va a casar” y otras cosas por el estilo. ', 'Una-persona-jura-haber-filmado-a-Dios-caminando-entre-dos-nubes-1920-2.jpg', 'Health', 'darioalejandrovv@gmail.com', '2020-11-04 11:37:03', 'publish', 3, '0000-00-00'),
(36, 'Claves para mejorar la seguridad durante el trabajo remoto', 'Mantener la seguridad de las conexiones es uno de los asuntos que más preocupan a las empresas y organizaciones durante este tiempo en el que una gran cantidad de sus empleados ha tenido que realizar sus funciones a través del teletrabajo o trabajo remoto debido a la pandemia.\r\n\r\nEsto se debe a que muchos delincuentes han explotado las debilidades de las compañías para robar datos e información personal.', '5fa14fce63599.jpeg', 'Technology', 'darioalejandrovv@gmail.com', '2020-11-04 11:38:22', 'publish', 2, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UID`, `Name`, `Email`, `Password`, `Created`) VALUES
(6, 'Dario Alejandro', 'darioalejandrovv@gmail.com', '06c57e7ff7e76ec5691fbd20cd6bcf1b', '2020-11-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`Post_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `C_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `Post_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
