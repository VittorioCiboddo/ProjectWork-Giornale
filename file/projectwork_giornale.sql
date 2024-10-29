-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Ott 29, 2024 alle 15:32
-- Versione del server: 10.1.8-MariaDB
-- Versione PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectwork_giornale`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'vitto95', 'ciao123?'),
(2, 'rick96', 'ciao123?'),
(3, 'ale00', 'ciao123?'),
(4, 'marco99', 'ciao123?'),
(5, 'vito04', 'ciao123?');

-- --------------------------------------------------------

--
-- Struttura della tabella `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome`) VALUES
(1, 'Intelligenza Artificiale'),
(2, 'Cyber Security'),
(3, 'Innovazioni'),
(4, 'Robotica');

-- --------------------------------------------------------

--
-- Struttura della tabella `evento`
--

CREATE TABLE `evento` (
  `id_evento` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `luogo` varchar(50) NOT NULL,
  `data_inizio` datetime NOT NULL,
  `data_fine` datetime NOT NULL,
  `immagine` longtext,
  `fk_id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `evento`
--

INSERT INTO `evento` (`id_evento`, `nome`, `luogo`, `data_inizio`, `data_fine`, `immagine`, `fk_id_categoria`) VALUES
(1, 'Cyber Security Summit', 'Milano', '2024-02-28 10:00:00', '2024-02-29 17:00:00', NULL, 2),
(2, 'AI Festival', 'Milano', '2024-02-14 10:30:00', '2024-02-15 18:30:00', NULL, 1),
(3, 'Sicurezza ICT', 'Milano', '2024-02-28 09:00:00', '2024-02-28 19:00:00', NULL, 2),
(4, 'Cybersec Roma 2024', 'Roma', '2024-03-06 09:00:00', '2024-03-07 19:00:00', NULL, 2),
(5, 'DX Day', 'Bologna (e online)', '2024-03-14 09:00:00', '2024-03-14 18:30:00', NULL, 3),
(6, '.NET Conference', 'Roma (e online)', '2023-03-22 10:00:00', '2023-03-22 17:30:00', NULL, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `notizia`
--

CREATE TABLE `notizia` (
  `id_notizia` int(11) NOT NULL,
  `titolo` varchar(150) NOT NULL,
  `descrizione` longtext NOT NULL,
  `data_pubblicazione` date NOT NULL,
  `immagine` longtext,
  `link_video` varchar(50) DEFAULT NULL,
  `fk_id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `notizia`
--

INSERT INTO `notizia` (`id_notizia`, `titolo`, `descrizione`, `data_pubblicazione`, `immagine`, `link_video`, `fk_id_categoria`) VALUES
(1, 'Intelligenza artificiale, una rivoluzione cognitiva', 'La prestigiosa rivista scientifica Nature ha appena pubblicato un articolo intitolato “The case for human-AI interaction as System 0 thinking”. Chi scrive, insieme a un team di ricercatori (Marianna Ganapini, Enrico Panai, Mario Ubiali), sono tra gli autori che affrontano il complesso argomento della relazione essere umano-AI, utilizzando un punto di vista multidisciplinare.\r\nL’articolo propone una nuova teoria su come l’intelligenza artificiale stia cambiando il modo in cui pensiamo e prendiamo decisioni. Sosteniamo che l’interazione tra esseri umani e sistemi di AI avanzati stia creando un nuovo sistema cognitivo, che chiamiamo “Sistema 0”.\r\nPer capire il concetto di Sistema 0 è utile fare un passo indietro e ricordare la teoria dei due sistemi di pensiero proposta dal Premio Nobel Daniel Kahneman. Secondo Kahneman le persone per prendere decisioni e affrontare i problemi utilizzano due diversi sistemi cognitivi: il Sistema 1, caratterizzato da pensiero rapido, intuitivo e automatico, e il Sistema 2, che rappresenta un pensiero più lento, analitico e riflessivo.\r\nIl Sistema 0 si riferisce alla capacità dell’AI di svolgere compiti cognitivi complessi in modo autonomo e indipendente dalla nostra mente biologica. Questi compiti includono la gestione di grandi quantità di dati, l’elaborazione di informazioni e la produzione di decisioni o suggerimenti su base algoritmica. Tuttavia, a differenza del Sistema 1 e del Sistema 2 che sono incarnati, il Sistema 0 è esterno al nostro corpo, è inorganico e non possiede capacità intrinseche di dare significato alle informazioni che elabora. Questo significa che l’AI può analizzare e generare risposte senza realmente comprendere il contenuto su cui lavora, lasciando agli esseri umani il compito di interpretare e attribuire significato ai risultati ottenuti.\r\n', '2024-09-18', NULL, NULL, 1),
(2, 'Pagamento pensioni nei prossimi anni: le previsioni dell’Intelligenza Artificiale', 'La preoccupazione di molti lavoratori, soprattutto giovani, è se l’INPS riuscirà a garantire loro una pensione sufficiente e sicura quando sarà il momento di smettere di lavorare. Per rispondere a questa domanda, bisogna analizzare il sistema pensionistico attuale, i meccanismi di calcolo delle pensioni e le previsioni demografiche ed economiche future che potrebbero influenzare la sostenibilità dei conti pubblici.\r\nNon è raro che lavoratori più o meno giovani ci scrivano per avere rassicurazioni sulla copertura del pagamento pensioni quando sarà il loro turno di smettere di lavorare.\r\nProprio perché siamo spinti da questa paura, oggi certi dubbi iniziano a sorgere prima. Lo abbiamo chiesto all’Intelligenza Artificiale: ecco le sue previsioni sul futuro del pagamento pensioni.\r\n', '2024-10-03', NULL, NULL, 1),
(3, 'I vantaggi della nuova Intelligenza Artificiale nelle diverse divisioni aziendali', 'I contesti aziendali in cui l’Intelligenza Artificiale può garantire il proprio supporto attivo sono pressoché tutti. Dalla divisione che si occupa del rapporto con i clienti a quella commerciale, dal marketing al canale ecommerce fino alla gestione del magazzino, l’Intelligenza Artificiale oggi rappresenta un aiuto concreto ai team aziendali, non solo per liberarli dalle attività quotidiane ripetitive e a basso impatto strategico, ma rappresentando una vera risorsa digitale aggiuntiva.\r\nDurante l’ultimo Dreamforce 2024, Salesforce ha presentato Agentforce, la terza generazione di strumenti basati sull’Intelligenza Artificiale che si configura come una famiglia di agenti applicativi “autonomi e in grado di ragionare” subito pronti all’uso nei diversi ambiti aziendali.\r\nSecondo la ricerca Salesforce Trends in AI Report si stima che il 41% del tempo dei dipendenti sia speso in lavori ripetitivi e a basso impatto, inoltre il 65% ritiene che l’AI generativa gli consentirà di essere più strategici. Ed è da queste rilevazioni che parte Agentforce.\r\n \r\n\r\n \r\nIl gruppo di soluzioni Salesforce vuole rappresentare un aiuto ai team sovraccarichi di lavoro grazie alla possibilità di scalare la capacità su richiesta, in modo che le persone possano concentrarsi su obiettivi di maggior valore strategico. Con la famiglia di agenti Agentforce, Salesforce favorisce l’idea di una vera forza lavoro ibrida composta da risorse umane e AI agent, vediamo in che modo.\r\n', '2024-08-30', NULL, NULL, 1),
(4, 'Ecco come l’Intelligenza artificiale rivoluzionerà il lavoro', 'L’Intelligenza Artificiale farà crescere la domanda di lavoro nel nostro Paese. Il rovescio della medaglia è che il 75% dei lavoratori dovrà aggiornarsi. Entro il 2027, le competenze digitali saranno necessarie per il 56% dei lavori richiesti. Le più richieste nel mercato nei prossimi anni saranno le competenze tecniche e trasversali. È quanto emerge da “Intelligenza Artificiale e trasformazione delle organizzazioni e del lavoro. Sfide e opportunità in otto settori”, il rapporto commissionato da Fastweb a EY, sull’impatto dell’IA sulle professioni.\r\nL’IA porterà nuovi posti di lavoro da qui al 2030, un dato che tranquillizzerà le persone che temono che la tecnologia possa avere effetti negativi sull’occupazione. Non poche, se pensiamo che il 77% dei lavoratori in Italia teme gli impatti dell’IA sul mercato del lavoro. È solo uno degli ostacoli all’affermazione dell’IA, che ad oggi affronta non pochi problemi. Infatti, tra il 60% e l’80% dei programmi di IA aziendali non sono riusciti ad integrare l’IA in modo strutturale. Un tasso di fallimento quasi doppio rispetto a progetti simili per tecnologie IT aziendali, secondo EY.\r\nUn dato che suggerisce che la formazione professionale sarà sempre più centrale nei prossimi anni. Da qui al 2030 fino al 75% dei profili professionali dovranno ricevere formazione per l’upskilling o il reskilling delle proprie competenze, secondo le stime di EY. Inoltre, la richiesta di figure professionali tecniche continuerà a essere sostenuta nei settori Banking & Assicurazioni, ICT, Comunicazione e media, Pubblica Amministrazione, Sanità, Istruzione e Formazione, Manufactoring e Retail.\r\n', '2024-09-27', NULL, NULL, 1),
(5, 'Il ruolo dell’intelligenza artificiale in medicina: incontro a Trapani', 'Si terrà martedì 29 ottobre alle ore 17, presso la sala conciliare del Palazzo del Governo a Trapani, la conferenza sul tema “Il ruolo dell’intelligenza artificiale in sanità e in medicina: vantaggi, limiti e rischi nella pratica clinica, nella ricerca e nell’organizzazione dei servizi”, organizzata dall’AMMI (Associazione Mogli Medici Italiani) sezione di Trapani. L’evento, di grande attualità, esplorerà l’impatto dell’intelligenza artificiale (IA) sul settore sanitario, con un focus sulle sue applicazioni nella diagnosi, nel trattamento delle malattie, e nell’organizzazione dei servizi sanitari. Tra i relatori, il Dott. Riccardo Rizzo, ricercatore del CNR; il Prof. Giuseppe Marceca, medico legale dirigente generale medico della Polizia di Stato a.r.; e il Dott. Francesco Lucido, responsabile dell’Osservatorio Infanzia e Adolescenza dell’ASP di Trapani. A moderare l’incontro sarà il Dott. Gaetano Vivona, direttore del Dipartimento di Salute Mentale dell’ASP di Trapani.\r\n\r\n \r\nLa Dott.ssa Maria D’Amico, presidente dell’AMMI sezione di Trapani, ha commentato: “L’intelligenza artificiale è già parte della nostra quotidianità e sta iniziando a rivoluzionare anche il settore medico. Attraverso questa conferenza, vogliamo sensibilizzare i professionisti della salute e il pubblico sui vantaggi e sui rischi legati all’uso dell’IA, affinché possa essere integrata in modo consapevole nella pratica clinica. Il potenziale di questa tecnologia è immenso: dall’analisi dei dati alla personalizzazione delle cure, l’IA può davvero migliorare la vita dei pazienti e ridurre i costi sanitari. Tuttavia, è importante discutere anche dei limiti e delle sfide etiche, affinché i progressi siano utilizzati in modo responsabile”.\r\n', '2024-10-14', NULL, NULL, 1),
(6, 'SentinelOne, Cecchi: “La cybersecurity deve diventare una sharing responsibility”', 'intelligenza artificiale sta sparigliando le carte della cybsersecurity. E per governare questa trasformazione disruptive serve spingere su una shared responsibility. Ne è convinto Paolo Cecchi, Sales Director della Mediterranean Region di SentinelOne, che delinea a Corcom gli aspetti più rilevanti di questo scenario e spiega come le aziende si devono attrezzare per essere “a prova di hacker”. Con un occhio alla Nis2, la nuova direttiva Ue che aggiorna le regole sulla sicurezza informatica.\r\nL’AI sta ridisegnando il settore della cybersecurity. Cosa ci dobbiamo aspettare?\r\nIl cambiamento è già in atto. Stiamo assistendo a una crescita esponenziale degli attacchi informatici, sia dal punto di vista numerico sia da quello della sofisticazione, proprio determinato dall’avvento dell’intelligenza artificiale che consente agli “attaccanti” di rendere le intrusioni più pericolose anche disponendo di un livello più basso di “skill”. In pratica l’AI fa gran parte del lavoro per loro.\r\nLe aziende sono pronte a reagire di fronte a questo scenario?\r\nSono due i fronti che le aziende devono attenzionare: il consolidamento, ovvero “migrare” verso una piattaforma cyber il più possibile unificata, e l’automazione che consente di utilizzare sistemi veloci nel rilevamento e nella risposta agli attacchi. Le aziende sono pronte o meglio, a queste esigenze seguono investimenti ad hoc? In parte, direi. Ci sono molte aziende che preferiscono terminare il ciclo finanziario degli investimenti effettuati e dunque non mettono sul piatto altre risorse. Una situazione, questa, che rilevo soprattutto nei Paesi del Sud Europa mentre le imprese nel Nord Europa sono più pronte al cambiamento.\r\n', '2024-10-06', NULL, NULL, 2),
(7, 'La cybersecurity delle aziende a CyberTech Europe 2024', ' L’8 e il 9 ottobre a Roma si è tenuta la settima edizione dell’evento CyberTech Europe, che ha raccolto esperti, aziende ed enti governativi che operano nel campo della cybersecurity. L’incontro, definito da conferenze sul tema e dalle rappresentanze di molte società, è stato un’occasione per fare il punto sulla sicurezza informatica delle imprese e sulle novità tecnologiche per combattere l’azione dei cyber criminali.\r\nFondata nel 2014, CyberTech è nata come piattaforma di networking globale nel settore della cybersecurity e ha organizzato in tutto il mondo numerosi eventi legati al settore. Da Tel Aviv a New York, da Roma a Dubai, a Tokyo e oltre, le conferenze e le esposizioni di CyberTech sono diventate un riferimento per la sicurezza delle aziende e degli Stati.\r\nQuesto evento offre lo spunto per passare in rassegna le tematiche della cybersecurity per le aziende, un tema sempre più importante, visto il continuo aumento degli attacchi informatici ai danni delle società.\r\n', '2024-09-30', NULL, NULL, 2),
(8, 'MSSP: gli eroi della cybersecurity', 'Negli ultimi anni, la sicurezza informatica è diventata una delle priorità strategiche per le aziende, riflettendo un panorama globale in cui le minacce digitali sono sempre più sofisticate e pervasive. Secondo l’ultimo rapporto del Clusit, nel 2023 l’Italia ha registrato un aumento significativo degli attacchi informatici gravi, con una crescita di oltre il 15% rispetto all’anno precedente. Questo trend non è isolato: i cyber-attacchi sono sempre più frequenti e mirati, e coinvolgono non solo grandi aziende, ma anche piccole e medie imprese, che spesso si trovano impreparate ad affrontare minacce complesse.\r\nLe tecniche di attacco si evolvono costantemente, e spaziano dal ransomware al phishing fino agli attacchi DDoS e alle compromissioni della supply chain. Il Clusit evidenzia come i settori più colpiti siano quello manifatturiero, la sanità, i servizi finanziari e le infrastrutture critiche, che rappresentano bersagli particolarmente sensibili per i cybercriminali. La pandemia ha contribuito a esacerbare la situazione, accelerando la trasformazione digitale e ampliando le superfici di attacco, con la forte espansione del lavoro da remoto e l’adozione di strumenti digitali poco sicuri.\r\n', '2024-08-28', NULL, NULL, 2),
(9, 'Cybersecurity, perché tutti sono a rischio spionaggio: «Bastano poche migliaia di euro»', 'Non solo politici e vip. Sotto la lente d’ingrandimento degli investigatori privati possono finirci tutti. E chi pensa che l’inchiesta della Direzione distrettuale antimafia di Milano sui dossier abusivi realizzati dalla società di sicurezza e investigazioni “Equalize Srl” di Enrico Pazzali sia una vicenda che ha a che fare soltanto con politica e gossip, si sbaglia. Gli atti dell’indagine, come scrive La Verità, hanno svelato le modalità con cui la società operava e alla quale avrebbero potuto rivolgersi tutti. Non solo manager, ma anche liberi professionisti, commercianti, piccoli imprenditori. Per separazioni, divorzi, presunte corna, dipendenti infedeli. \r\nE tutto ciò è possibile, come ha svelato l’inchiesta, grazie a una banca dati molto riservata – ovvero lo Sdi, Sistema d’Indagine – trasformato da strumento per le Forze dell’ordine a dispositivo per lo spionaggio. Utilizzato, quest’ultimo, come precisano gli inquirenti, per produrre 52.811 file contenenti informazioni “sensibili”. Stando alle intercettazioni, infatti, il gruppo di Pazzali poteva accedere abusivamente a sezioni riservate, compresi i dati su persone e beni. Ma non solo: la società era, inoltre, in grado di accedere illegalmente anche all’Anagrafe nazionale della popolazione residente, che contiene dati protetti come gli stati di famiglia e le informazioni personali di tutti i cittadini. Tra i clienti figurano, tra gli altri, avvocati, ma anche chi ha fatto ricorso alla società per accedere ai dati sanitari riservati di un cliente coinvolto in una causa di lavoro. \r\n', '2024-06-10', NULL, NULL, 2),
(10, 'Cyber attacchi, l’Italia è nel mirino: ecco le sfide e le strategie di difesa', 'Secondo Check Point Research (CPR), nel terzo trimestre del\r\n2024, l’Italia ha registrato un incremento dei cyber attacchi a tripla cifra (+115%) rispetto allo stesso periodo dell’anno precedente. Dati confermati anche al Security Summit di Verona.\r\n“Anche gli ultimi dati più recenti sui cyber-attacchi a livello mondiale confermano quello che il Clusit evidenzia da anni nei suoi rapporti – commenta Giorgio Sbaraglia, consulente aziendale cyber security, membro del Comitato Direttivo Clusit -: l’Italia è sempre nei primissimi posti in questa poco invidiabile classifica dei paesi più attaccati, anzi risulta ‘sovraesposta’ per numero di attacchi subiti rispetto alla dimensione del suo PIL nazionale“.\r\nEcco le sfide da affrontare ai tempi della NIS2, DORA e AI Act e le strategie di difesa per proteggersi più efficacemente.\r\nIn Italia la media degli attacchi informatici settimanali per organizzazione ha toccato quota 2.301 attacchi in media per settimana, contro il record globale di 1.876 unità (il massimo spetta all’Africa con una media di 3.370 attacchi a settimana).\r\n', '2024-02-03', NULL, NULL, 2),
(11, 'Gli umanoidi in gara nel deserto corrono come la Cina nella robotica', 'Se "la Cina è vicina", la sviluppo della sua robotica lo è ancora di più. Gli esperti occidentali hanno già drizzato le orecchie, mentre i ricercatori e gli imprenditori orientali presagiscono un nuovo business levarsi all''orizzonte con sempre maggiore forza. Già, perché - come scrive il South China Morning Post - Pechino ha rivelato i suoi (temerari) piani per lanciare la produzione di massa di robot umanoidi avanzati entro il 2025.\r\nDelineata in un documento del Ministero dell''Industria e dell''Informazione Tecnologica (MIIT), l''iniziativa vede le autorità incitare il comparto manifatturiero del paese a "stabilire un sistema di innovazione per i robot umanoidi, realizzare cambi di passo in diverse tecnologie chiave e assicurare la fornitura sicura ed efficace di componenti essenziali". L''intento della Cina? Collocarsi come leader mondiale nella tecnologia da qui a tre anni.\r\nIl MIIT precisa che l''industria nazionale dovrebbe sviluppare il "cervello", il "cervelletto" e gli "arti" degli umanoidi, grazie ai continui progressi dell''intelligenza artificiale. Puntualizzando altresì l''urgenza che tali robot siano operativi (anche) in condizioni complesse e rischiose. La robotica umanoide in Cina non come "tendenza" di mercato, bensì quale investimento a lunga gittata; si prevede infatti che in futuro questo comparto possa determinare un mercato dal valore di trilioni di yuan (miliardi di euro).\r\nDalla cucina di un appartamento - con il robot Unitree G1, prodotto dall''azienda cinese Unitree Robotics e in vendita al "modico" prezzo di 16mila dollari, che non solo prepara i toast, stappa le bottiglie e apre le noci ma ha anche stabilito un nuovo record mondiale per il salto in lungo da fermo (toccando l''incredibile distanza di 1,4 metri, come dimostra il video sul canale Youtube dell''azienda) - al nuovo umanoide Star1 (alto 171 centimetri e pesante 65 chili), sviluppato da Robot Era (realtà sempre cinese) che ha toccato la velocità record di oltre 8 miglia orarie (circa 13 km/h) durate un test nel deserto del Gobi. La dimostrazione ha visto due modelli Star1 sfidarsi su differenti tipi di terreni, con uno dei due che "indossava" scarpe da ginnastica (l''altro invece correva a "piedi nudi"), per migliorare le prestazioni.\r\n', '2024-07-24', NULL, NULL, 4),
(12, 'Drone Contest: dalla robotica collaborativa nasce la sinergia tra università e imprese', 'Il Drone Contest di Leonardo, giunto quest''anno alla sua quinta edizione, non è solo una gara di robotica dedicata a studenti e dottorandi, ma una piattaforma di sviluppo tecnologico e di collaborazione tra università e imprese. La competizione, nata con l’idea di promuovere l’open innovation e di valorizzare le applicazioni dell’intelligenza artificiale applicata ai sistemi autonomi, è stato organizzata in partnership con sette università italiane di eccellenza, tra cui il Politecnico di Milano, il Politecnico di Torino e l’Università di Roma Tor Vergata. Ogni anno, i partecipanti sono chiamati a sfidarsi in scenari simulati - senza godere l’ausilio del segnale Gnss, il Global Navigation Satellite System - sviluppando soluzioni robotiche avanzate che possano essere applicate a contesti reali, come il monitoraggio di aree post-disastro o la sorveglianza di ambienti complessi.\r\nQuest''anno, il contest si è svolto all''interno di Dronitaly, la fiera di riferimento per i droni civili a uso professionale, organizzata da BolognaFiere Water&Energy dal 9 all''11 ottobre scorsi. La sfida è stata caratterizzata dall''interazione tra droni e robot terrestri, progettati per cooperare nel riconoscere obiettivi, superare ostacoli e raccogliere informazioni vitali per il completamento delle missioni in autonomia.\r\n"Il Drone Contest nasce dalla volontà di collaborare con il sistema universitario italiano, soprattutto nell’ambito della guida autonoma", ha evidenziato a Wired Moira Bellachioma, responsabile per Leonardo dell’organizzazione del Drone Contest. "Questa edizione ha visto il focus sugli agenti eterogenei, con l''integrazione di robot terrestri e droni aerei per ricostruire mappe e identificare target".\r\n', '2024-09-11', NULL, NULL, 4),
(13, 'Sfide della robotica in medicina, incontro con Edoardo Lamon', 'Gli Amici dell’Acquario, nell’ambito dei Mercoledì Scienza che da 29 anni organizzano, ospitano mercoledì 30 ottobre 2024 Edoardo Lamon del Dipartimento di Ingegneria e Scienza dell’Informazione di Trento per parlare delle Sfide della robotica in medicina. L''incontro si svolge alle ore 17 presso l’Auditorium dell’Acquario di Genova, con ingresso gratuito.\r\nLa telemedicina è comunemente definita come la capacità di fornire servizi di assistenza sanitaria, eliminando la necessità di visite di persona. Questo paradigma è particolarmente utile per raggiungere aree geograficamente remote e ha guadagnato terreno durante le pandemie COVID-19 per l’ovvia riduzione del rischio di trasmissione di agenti patogeni tra pazienti e personale medico. I vantaggi riconosciuti di questo approccio sono un maggiore comfort per i pazienti e una riduzione dei costi sia per i pazienti che per il servizio sanitario.\r\nLa frontiera più avanzata della telemedicina è la possibilità per il medico di eseguire attività diagnostiche complesse che richiedono il contatto fisico con il paziente. Una soluzione promettente per questo tipo di attività è la telerobotica, in cui un sistema robotico interagisce con il paziente ed è controllato o supervisionato a distanza da un medico. Le applicazioni mediche della telerobotica sono considerate tecnicamente impegnative perché richiedono l’integrazione di diversi strumenti, come la realtà virtuale, le interfacce aptiche, un controllo accurato e il ritorno di forza.\r\n', '2024-10-05', NULL, NULL, 4),
(14, 'Chirurgia robotica: all’Ospedale di Nocera apre il nuovo Blocco Operatorio potenziato con l’alta tecnologia', 'Mercoledì 30 ottobre 2024, alle ore 10:30, presso l’ospedale di Nocera Inferiore, si terrà l’inaugurazione del Blocco Operatorio e la contestuale attivazione del robot “da Vinci”, primo robot chirurgico pubblico di cui si dota l’Asl  Salerno.\r\nTale avanzato sistema robotico offre alla chirurgia mininvasiva nuove possibilità di cura ed apre nuove prospettive alla robotica chirurgica supportata dall’intelligenza artificiale. Le sue applicazioni spazieranno dall’Urologia alla Ginecologia, dalla Chirurgia Toracica alla Chirurgia Generale.\r\nUna soluzione all’avanguardia, che consentirà di migliorare le performance dei chirurghi e ridurre nel contempo le sofferenze per i pazienti sottoposti a procedure chirurgiche.\r\nParteciperanno alla cerimonia il Vescovo della Diocesi Nocera Mons. Sarno Giuseppe Giudice, il Sindaco di Nocera Inferiore avv. Paolo De Maio, il Direttore Generale dell’Asl Salerno ing. Gennaro Sosto, il Direttore Sanitario Asl Salerno dott. Primo Sergianni, il Direttore Amministrativo Asl Salerno dott. Germano Perito, il Direttore Sanitario p.o.  Umberto I di Nocera Inferiore d.ssa Rosalba Santarpia, e il Direttore del Dipartimento di Chirurgia Generale e Urologia prof. Roberto Sanseverino.\r\nConcluderà i lavori il presidente della Regione Campania on. Vincenzo De Luca.', '2024-10-13', NULL, NULL, 4),
(15, 'Meccanizzazione agricola, robotica, digitalizzazione, smart irrigation: a Montichiari l''agricoltura del futuro', 'È stata inaugurata ufficialmente questa mattina, 26 ottobre, al Centro Fiera del Garda la 96esima edizione della FAZI, la Fiera Agricola Zootecnica Italiana di Montichiari. Meccanizzazione agricola, robotica, digitalizzazione, soluzioni per la zootecnia professionale e smart irrigation, chimica verde e biosolution: nonostante l''assenza dei bovini di razza Frisona, Bruna e Jersey italiana (causa epidemia di Blue Tongue) non manca la consueta affluenza di visitatori che hanno affollato i nove padiglioni e le aree esterne del polo fieristico.\r\nSubito dopo l’inaugurazione si è tenuto il convegno di Coldiretti, dedicato ad una delle sfide cruciali del settore primario: “Difendere la zootecnia per difendere l’agricoltura” e il convegno su “La ricerca a sostegno del Made in Italy” di Confagricoltura Brescia. Al padiglione 6 presente anche un’area dedicata alla zootecnia e all’esposizione degli animali, con la sesta Mostra nazionale di Registro Anagrafico della specie cunicola a cura dell’ANCI – Associazione Nazionale Coniglitori Italiani. La fiera continuerà anche nella giornata di domani, dalle 9 alle 18, con altri importanti incontri. Per ulteriori informazioni è possibile consultare il sito www.fieragri.it.\r\n', '2024-10-26', NULL, NULL, 4),
(16, 'Genova, al Festival della Scienza arrivano 180 innovazioni tecnologiche: dalla salute al settore marittimo', 'Dodici progetti innovativi presentati al Festival della Scienza su iniziativa di Unige, Cnr e Iit. Si parte dalla salute, con il guanto sensorizzato per valutare la fragilità delle persone, alla piattaforma per fornire contenuti didattici in Lis, al sistema per migliorare rilevamento e diagnosi dei tumori; strumenti di tecnologia medica avanzata, per migliorare la qualità delle immagini, imitare sensazioni tattili per le protesi, migliorare l''esperienza visiva in campo chirurgico, ma anche progetti per monitoraggio ambientale e agricoltura, dalla piattaforma per analizzare la qualità dell''aria ai robot a guida autonoma per aree ad alto rischio, alla difesa della produzione vitivinicola da agenti patogeni; fino all''ambito marittimo, dai varchi portuali automatizzati alle scogliere artificiali stampate in 3D con materiali di scarto dell''allevamento di molluschi. Sono questi, in breve, i 12 progetti presentati nel corso dell''Innovation Showcase, organizzato al festival della scienza da Raise, ecosistema dell''innovazione concepito e coordinato da Unige, Cnr e Iit, con fondi Pnrr. per promuovere il trasferimento tecnologico e la collaborazione tra il mondo della ricerca e quello dell''industria. "Oggi presentiamo 12 progetti selezionati tra 180 innovazioni tecnologiche", spiega Andrea Pagnin di Iit, che coordina lo Spoke 5 di Raise per il trasferimento tecnologico all''interno di Raise Up, che è un programma sviluppato in accordo con PWC e con l''incubatore del Politecnico di Torino. Da questa giornata usciranno alcune imprese che diventeranno startup mentre altre soluzioni tecnologiche verranno date in licenza da aziende che verranno a capire se possono inserirsi nel loro modello di business.', '2024-05-10', NULL, NULL, 3),
(17, 'L''ASP presenta le ultime innovazioni tecnologiche all''ExpoMedicina di Catania', 'Da oggi fino a domenica 27 ottobre, presso “Le Ciminiere” di Catania, l’ASP di Ragusa è protagonista della quarta edizione di ExpoMedicina 2024, un rilevante momento di confronto per tutte le realtà imprenditoriali e istituzionali che quotidianamente s’impegnano per la divulgazione e la diffusione dei temi dell’innovazione tecnologica in sanità.\r\nLo stand dell’Azienda Sanitaria Provinciale, allestito dal Servizio Informatico e Transizione digitale, diretto dal dott. Massimo Iacono, ospita le ultime innovazioni in materia di Cardiologia digitale, con l’ampia gamma dei servizi messi a disposizione dal programma Connected Care, che caratterizzano la Cardiologia-UTIC dell’ospedale “Giovanni Paolo II” di Ragusa come un reparto d’eccellenza: dalla Televisita al Teleconsulto, passando per il Telemonitoraggio. I servizi saranno presentati sabato mattina alle 9.30 dallo speech del dott. Antonino Nicosia, Direttore del Dipartimento Cardio-Neuro-Vascolare dell’ASP. Inoltre, nella sessione di sabato pomeriggio, gli pneumologi Enzo Cannata e Carlo Chessari presenteranno l’altro progetto innovativo di domiciliarizzazione BCPO (Broncopneumopatia Cronica Ostruttiva), una patologia polmonare progressiva e cronica che causa l’ostruzione delle vie aeree.\r\nAlla prima tavola rotonda sul DM 77, il decreto relativo all’integrazione ospedale-territorio, ha partecipato anche il Direttore generale dell’ASP, dott. Giuseppe Drago: “Questo evento ci dà la possibilità di condividere con le altre Aziende esperienze, opinioni e criticità - ha detto -. La nostra ASP è particolarmente coinvolta sul fronte dell’assistenza territoriale. Oggi gli ospedali sono sovraccarichi di domanda, i Pronto soccorso risultano spesso affollati e le liste d’attesa rappresentano uno scoglio da superare. Portare l’assistenza al domicilio del paziente può rappresentare la svolta. Lo sviluppo tecnologico, attraverso gli strumenti della telemedicina, ci aiuterà a farlo”.\r\n', '2024-10-25', NULL, NULL, 3),
(18, 'GAMING E OPEN WORLD: COME LE INNOVAZIONI TECNOLOGICHE STANNO TRASFORMANDO IL GENERE', 'Il mondo dei videogiochi è molto cambiato negli ultimi anni, ma pochi generi hanno subito cambiamenti radicali quanto gli open world, titoli caratterizzati da vasti ambienti esplorabili e da una grande libertà d’azione. Gli open world stanno evolvendo rapidamente grazie alle innovazioni tecnologiche che stanno rimodellando l’intero settore.\r\nQueste stesse tecnologie che stanno trasformando i giochi open world hanno avuto un impatto significativo su tutto l’universo del gaming, dai titoli per mobile al retrogaming: non sono rari i casi di giochi storici rinnovati nell’aspetto e nelle meccaniche.\r\nAnche il mondo dei casinò online ha subito una metamorfosi grazie alla tecnologia: ora, player come PokerStars Casinò offrono esperienze sempre più simili a quelle dei casinò fisici. Anche grazie all’Intelligenza Artificiale e alla Realtà Virtuale, è ora possibile scoprire tutti i passatempi tipici come le slot machine, e a tutti gli altri giochi che caratterizzano i casino, in modo immersivo: l’interfaccia digitale scompare per lasciare spazio a un ambiente che simula in modo realistico una casa da gioco fisica. Le piattaforme moderne offrono tavoli dal vivo con croupier reali, streaming in alta definizione e interazioni in tempo reale con altri partecipanti, rendendo l’esperienza sociale ed emozionante, senza dimenticare l’aspetto della sicurezza, implementata da crittografie sempre più sofisticate.\r\nA proposito agli open world, uno degli sviluppi più rivoluzionari è proprio l’implementazione avanzata dell’Intelligenza Artificiale (AI). Gli NPC (personaggi non giocanti) stanno diventando sempre più intelligenti: sono infatti in grado di adottare comportamenti che rispondono alle azioni del giocatore a seconda delle sue scelte. La differenza rispetto agli open world del passato è che oggi le interazioni non sono più scriptate: ecco perché gli NPC possono adattarsi dinamicamente alle decisioni del giocatore, rendendo ogni partita diversa. Capolavori come Red Dead Redemption 2 o Cyberpunk 2077 hanno già integrato elementi di AI per creare mondi più “vivi”, dove ogni personaggio ha una propria routine, ambizioni e reazioni al contesto.\r\nIn futuro, l’AI potrebbe addirittura permettere una narrazione che si auto-modella in tempo reale: la trama non sarà più un percorso fisso, ma qualcosa che si evolve organicamente in base alle scelte del giocatore. Già esistono, e sono esistiti, titoli del genere (vedi la serie Fable), ma l’evoluzione dell’AI permetterà di creare trame di gioco sempre più sofisticate.\r\nUn altro enorme passo avanti per il genere open world è rappresentato dall’integrazione della Realtà Virtuale (VR), il cui legame col gaming è sempre più stretto, e della Realtà Aumentata (AR). Se i “mondi aperti” permettono libertà di esplorazione, la VR ora è finalmente in grado di immergere i giocatori in universi digitali come mai fatto prima. Attraverso dispositivi come Oculus Rift o PlayStation VR, i giocatori possono vivere l’esperienza di camminare fisicamente in città futuristiche, foreste incantate o deserti desolati. Con la realtà virtuale, il confine tra reale e digitale diventa sempre più sottile, rendendo i mondi aperti incredibilmente tangibili.\r\n', '2024-08-15', NULL, NULL, 3),
(19, 'Innovazioni tecnologiche per il monitoraggio della salute degli Oceani', 'La tecnologia sta assumendo un ruolo sempre più cruciale nella protezione di mari e oceani, fornendo strumenti innovativi per monitorare l’impatto umano e i cambiamenti climatici. Gli strumenti tecnologici avanzati, come droni marini, satelliti ad alta risoluzione, sensori autonomi e piattaforme di intelligenza artificiale (AI), offrono una raccolta dati più precisa ed efficiente, migliorando la nostra capacità di proteggere gli ecosistemi marini.\r\nSensori avanzati come i gliders sottomarini, i droni d’acqua e le boe intelligenti sono strumenti fondamentali per il monitoraggio marino. I gliders sottomarini raccolgono dati su temperatura, salinità e correnti, mentre i droni d’acqua monitorano inquinanti superficiali e fioriture algali. Le boe intelligenti, con i loro sensori multipli, forniscono un flusso continuo di dati cruciali per la gestione marina.\r\nIl vantaggio di queste tecnologie è la loro capacità di raccogliere grandi volumi di dati con precisione, permettendo ai ricercatori di prevedere i cambiamenti climatici e monitorare le dinamiche ecologiche degli oceani. Questo aiuta a comprendere meglio la biodiversità marina e a rilevare i cambiamenti a lungo termine nelle condizioni oceaniche.\r\n', '2024-03-09', NULL, NULL, 3),
(20, 'Energia solare del futuro: le innovazioni tecnologiche', 'Che l’energia solare sia considerata l’energia del futuro non è più una novità, tanto che in tutto il mondo la produzione di elettricità sui tetti di abitazioni e aziende tramite pannelli solari è in piena espansione da diversi anni. I motivi sono molto semplici da comprendere: si tratta infatti di una risorsa pulita, naturale, inesauribile e alla portata di tutti, che non emette sostanze dannose, permette di ridurre le emissioni e l’utilizzo di combustibili fossili e di abbassare i costi in bolletta.\r\nL’energia solare si è rivelata essere anche molto versatile e si può utilizzare per produrre elettricità, generare calore e riscaldare l’acqua sanitaria, tramite impianto fotovoltaico, impianto solare termico o impianto termodinamico (che combina i due utilizzi). Inoltre, è facile da smaltire: quasi tutti i componenti dei pannelli solari possono infatti essere riciclati, rendendo questa tecnologia ancora più green. Infine, secondo l’indagine degli esperti di ExpressVPN, l’energia solare è anche sicura, a patto che aziende, privati e governi proteggano efficacemente gli impianti solari fotovoltaici dai possibili attacchi informatici.\r\nQuesto può essere fatto implementando solide misure di sicurezza della rete (protezione tramite password complesse, MFA e crittografia, aggiornamento regolare di firmware e software, ecc.) e, quando si tratta di Imprese, creando VPN per i dipendenti per crittografare l’intera attività online ed effettuando regolari controlli di sicurezza e una formazione costante sulle migliori pratiche di sicurezza informatica.\r\nTutti questi fattori non solo rendono l’energia solare un’efficiente soluzione energetica sempre più sfruttata, ma spingono anche allo sviluppo di innovazioni tecnologiche che aprono nuove prospettive sorprendenti per il futuro dell’energia rinnovabile.\r\n', '2024-01-18', NULL, NULL, 3);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indici per le tabelle `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indici per le tabelle `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `fk_id_categoria` (`fk_id_categoria`),
  ADD KEY `fk_id_categoria_2` (`fk_id_categoria`);

--
-- Indici per le tabelle `notizia`
--
ALTER TABLE `notizia`
  ADD PRIMARY KEY (`id_notizia`),
  ADD KEY `fk_id_categoria` (`fk_id_categoria`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT per la tabella `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `evento`
--
ALTER TABLE `evento`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT per la tabella `notizia`
--
ALTER TABLE `notizia`
  MODIFY `id_notizia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_categoria` FOREIGN KEY (`fk_id_categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `notizia`
--
ALTER TABLE `notizia`
  ADD CONSTRAINT `notizia_categoria` FOREIGN KEY (`fk_id_categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
