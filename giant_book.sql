-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2022 at 08:50 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `giant_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `publisher_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `synopsis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `publisher_id`, `title`, `author`, `year`, `synopsis`, `image`, `created_at`, `updated_at`) VALUES
(1, 9, 'Menanti Hari Berganti', 'Twila Prosacco', 1972, 'Nisi et aut qui est eius aperiam. Pariatur et ipsam enim doloribus. Accusamus necessitatibus sit quia quibusdam.', 'https://cdn.storial.co/book_front/130369-80a181d9ce021b264f721bb4dcc9a04a4e2e14e4.jpeg', NULL, NULL),
(2, 9, 'Love in The Fast Lane', 'Avis Hayes', 1997, 'Quidem dolor officiis minima aliquam et facilis. Autem omnis quia neque id officiis. At aut id voluptatem. Odio corporis est quod maxime et autem eveniet earum.', 'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/romantic-novel-cover-design-template-1f302ee20814ee9513506d90de228af7_screen.jpg?ts=1637007743', NULL, NULL),
(3, 1, 'The Past is Rising', 'Dr. Donato Koss', 2011, 'Iste et quaerat praesentium explicabo quae officiis est tenetur. Quis amet consequuntur vel non in error. Nihil molestias magni voluptatem atque. Ut unde commodi est quo est delectus.', 'https://i.pinimg.com/564x/a7/91/62/a7916230aedcdce47a4dfbff5247f0ce.jpg', NULL, NULL),
(4, 1, 'The King of Drugs', 'Laron Schmeler', 1991, 'Dolor enim consequatur quasi. Placeat deleniti voluptatum ipsam voluptate hic. Sed quis facere voluptas itaque eos harum qui necessitatibus.', 'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1637008457', NULL, NULL),
(5, 3, 'Fortress Blood', 'Scot Mitchell', 2007, 'Dolore voluptate voluptates quaerat non et praesentium quo. Et aut qui molestias et. Sapiente iusto recusandae consequuntur quia eos aspernatur. Dicta quo quas quo consectetur hic pariatur veniam.', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFBcUFBUYGBcZGiIcGhkZGhoaGRcaGhgZGBoXGBwaISwkGhwoISAXJDUkKC0vMjIyGSI4PTgxPCwxMi8BCwsLDw4PHRERHTEiIigxMTExMTExMTExMTExMTExMTExMTExMTExMTExMTExMTExMTExMTExMTExMTExMTExMf/AABEIARMAtwMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAEAAECAwUGB//EAEkQAAIBAgMEBQYLBwMDBAMAAAECAwARBBIhBRMxQQYiUWFxIzJSgZGhBxQzcnOxsrPB0vAVQmKCotHxJJLhNEPCNVODoxZjdP/EABkBAAMBAQEAAAAAAAAAAAAAAAABAgMEBf/EACYRAAICAgMAAgIBBQAAAAAAAAABAhESIQMxQROhIlHBFDJhgZH/2gAMAwEAAhEDEQA/APKcHhHkbKlr2vqQOYA49pIHro6HYMjukavGWZM9w2ZQM5TKWUEFswt1bjv0NLo5n3jGOMO4Q6nN5MaZnAQFibXGg0BJ5XHQbZ2qJM+JmYpiFOTKjZXlYOUkXMqFMq5VfUC5cW1BLbN0ymzHfYSBVVpcsxjaTKR1HUMVjVODBmtexFwL3Asazv2TN6H9SfmqrHYkyuXPYABqQqqAoUXJJ0HE6k3J1NDWpqx7Df2TN6H9Sfmpfsmb0P6k/NQVqVqKY9hv7Km9D+pP70/7Jm9D+pPzUDantTphsM/ZM3of1J+al+yZvQ/qT81B2pstOmLYb+yZvQ/qT81FydHZxGsnkjmJGQTRGRbWsWQNcA6+w3tpfItTWopi2Hfsqb0P6k/NS/ZU3of1J+ag2SxsRbxFqa1FMYb+yZvQ/qT81N+yZfR/qT81BWpWpUx7Dv2TN6H9Sfmpv2VN6H9Sf3oK1K1FMNh37Jm9D+pPzU42VNfzQO/MmnfoaAtStRTFs6L/APHke6Qy7x1kVXYgiO0gbJawLXuAD2G9wApNBLsSQl1DR5kZRlLZc+8UspUsADoCbaN3UPs/HNETa5VhZgGKnQ3DKRwYHgbHQkEEEiutwW0N2lsM28fExlXYly6kpeWN2yXJVQoBjAvnAWxDZodoW0cTiYDGxRrXU2NjceoilRm3A2/fOgje4LKL2zFQS2uozXzW5ZrWHCnqhh2wGKxTSRpnkQdbMWCbsjNo0bqyvdSfUACCbNk43FtK12sLaBVvZRck2zEkkkkkkkknU1LZnyh+il+5koSklsBUqVOR31aGNT0qQNOgFSpUqpIBUqVKnQB+GVMoIeNW1zGQO1tbABQjAi1jexOvKiZpkVC0CMhAvvits9iFbdgk7uxZfNN/C9qx6t3zZcmY5L3y3OW9iL24X1NTiTRtbRxqNHIpZmWy7rO+8feCTWRSdUQx6Mp4sQbadXAtSp6ajQ0NSp6anQxUqdTTgU8b6FZGlSpVnQxUds7aLxHqqGBIOUlx1tQCrRsrqbEjRhcEg3oG9WYfz1+cPrFJ7Ea3SaMCRCVyyMgZwPk+SrkuzEiwtc2vYWHMqszaHysv0jfaNPSSAlsvzz9HJ9zJRnReT/VwIVRlkljRxJGkgKtIoIs6m2nMWNB7L88/RyfcyUT0Y/63C/8A9EX3iUn6DO0+FrJhMakWGhw8aGBXKjDwEFjJICetGeQX2VjY3HLLs6RJMNDHiYJ47ukMcTujrKCrhFGoYC+g4rpcXrq/hZxGFTacDYmGWVRChYJKqKU3stwVKEseP7630GnGuL2zIh2vI5IyfHL35ZN6DfwtUx2iDb2xsKPZWDheWNZMbibkCRQ8eGRQpayNdXkGZBdgRe9uGuV0c2sk+Ijw+ORJYpWEefIiSxM5AR0kQBgA1rqSVtfSut+HoHfYTsySW8cyX/CvMtmAmaIL528S3jnW1XFZRtleGv0t6Pvs3FmEkOBaSJmVSHQk2LKwKkggggi2nYa7XpfBFFsbA4mODDrNIY87jDwXbNDI7XBS2pAPDlU/h6Zd7gwPOyyE9uUtHl94aiOl0sa7B2cZIzIt4rKHMdjuJNbgHv076NtRYrAPg12fBtOPEQYvDwkxhCksUaQyLnzixMQUNbKCLg873rnujU8GFg2hJJFBiXjMccO9RXQszyKXUNfTKubTjYC9dH0fRptl4ptm/wCldCd9GLySTKI8wyyt1kuM1gBxB4XJryuqjDJtAer/AAWxR4tMc2Jgw0hjRCn+mgXIWExNgiAfur7K5zojtlJWlw+Iw+FcSQyZJPi8KPG6xO6kMiDTQjXW5FjXSfAn8ltL6OP7OIrydRpQoXKSA9U+CnCRYjDYwzwQSGJV3ZaGEsvUlJObJdjoNTfhXK9ENqZ8ZBDNBh5Y5ZFjZTh4VIEjBc6siBlK3vx5V2XwLn/TbQvr1U+xLWJ8HWJw0mLSKODczsrbmZ2abI4Qt8mcq6qG1/vU+yEAfCXsGHA44R4fSNo1kCE5whLOuXrXuvVvZr8TyrpsXBGOjyYwQYf4wWF5Pi8Fzedk4ZLebYcK4TpjBiI8bPHipN5MrAM/pgqCjAfujIVso4cK9EaRF6MRGSPeLmF0zFL/AOpa3WXUU5KlH0Dj+im10EyR4zD4Vop1IV3w8CFCcyLIrqgsM4ym+gsTpag9g4C2DxWMCB3hMaIGUOse8JzyshBDEABRe4BYm1wLN0wxkMxwjYeMIgwqJugS27ZZZgyknUknW51OYHnV3QjpS+zZWYx54pRklRurmyE6qSPOXMwsdDmINtCKxdWv+ANsDpGm/jGPjjxEBYBi8aF49dHRlAYgGxKG4IuLVR0R2Ys0mIcoJPi+HeZI7ErI6lVQMo1ZBmzFeeW3AmvQon2BtQiJY/iuIfRLJumzHsyExsSeTamuC2bjp9kY92UBmhdopAbhZEJ4X/dzBQynlYaGxFR3aSpgB4TpG4Zd8kc8V+tE8cYXLwIjKKDC1uBS1u8aVTtiSJsZI2HAELS3jAGUBCwKgLysNLV6YOkGwMebYjD/ABeVjq5Xd9Y897Ebet7Dtrz/AKU7AOBxrYfNmUMrRseLIxBW/eNQe8URq+qGjF2j8rL9I32jSqW0l8rL89vtmlWtDsWzPPP0cn3MlGdFwoxUMjyRokcqSMZCRdUdWIWwNzYHShNl+efo5PuZKEqMbGd/8LO0IMXiUxOHnikRYljIBYPmEkjGykcLMNa4C1Knq4QpUCO3xnSKPaGDiw+KfdYnD/IzsGKSoQFZJSoJViAvWsQSutrmgOj0GHws6YnFyxusRzpFCwleV1N0BK9REvYksb6Wtrpg4SFWJLmRUHFo4xJYmwAILqBc/wAVdX0v6FRbOaJZsVI+8DFd3h1NguW980w9IVNKP432QY3SHbcm0MWZpSqF7KoJOSNATlW9uAuSTbUkm3Ku36UY/DT7JwmEixUJlg3bSAswFkhdGynLrqwrmsV0Lf4n8fw0ongF8/UKSx5TZsyEsCBzsx011GtR6FbBXGynD70xyFWIJiDrlUC5vvFN9Tplt31rGMGrukiJNro3Pgj6RQYWTERYmQRpMqlWbRMyZgVJ5EhuJ06vhXDbTwSwvkSaOaw1ePMUBuQAGYDNplNxp1rcjR3SLZUeHmeBZGdo2ZGYxhASpt1bO1wdeNqyW1t4VouJXmn2EZWekfBftTDYOLF/GMTEhnRAi3YsColBD2XqnrLXnGIgyMUzo9rdZDdTcA6Gwv2eqtyXoyYYUnxjmISaxRKmeaRdLuVLKETUasb68KfC9G/jKSPg5GleIZngdAk2TTykQVmWVRwNiCDbQ3F4iopuV9l2dX8Ge1cNhMPilnxMSNOq5FuxIIWQEPZeqesK4zYGLGCx0ErOrrHIpZkJZShsHy6C5ClvWKxq6HEdHPi8ccuMkaJpRmjhRM8xT0pAzKsS8LXJJ16uhofGk3b7A3PhPbDYjFfGoMVCyuiLlUsXLglSXstkUJY3Jvpa3ZpYnaGGbYcezxi4N+pBIzNk0maTzsvokVyUHRvfxSTYOQy7oXkhdMkyLyZVVmWRdDexBHZWPs6BJJFR3ZAxChlQP1mYAXBddNTrc+FR8ax76A6HotsnCpiY5MVjcOscbhyqM7s5QgqvmWCkgXN+HDtFkWMwU+BMeIlMWJOKkljcIzqiusd1ly6hGI/dBIK3tbQrpb0Qi2dIkcuJkdnTODHh1IAzFbHNMNdKzT0daSB8ThZBPHGAZVymOaIG5zPGSQU085GbgeFjSpP8rAWA2ckcqTS4iBY4mVyYnEkj5CDaONetnNuLZQL3Nq1cBtnCYgbSOOLI2KljeLKu8aNg0xDAaXVFYKdQSDYamuNtTVT472xmqdiKT/1WG3f/ALm8I0+jK72/8OWrukW1xicWrrm3aLHFGW84pGAoZuwsbtblmtyrENWQeevzh9YpOO7HRLaR8rL89vtmlS2h8rL9I32jSoAfZfnn6OT7mShKL2Z55+jl+5koQCkuxjgVtYfo5Nm8sjQxqM0kjjzFFgRbjvCSqhOJYgaa2y8Pnzru758wyZdWzXGW3fe1dD0k2i4C4USF8pLTSA/KSm+axHCNSXAA0OYtxc1W7SQmZ+0Nph7RxJu4VIyr+81joXPM8z2nXkAPT/howO9kwnlYo7LJ8qxW9zHwsp4V46vEeI+uvV/h28/BfMl+uKlOFTil/kllE2POz9jthY0ab4znz4lBmwy7wCNlRwes2UBQDbW55WrL+B3/ANTT6J/qFdB8EuVcBjmxNvit9c3mHqHe8eJtux42rn/gc/8AU0+ifx4LR1Ga+yf0YvTQ32jjL8pnt/uojoBspZ8fho3XMucs1+BEaPIAe4lQPXTdJ8Pn2njB/wDvf7VdrszCDZxw0rod613ZeYj0UC3pEbz2irnyYcaXrX8Exjcn+i/p7sU4jHO7EBUREW/ZbOfexpuhuxVgxkUitr1lI1GYMh09tj6q0elxzSLNG/k5VBDjhdRZk/hawGh149hqzomPKBmbqRgu7HgtwVUX5Ek8O41wPknVXo6VGON0C4jodGdspIFXdl96yaWzbstw7DIA3trifhWzvtOYnzVCIvzRErH+pmru5ttD46MULlA1rc8mUodO2xvbtqvpzstJm3yWZZFDKw4NZQpHiLDTvrXi5nGSct+Gcofo4b4J8QU2nCAdJFkRu8bsvb2op9VVdMdnLBth0QAIZo3AHAbwo5A7BmLaVrfB5s8RY18XKQkGGR2eRtFDOuRUvzYgsbDsHaL85tfavxzaRxNiA8yZAeIRWREv32AJ7ya6qy5JNdUZJ0tnX/DSitjIA1x5A/eNpQfwSru9plQbrJA4t2i6OL+z31f8OH/V4f6A/eNVPwV5Y5ZcdMQsEERjDn96RypCrfzmyg6D017aml/TidqXejlumOyVw+OxEMeiK5yD0VYBwo7hmt6qwzHp+ta6jbuIfESySuMrSSFu2wPmr6hYX7q5+aMqdRXQofir7IXK2wVVuaeJbOo/iH1irHII76nAl2XxH1iplE1U/WV7RHlZfnt9s09X4tfKvp/3H+0aVRgPMo2YPKH6OX7mShRRuzF8ofo5fuZKGCVmls1GQkEEGxGoI4g8iKcC57z76tRO2jNnxx7wbywXK542GYRuYxe44uEHEceIrRa2S2D4XEPE+dDla1rlVbQ8dGBFauJ6V42SxknMluGdImtfjbMmnKiRhcFvGG8uhJyvc5gd8yhSLeZusrZ7ce3hUDgsJuWIYCaw6hc5M2QZwpB15kXuM3VuRa7uL7X0ZtgGN2ziZlCSzSOi8EvZB4Itl91S2XtnEYb5CQxm97qqZtQAesVJAsBpejcNgoSsWZRdhIJGDucjKvkiQOAZuNhwqWLweHUvlJsN4ASWDfJ54GAI1Jc7thrbJfS960Tj/bX0Zys2ej+2MQzmR5Lt5xbJHmJ43zBb37608btR5XBdy7gWzG3C5OUd1yfbWPsJoAgDPxQEm9iH6+ZCOQACkHnp2nLDB4mIhy2hzLluxBys1jpfkNedc3Jx5Sbo0hOoo1k2hIgKqxynipsynvKtcE+qr02jI6hC3VGoUAKoPblUAX77UHOYcrlHuQOrduPXlHDN6IiPPzuGptdgdzljLPYnLmF+HlQGa/0ZvbkUY8wKwcNdGqnsuSbXUUcmPdOqp6hNypAKnvynS/fWdC8RCFmIPV3gBufNJYoeGpsLHgQTqDpPDvGxIkkAyuouDoy3Ie3Z+61+wEcSKl8ZfyaM3pu7MqLc5F1CDqxgkcQi2W/fa9clg8XJE2aMhWta+VW5g6ZgQDcDWu02nJC+RZGGUoDe5JDCJiwIBH/cygC4uOB51hT4LDAKQ+oc5wHuTGJJ9FJ0LFFhtoNXvY3IXu4JYwUWjh5tybQPi+k2MkYF5i5AsC6RMQOwFkOlAY3aU0pXeSMwXzFJ6ifMTzV9Qo/EYeIBVQ523rIWDedGpBSUDW2cNa1jbdn0qMOz8JmXrdUyENmbKRHu4yDYOdc5kGlwbHUaX2uK2o/RCk3psxIsaRx18aMxCB4wwGp91HLgMN18rA6vk6/EZsPu7gkW6rYjTj1OZAzCYpo1IEbEjKL31Ia7XFwTfQDXTjqFNwBSvwTjRjjC62JtTrCyup/iH1ir3e5Nr1Wkl2UG/nD6xRJaLjOQ2Oe7yg+m32zTUsf8pIOWdvtGlUFjbNTyn/xy/cyVSqVpYGHymgJ6kn3UlWY7ZxjfIeOVT7VBI9RuPVWF7o6L9M5Uqe60ooR1NYqslgIjqxUvRu6pjAatMhkIEKkMulvZSxaFjcXIqxkNrU8aaW7apP0lqwWFyDVqG5qTQa6VZHDTbRKiWJIBYGrXxJQi/A0dg2CogDsgIOfI+7bPn0ZjxdBHwUXswOmtmZmRktKCWtfeZScupAzgEZySDqTfxtasG99GnhFMWKExDk6hvVUZwtj1oyf3SmcX7QVZRbS5vYHTnQsh0F+BqoxXYpOyl8Vc61YpBFDSRDQjhRUSW041taRjKJVl5qSDypr2FuJPuqckoHKhmcmnkSoE2JHOqieymzU3GjIeFE43saKUKSoUjiL+0UERTwjrL4j6xSkUohGPQb2S/pt9o0qo2h8pJ89vtGlUlYs19mnr/wAkn3T0emNDRlZFDGxykgXF+/lzoDAeefmSfdPSjrPBN7Lya6L2hXkQfw8abIvaKjubnjV3xFTxPsp40CkRZkHEiqTiY+/2VDHKQR4W9mlB2qbKC2xS+iSKtwyF42ZVJs9rdxAtbt1+us61H4TabxIUS2pN7i/EAfhScn4FAyTsT2W1t+BraTA5kDroSuYqeGvCxrnhej0x0yqqhyBbTQcASBbTxpuTfQUXzArcHQjTwIoFMU/mBmy34XOW5sL2pPNI3FifZSSPgxI9uvGqToT2RxUDqbnuuRpYkcK291G2HBI0AU2tqGvZjfjrVWPcSIchzajgDwseN6O2WoEYVhY5bWOl+sD7azlN1YJGEcPGdMxUnXXs7T7qdcFlBbOGGVrW0N8py6dl7VvrArZ7r2H1WXq/VTx4aM8v3QWI56EAcOFHyMMTij307UbiIBna3C5+uqjBW1hoGAFPpV+4pbimJpA5FSjTrL4j66v3NTji6w8R9dNioHxyeVk+e32jSorGxeVk+e32jSqRhOzx1zb/ANuQ+yKQn3X9lRQ1ZsfFlHkAt14ZYzcX0eF9R2G9tR3jgTQyPSXYmFKxopZNKCR6IV60pMm6KJ9eOpofJR+QUhEKjBFZmfu6Yx1pSRiq1TupPjGpgG6rUxaByABogyLb+Ek++5qITuomCE9lLAeZmPGBwqCx3rX+L3NM0FqMBZmYI3Q3Ukd4o3ZjSNIbsT1SddRparcnbVSgg6G3hSfGGQ648qzBhwJ1Gntq6DGgk6m3608KCmXW/bVVqPjQZGj8XjYXINzfgefrrNlisSAb2JF+2x41dDMVIPGxqLvck24mqSoLKClNlo5sObAjW417qHKVQFFqdOI8R9dWZKWS5A76TYDY4WlkB0Idge4hiCKVE7bxBlxE0jAAvIxsALDrGw07ra8+J1pVKegozcA/X/kk+6kqCvSwCHP/ACSfcyVWFNJPYMISWiElFrc6AANSUkVaZIektWo9Z4arEeqsDQU3q0Ggo3opAaLEGxKKKQUHC/bRCE9ulJgQZdakkZa9PNIBrfQce0er+1ADaZWQNy45ORF+HdpzqJTUS1FsMOHNUywGj5X487H3UDiWawtVJk0DNGedD5bmwqySU5fXQqvY3p2Uol277ai6WqO911qecEUrCgiHEcL8qrxL9aqUYcqnlvQFDUyrqPEfXVqJbjU2cXHiProfQA+NXyj/AD2+0aVV7Qk8o9yPPb7RpVFoewbAHr/ySfdSVSDReCHXPzJPupKGDdtJdiZENUg1NemJq7JJ3qxQO2qgRbjr2VJG76LANdMra8PwOtXxOKAOJuLHiNB4DhVkb0WBpoc3iKJgvWZG5FiKOSW6m1gfXScmkNLYDtfHWO7A72N76DW1Y8mKuTfs/D/FC4iYkk8/71Ujkfrn+rVzSyy2dKVKjtIJCQJADka2tjY91+0a+yinF1N+fCsDo5ijnaP911IPZoC4I77rW+B7x767H0jCSpmfiUtbn20Cykca2Qmhv2e+smYEnw/V6aViyK5E4eH6vTJzq1YzoKhKhQa+qhxDInkozOqisgSE2A1NGkDL1jfwpJibZN51PGh2ckiyi1xqfGohLmw0HOqnZQR6WYc786mTBIpx7Wlkt6bX/wBxpU+Mfysnz2+0aVZ2UWbPl65+ZJ6/JPUMwPHSnwDqz/ySd3/akB9dUhdQL6dp7qhS2Nosyfrspsmtrj9d9WLddOGmp5a2OvYaYFTxtrz/ALd9UpE0U2saKw8QbQans7f+aZ8KR1l1XlqD32NQhmynhy4VWSCgpcOCeGvMVckIFKHFAspK6c6tmJBt7qMkFF8UQItROGjX2cfVqb1LARKVDMba1dtFESKRl1OW3G182h5HgCx9VTmm6HGOziFwZaJpPRdUt/KSf/H30G4tWjvLxJGosMzOx5klii+4VTLh1AuCS9gT6+FdEUmm69N7NPZ3k54A2gaND4Zg6t+Ndk2D42Nee/HTeLOLtHcA8LroVBPcb+o16VFKsiKynVlBsOWYA2rGcmkv9ozmtGa2HsLVnS4IrcjWwuP7VtMLCgcRKBxNXCTMWY+H2jExtchvDn2VZO6+NUtu1c2ChrX07BcW8aAxMhvppT+QHEPaVR3mqHxC20AoJrlb9nGqk1JOt+XYD21DmUohwnABHAk8LcR3mq0gGYMxubj1a1CdLcyW9dNBGLi5JNx4DXl21DkNIljgC8gXzt43qGY/r10qni4zvJNSOu1rDU9Y0qmx0Rwc134LmyS5rgE/JSWseNAPiVRgq9bXW+i+qr4ZAr5Rqd3ISxvceRkNhf66ysMgN7gn6h41le6RokqtnQYmAKgN8w52JOW/Cw41UlswDE6nTNzvy4eGtCQSh2CjqsvMk5W7yO0Vs/HY4wctnbvN9e3uHhV2ZtA4T93NwOvC2mo56/VrVpKaB8o8bgHwNU4KW6SLfq6dWwuSTyvwrSfYmiM63FvNve5/i1FvVQ5JdhRWmD1shGvf9R56WozEqWVZG0fzWFuagWb1i3rBqyCDKuY3sABxuyi3AkcaZc2bl2DgwtbhfXWs3IdFmGA4HhyrRmwccmHk3rMiAHVbZmIF8ouCCLd3MUBh7G7OdeVgCCB66ydr7WYybtRZFJF+ZPVLHjbztKUU5ypOjWOtsx41yHLyyn23P9hSYDT1e/8AzVkkgsQOLX48ha1+7iadittOOh/Ee+1eiRYPlzm55Npp2jWu72UYjEhjYgBba6kEecp7bH3WPOuPR1PWtbkff+BrT6PylM4toetble4VvXqPYKw5YtrTH2mb2JkGXXQHnytWXNYda+ltP8/rjV+IxBc2I0HDsH96GxEhOl9KmN+mTSMl0LSE68/wv41acMCa08PFYMwFtLEnUnupj1dRbx4mmgMuYWXrewae6qkiBHCw/XOjMREGIN/+BTnKABxtVgVPGtrWpo4gCPEUmNVF7ML9o+upaBF+LAEkh/jb7Rp6x5cUzYiS50DvYcvONKpUlRVMpwALSkHlHKP/AKZKdcMtuqSPH8a1tlIt782SQk+MUhoSMBmax6o08TzPqrNQ2U2Y/CTt19tbZw2a9gtjqBYg3HeKx2Xyljp1q3U01vRGNhJlEZZdFAUcTa9wR+NaC7ZmsBnHrHHx/wCKz1fNdu0m3gNL1J0JPcaHGxFzzXNz+8eXL2+utBsVOVAjSyqLDMDbtt4mhcMgXXL1u3sHh21o/G2Atp1hr+uVRJDRVg52AzSCyrqxA0ta5Hca57GYoybyRhYkiwHIXuK09qylIWUE9dlUi/8AMSe3hb11hyT9XLlvc3PuI/CtOGKpstPRPfE+aNLAG+mvCwqQY/ruqMspKgkBRbqgczwzGp5sojuORv36njXTbJ0KSVrMGBDHu0trrf11t7FkKy7vQCQAXtchgAR7be+seadwAhVTaxDcyOV6IhxHXjktwdDb5rG+vu9dZT3dlxo6aZ9cwbxPb43oeRlta4vzLEAer/mizCWsqugzAkceVx2fq1YmOwUlyWF7czoO4Xa1c0JWQ0WvLpp+hVQkF7ChGZrgAj1nT20zxt+8Re/I3I762UjOghnA1/QqJlFDSREWAcH9e+pIxBuRfu4/oVWYUWmW1CyPaxsdSPrGtXzOLXygHnah5JC7KDbiOXHUUnLQ0gR/+ol+kf7RpVdKlpZDzMj8/wCM0qiK0WaUVlYICS7RyAdg8jJrU8NgkVQNdOd+fbUOjsBaRpH1JSSx7Bu3o93W4UW191qWWxNGRLhQJSbctD67X8aqxsmVcoN2bQfVetHEOiyOWOgQcu88KyMNd5N4w0B0/CnkFemnBCFVVtw8eVFoQBw/XrqiOa3naC3OnfEqRccO01WSEEI4OvCq5JgTa1jwqqeQWGXT3/4FZpxV+636/ClaFQbj5Qcqd9/YD/c1mtIt82Xn2Uz4q9rch7airFwBayj31pB60UkSzhtStTxEwNtOH+aniSLKBwHHwqqNrvc8L8PV/itb8ChJNmAFtPf4URhlJEY/i4eu9UTKVbOnDsqUUrKA2q2NwOHLlWUrXZRutO4a4YgW4e435UFiMSzElmN+3iKqXG3IsSe49vb41Q7Akcr6/rxrnSJZNkuON+8cqqIIOvCmd9QBcf351JWPOqsVF8bgjncn2eyrHUch7aHSTj4aHhbXjTb7WzAn8e+lkOiZcAa68/131WpBdTYXzD6+/nQXxk3IPbVgYhk11zD1gm1PIMSePezuf429udqVLGKrNIDp5Rvtt/xSpWxmvs3FWkkT+FyPDctUHfMLaAd9war2UoyyYgh/N3S5SpuzRsGzKesVAZDccL+qs52zMNbDtBqUDQ2LbM+VSdbXPZb8KNhChRbUDs9VDQzKpbTwuOwVfhY5HFo0dyFzEIpaw5scoNl7z2UWOiTyWuSD6+FRE4A468tKpSe4N9ewWqqCCSRssaM78kRSzHwVQTVWKgpnGUgcT+uP64VGDDpY5uY0sdb3sdOdTnwLRkNIjx5hdQylb9pGbiKGZ7HSm0wSA5UKm97fXTJMRVkyMxJ91PNs2VEztHIqkA5irBbHhra2vLtoUmi9ETPp6700c9r99V4bCySG0cbORxCqWtfQXtwpPh3VijIwcHKVIIYNwylTqD3U/kdipFr4kn8KirknU3qeL2fNFbexSRi9gXR01te3WA1tyqY2dME3phkEZGYPu3yFb2zZrWtfnek+RsNES/dViZuI9XaKZMJJk3mR92DbPlOQN6Ja1s3de9F4DDySZhGjPa18qk2voL2Gl7HxtUiZBFbnr/nvohMPc6+wVImxytcEcQeI7jf6qIWUppaxtexGtiAQfAgg+sU61ZITFhIwutx2EW09R4+2sbFIEe1iw1IPaL8bcv8AmtPJJeMGOTymsYynymtiYxbrjwvQ+JYKQ1utGxDgjXjZge8VPQ0Y2IVb9U/5ovDQsxU9hBA7bGxoraioVDLb1Cg8PIyspTj6J568B3mgrwbaQG9crpd3v2ghzSojpFhgpWVA4Et265XNmv1wQvm8RoddeJpqLA0OjUgXMxD6KRdC4Km4IJKagcrjttwJozFbNaaNpCGDqfMZXaWSNpGCE2Bu6oFuWN7FdSaC2HiliJLZrEEdXW97aEEi/Dt0NjyrVxu1IppVkktk3eqLGUjRs1iBH1wPJgAEZhrfQm4nIGjnI8FeMsdOOnMWNrGtHo08cbs0rqgMEqAtexaSF0VdATqWHvo3FJEyCQyBUMR4sc7yR9UgXBPWABBIuTxsWvWKhgbrlZSByzR6aW9GiwLJcEAUUyxm9szpmKJmNjfqgtlGpsO2160OjBjgx0TyOuSKW5ks1iouAwFr2PEC19azpJ4LcJRYgGzJ+K07YnDnU73X+KPlp6NVqhB88qRYH4sHDtvRKMtysYWJkazEDrOSDYegL6m1Z0MSMsbBwzMrXUXzR5WyjPcWJYaixPfah5sVhzcWm/3R/lpoMRACLCca+lH+WmmKh8LLGkqs4LKrgsmlmCspI77i47Na6LpCIJHxkgnLtL1oghNnVpRIVlUr1coAsLjrIOIrl5Ww4J6s+v8AFH+SiIsXABfLL1R6Udzf+XlSbKDGEJwTYZXVJd8s3XJCyJujHkzWsGQ3IDW0ka2ulR6TTLM0eU5mWGOIvr5VkjCmQlgCdbKCdSFBrPMuHHKc3186Pj/trSmfB5EO8xJkGjIViCqNNc9zmHdlB0N7aXQBHTXEJJiZXjCFDISJEz3kOSNesH4FCGtYDzm7apxeNjbCYWNN2zpC6OwL54icS8oX0SGUgHQ8SLignngYG++sCbdaP946nzKgrYdRoJtT6UfK49GhLQUFriUOAkjLqJPjMcgTXMyLHKhK6W0Mi6Xvxq3CYiJsGkRdEeOd5HVyV3qOiKrqwU9Zcrrl42a4BuRWdaAgnLMbH0o/yVWTh+yf/dH+SgVGhJJFLjGO8YwGRjvJCc8ka69YhfPe3ZoWF+Bo7b+0YsRHDiFYLNYxSxlszWRjupbhFU9Tq8L2RPGsbLhyB8t4Zo/yUmSAcptf4o/yUDo6TZW1YlXDQTurQWzXS5kwswnkcSLpqrKY86jiCea681NJmL66Ek6d5qULYcHhN62jP/jTAYc8pR/MmmvHRKAolEDfKqsxOgABYnuAF71tYTBth93JdjmAaTdiVJIwyMViJADizWL5dNU42tVuBihizl5FeJ2WNGQkkgAvIGAUm1wB5pvYXAVqlgdsRxNOosY2AVYyhfzl8o6XKiM5rFTcFb6LqQJbA5vbsweZ2AZQbWD3zWyqL666m7X55r86VNtKXeTSSC9ma4zWBtawFgSAANALmwAFNVDJwnWpSebSpVDGgeT9e+iMPopHj9ZpUqsRnSdlM3KnpUxFCU440qVAxxUF50qVADtUjT0qAHHL9c6duVKlSYBsfyZ9dCUqVMCxOfqqx+NKlSAjL5wqxv7UqVAEsMvXoh/OHr+ulSqQK0QFjpSpUqYz/9k=', NULL, NULL),
(6, 5, 'Memory', 'Roberto Harris', 2001, 'Et excepturi recusandae sit velit deserunt. Itaque repellat est nam blanditiis iusto. Sunt atque maiores facere qui at.', 'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/contemporary-fiction-night-time-book-cover-design-template-1be47835c3058eb42211574e0c4ed8bf_screen.jpg?ts=1637012564', NULL, NULL),
(7, 2, 'Menanti Hari Berganti', 'Hoyt Ondricka', 1973, 'Ut esse sed culpa ut nam. Perferendis exercitationem debitis illo sed ea.', 'https://cdn.storial.co/book_front/130369-80a181d9ce021b264f721bb4dcc9a04a4e2e14e4.jpeg', NULL, NULL),
(8, 4, 'Lunar Storm', 'Dr. Kyle Metz', 1996, 'Corrupti ut autem veniam suscipit nisi laborum dolor. Tenetur eum doloremque porro et consequuntur iusto et. Dolor facilis molestiae laborum. Esse et impedit exercitationem dolorem minima.', 'https://www.adobe.com/express/create/cover/media_178ebed46ae02d6f3284c7886e9b28c5bb9046a02.jpeg?width=400&format=jpeg&optimize=medium', NULL, NULL),
(9, 2, 'The Gravity of Us', 'Justyn Homenick DVM', 1996, 'Fugit ut cupiditate molestiae inventore. Debitis et nihil quo. Alias perspiciatis soluta vel dolorum occaecati rem dolor sed.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNhNsyIsX8kJUwVpFYow_gl-XXA8sCwpMd0g&usqp=CAU', NULL, NULL),
(10, 8, 'Senja', 'Rogers Pfannerstill', 1997, 'Quis odio molestias accusamus omnis harum harum. Qui ut magni autem aliquid atque sint sequi dolorem. Ex reprehenderit ipsa modi corporis tempora magni hic. Corrupti consequatur sequi nulla aliquam aspernatur sunt quaerat. Autem voluptatem esse illo aut velit illum error.', 'https://marketplace.canva.com/EAFGrsTg1E4/1/0/1003w/canva-hitam-putih-sederhana-senja-sampul-buku-novel-GFJaJwn7bsE.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`id`, `book_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 8, 1, NULL, NULL),
(2, 6, 2, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 9, 2, NULL, NULL),
(6, 2, 4, NULL, NULL),
(7, 6, 4, NULL, NULL),
(8, 5, 2, NULL, NULL),
(9, 6, 3, NULL, NULL),
(10, 3, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Horror', NULL, NULL),
(2, 'Action', NULL, NULL),
(3, 'Romance', NULL, NULL),
(4, 'Fantasy', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_23_070055_create_categories_table', 1),
(6, '2022_11_23_070336_create_books_table', 1),
(7, '2022_11_23_070505_create_book_category_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `address`, `phone`, `email`, `image`, `created_at`, `updated_at`) VALUES
(1, 'CV Pradana Fujiati Tbk', 'Psr. Mulyadi No. 341, Probolinggo 91349, Gorontalo', '+628614743388', 'csihombing@example.org', 'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/company-logo-design-template-0c8f73b879606dbc7740c5d752e592ea_screen.jpg?ts=1606800623', '2022-11-24 21:18:27', '2022-11-24 21:18:27'),
(2, 'Perum Sihotang', 'Ds. Industri No. 605, Padangsidempuan 95253, Sulbar', '+628529802957', 'yance95@example.org', 'https://www.designhill.com/resize_img.php?atyp=page_file&pth=ft_ca_ct||117||contestfile_1&flp=1554116576-13511971185ca1efe0bcd5a0-26602492.jpg', '2022-11-24 21:18:27', '2022-11-24 21:18:27'),
(3, 'PT Anggraini', 'Kpg. Uluwatu No. 297, Pangkal Pinang 97984, Banten', '+628712963705', 'queen93@example.net', 'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/business-logo-design-template-78655edda18bc1196ab28760f1535baa_screen.jpg?ts=1617645324', '2022-11-24 21:18:27', '2022-11-24 21:18:27'),
(4, 'UD Najmudin Farida Tbk', 'Ki. Bank Dagang Negara No. 845, Yogyakarta 45222, Sultra', '+628800153558', 'hani35@example.com', 'data:image/png;base64,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', '2022-11-24 21:18:27', '2022-11-24 21:18:27'),
(5, 'CV Safitri', 'Ki. Otista No. 373, Langsa 68174, NTB', '+628358777930', 'kuswandari.aurora@example.org', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTeDoygh6ITaNmXiqga1ZKbReHxrzQzYCu_A&usqp=CAU', '2022-11-24 21:18:27', '2022-11-24 21:18:27'),
(6, 'Perum Susanti Ardianto', 'Ds. Jend. Sudirman No. 602, Palembang 24797, Sumsel', '+628237363936', 'anggabaya04@example.com', 'https://c8.alamy.com/comp/PXPBDW/building-logo-design-real-estate-company-logo-design-abstract-construction-logo-design-building-logo-design-PXPBDW.jpg', '2022-11-24 21:18:27', '2022-11-24 21:18:27'),
(7, 'PD Iswahyudi Tbk', 'Ki. Casablanca No. 219, Malang 58090, Aceh', '+628426981499', 'amalia.yolanda@example.com', 'data:image/png;base64,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', '2022-11-24 21:18:27', '2022-11-24 21:18:27'),
(8, 'PD Rahmawati Sudiati', 'Ds. Jakarta No. 811, Administrasi Jakarta Utara 86109, Sulbar', '+628837023209', 'dmandasari@example.org', 'https://www.logodesign.net/logo/line-art-house-roof-and-buildings-4485ld.png', '2022-11-24 21:18:27', '2022-11-24 21:18:27'),
(9, 'CV Laksita Tbk', 'Ki. Supomo No. 938, Pekanbaru 25075, Babel', '+628727873938', 'himawan.pradipta@example.org', 'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/company-logo-design-template-e4ab4c68b80a762c8cb43f222748c3c4_screen.jpg?ts=1561508783', '2022-11-24 21:18:27', '2022-11-24 21:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_publisher_id_foreign` (`publisher_id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_category_book_id_foreign` (`book_id`),
  ADD KEY `book_category_category_id_foreign` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_publisher_id_foreign` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`);

--
-- Constraints for table `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `book_category_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
