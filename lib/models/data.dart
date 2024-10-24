class GameImage {
  String url;
  String price;

  GameImage(this.url, this.price);
}

class Game {
  String title;
  GameImage coverImage;
  // List<GameImage> images;
  String description;
  String players;

  Game(this.title, this.coverImage, this.description, this.players);
}

List<Game> games = [
  Game(
    "Harvest Moon",
    GameImage(
        "https://cdnpro.eraspace.com/media/mageplaza/blog/post/h/a/harvestmoon-primary.jpg",
        "Free"),
    "Get a chance to own a farm and experience a rural life in this fun farming simulation video game - Harvest Moon: Back to Nature.Harvest Moon: Back to Nature is a farming simulation video game that was released back in 1999 for the PlayStation 1 gaming console. The game features role-playing elements with both life simulation and dating simulation elements mixed in. The goal of the game is to increase the value of the farm and earn a lot of money during your stay on the farm to make the farm officially yours. Will you be able to gain enough money and build a solid relationship with the villagers",
    "Single Player",
  ),
  Game(
    "CTR",
    GameImage(
        "https://image.api.playstation.com/cdn/UP0002/CUSA07402_00/5GJcmwHfNAJGmSfuK1FchewnevkEMFVWluBS4SKmmPA1oFxJYUq1wIUfnOcC3KAo.png",
        "Free"),
    "Crash Bandicoot: The Wrath of Cortex is a 2001 platform game developed by Traveller's Tales and published by Universal Interactive. It was first released for the PlayStation 2 and later ported to the Xbox, and GameCube, with Eurocom developing the GameCube version. It is the fourth main installment and the sixth overall in the Crash Bandicoot video game series, being the first of the series to not be released solely for a PlayStation console.",
    "Multiplayer",
  ),
  Game(
    "Teken 3",
    GameImage(
        "https://assets-prd.ignimgs.com/2022/03/13/tekken3-1647189672174.jpg",
        "Free"),
    "Tekken 3 (鉄拳3) is a 1997 fighting video game, the third title in Namco's Tekken series, and the first game built on the Namco System 12 arcade hardware. Plotwise, the game takes place twenty years after Tekken 2 (1995) and features a largely new cast of characters, including the debut of several now-staple characters such as Jin Kazama, Ling Xiaoyu and Bryan Fury, and adds sidestepping ability to every character in-game. Tekken 3 was ported to the PlayStation in 1998 with additional content, including a beat 'em up mode called Tekken Force.",
    "Multiplayer",
  ),
  Game(
    "Tony Hawk",
    GameImage(
        "https://assets-prd.ignimgs.com/2021/12/17/tony-hawk-prp-skater-2-1639763193495.jpg",
        "Free"),
    "Tony Hawk's Pro Skater 2 is a 2000 skateboarding video game developed by Neversoft for PlayStation, Vicarious Visions for Game Boy Advance, and Natsume for Game Boy Color. Published by Activision, it is the second installment in the Tony Hawk's series of sports games, and was released for the PlayStation in 2000, with subsequent ports to Windows and Dreamcast alongside a distinct version for Game Boy Color the same year. In 2001, the game was ported to Mac OS, Mac OS X, Nintendo 64, and Xbox (as part of Tony Hawk's Pro Skater 2x), alongside a separate version for Game Boy Advance. The game was later ported to Windows Mobile and Windows Phone devices in 2006 and to iPhone OS devices in 2010.",
    "Single Player",
  ),
];

List<Game> games2 = [
  Game(
    "Grand Theft Auto V",
    GameImage(
        "https://gpstatic.com/acache/26/25/1/uk/packshot-7136bdab871d6b2c8f07ccc9ad33b4d0.jpg",
        ""),
    "",
    "Rockstar Games",
  ),
  Game(
    "The Last of Us Part II",
    GameImage("https://mvpo.us/img/P6253.jpg", ""),
    "",
    "Naughty Dog",
  ),
  Game(
    "Sekiro: Shadows Die Twice",
    GameImage(
        "https://onlysp.escapistmagazine.com/wp-content/uploads/2019/03/Sekiro-Shadows-Die-Twice-logo-art.jpg",
        ""),
    "",
    "From Software",
  ),
  Game(
    "Just Cause 4",
    GameImage(
        "https://s3.gaming-cdn.com/images/products/2666/orig/just-cause-4-cover.jpg",
        ""),
    "",
    "Avalanche Studios",
  ),
];

List<Game> featuredGames = [
  Game(
    "Spyro the Dragon",
    GameImage("https://www.ps1fun.com/thumbs/spyro-the-dragon.jpg", ""),
    "Spyro",
    "Playstation 1",
  ),
  Game(
    "NASCAR Thunder 2002",
    GameImage("https://www.ps1fun.com/thumbs/NASCAR%20Thunder%202002.jpg", ""),
    "NASCAR Thunder 2002",
    "Playstation 1",
  ),
  Game(
    "Dragon Ball Z: Ultimate Battle 22",
    GameImage(
        "https://www.ps1fun.com/thumbs/Dragon_Ball_Z_-_Ultimate_Battle.jpg",
        "Dragon Ball Z"),
    "Dragon Ball Z",
    "Playstation 1",
  ),
  Game(
    "Winning Eleven 3: Final Version",
    GameImage(
        "https://www.ps1fun.com/thumbs/World%20Soccer%20Jikkyou%20Winning%20Eleven%203%20-%20Final%20Ver.jpg",
        "Winning Eleven 3"),
    "Winning Eleven 3",
    "Playstation 1",
  )
];
