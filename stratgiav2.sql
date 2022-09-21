-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 21 Wrz 2022, 11:26
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `mydb`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `buildings`
--

CREATE TABLE `buildings` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `buildings`
--

INSERT INTO `buildings` (`id`, `type`) VALUES
(1, 'defensive'),
(2, 'offensive'),
(3, 'HQ');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `buildings_has_resources`
--

CREATE TABLE `buildings_has_resources` (
  `buildings_id` int(11) NOT NULL,
  `resources_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `buildings_has_resources`
--

INSERT INTO `buildings_has_resources` (`buildings_id`, `resources_id`) VALUES
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(3, 1),
(3, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `maps`
--

CREATE TABLE `maps` (
  `id` int(11) NOT NULL,
  `type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `maps`
--

INSERT INTO `maps` (`id`, `type`) VALUES
(1, 'small'),
(2, 'medium'),
(3, 'big');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `maps_has_buildings`
--

CREATE TABLE `maps_has_buildings` (
  `maps_id` int(11) NOT NULL,
  `buildings_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `maps_has_buildings`
--

INSERT INTO `maps_has_buildings` (`maps_id`, `buildings_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `maps_has_objectives`
--

CREATE TABLE `maps_has_objectives` (
  `maps_id` int(11) NOT NULL,
  `objectives_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `maps_has_objectives`
--

INSERT INTO `maps_has_objectives` (`maps_id`, `objectives_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `maps_has_resources`
--

CREATE TABLE `maps_has_resources` (
  `maps_id` int(11) NOT NULL,
  `resources_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `maps_has_resources`
--

INSERT INTO `maps_has_resources` (`maps_id`, `resources_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `objectives`
--

CREATE TABLE `objectives` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `objectives`
--

INSERT INTO `objectives` (`id`, `type`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `players`
--

INSERT INTO `players` (`id`, `name`) VALUES
(1, 'czarek'),
(2, 'tomek'),
(3, 'joachim'),
(4, 'fabian');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `quests`
--

CREATE TABLE `quests` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `quests`
--

INSERT INTO `quests` (`id`, `type`) VALUES
(1, 'easy'),
(2, 'medium'),
(3, 'hard');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `resources`
--

INSERT INTO `resources` (`id`, `type`) VALUES
(1, 'wood'),
(2, 'stone'),
(3, 'iron'),
(4, 'gold');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `maps_id` int(11) NOT NULL,
  `team_color` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `teams`
--

INSERT INTO `teams` (`id`, `maps_id`, `team_color`) VALUES
(1, 1, 'blue'),
(2, 2, 'green'),
(3, 3, 'yellow'),
(4, 4, 'red');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `teams_has_players`
--

CREATE TABLE `teams_has_players` (
  `teams_id` int(11) NOT NULL,
  `teams_maps_id` int(11) NOT NULL,
  `players_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `teams_has_players`
--

INSERT INTO `teams_has_players` (`teams_id`, `teams_maps_id`, `players_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `teams_has_troops`
--

CREATE TABLE `teams_has_troops` (
  `teams_id` int(11) NOT NULL,
  `troops_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `teams_has_troops`
--

INSERT INTO `teams_has_troops` (`teams_id`, `troops_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `troops`
--

CREATE TABLE `troops` (
  `id` int(11) NOT NULL,
  `type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `troops`
--

INSERT INTO `troops` (`id`, `type`) VALUES
(1, 'melee'),
(2, 'range');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `troops_has_quests`
--

CREATE TABLE `troops_has_quests` (
  `troops_id` int(11) NOT NULL,
  `quests_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `troops_has_quests`
--

INSERT INTO `troops_has_quests` (`troops_id`, `quests_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `troops_has_resources`
--

CREATE TABLE `troops_has_resources` (
  `troops_id` int(11) NOT NULL,
  `resources_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `troops_has_resources`
--

INSERT INTO `troops_has_resources` (`troops_id`, `resources_id`) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `troops_has_weapons`
--

CREATE TABLE `troops_has_weapons` (
  `troops_id` int(11) NOT NULL,
  `weapons_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `troops_has_weapons`
--

INSERT INTO `troops_has_weapons` (`troops_id`, `weapons_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `weapons`
--

CREATE TABLE `weapons` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `weapons`
--

INSERT INTO `weapons` (`id`, `type`) VALUES
(1, 'melee'),
(2, 'range');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `weapons_has_resources`
--

CREATE TABLE `weapons_has_resources` (
  `weapons_id` int(11) NOT NULL,
  `resources_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `weapons_has_resources`
--

INSERT INTO `weapons_has_resources` (`weapons_id`, `resources_id`) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 4);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `buildings_has_resources`
--
ALTER TABLE `buildings_has_resources`
  ADD PRIMARY KEY (`buildings_id`,`resources_id`);

--
-- Indeksy dla tabeli `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `maps_has_buildings`
--
ALTER TABLE `maps_has_buildings`
  ADD PRIMARY KEY (`maps_id`,`buildings_id`);

--
-- Indeksy dla tabeli `maps_has_objectives`
--
ALTER TABLE `maps_has_objectives`
  ADD PRIMARY KEY (`maps_id`,`objectives_id`);

--
-- Indeksy dla tabeli `maps_has_resources`
--
ALTER TABLE `maps_has_resources`
  ADD PRIMARY KEY (`maps_id`,`resources_id`);

--
-- Indeksy dla tabeli `objectives`
--
ALTER TABLE `objectives`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `quests`
--
ALTER TABLE `quests`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`,`maps_id`);

--
-- Indeksy dla tabeli `teams_has_players`
--
ALTER TABLE `teams_has_players`
  ADD PRIMARY KEY (`teams_id`,`teams_maps_id`,`players_id`);

--
-- Indeksy dla tabeli `teams_has_troops`
--
ALTER TABLE `teams_has_troops`
  ADD PRIMARY KEY (`teams_id`,`troops_id`);

--
-- Indeksy dla tabeli `troops`
--
ALTER TABLE `troops`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `troops_has_quests`
--
ALTER TABLE `troops_has_quests`
  ADD PRIMARY KEY (`troops_id`,`quests_id`);

--
-- Indeksy dla tabeli `troops_has_resources`
--
ALTER TABLE `troops_has_resources`
  ADD PRIMARY KEY (`troops_id`,`resources_id`);

--
-- Indeksy dla tabeli `troops_has_weapons`
--
ALTER TABLE `troops_has_weapons`
  ADD PRIMARY KEY (`troops_id`,`weapons_id`);

--
-- Indeksy dla tabeli `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `weapons_has_resources`
--
ALTER TABLE `weapons_has_resources`
  ADD PRIMARY KEY (`weapons_id`,`resources_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
