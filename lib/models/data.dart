class GameImage {
  String url;
  String title;

  GameImage(this.url, this.title);
}

class Game {
  String title;
  GameImage coverImage;
  // List<GameImage> images;
  String description;
  String studio;

  Game(this.title, this.coverImage, this.description, this.studio);
}

List<Game> games = [
  Game(
    "Horizon Zero Dawn",
    GameImage(
        "https://www.wallpaperflare.com/static/734/272/885/horizon-zero-dawn-playstation-4-logo-aloy-horizon-zero-dawn-wallpaper.jpg",
        ""),
    "Spyro the Dragon is a platform game developed by Insomniac Games and published by Sony Computer Entertainment for the PlayStation on September 10, 1998. The first game in the Spyro series, it stars the title character, a young purple dragon named Spyro, and his dragonfly friend, Sparx, who must journey across the Dragon Kingdom in order to defeat Gnasty Gnorc (pronounced nas-tee nork), who has overtaken the 5 dragon Homeworlds ",
    "Guerrilla Games",
  ),
  Game(
    "Metro Exodus",
    GameImage(
        "https://assets1.ignimgs.com/2018/12/14/metro-exodus---button-1544750418985.jpg",
        ""),
    "",
    "4A Games",
  ),
  Game(
    "Tom Clancy's ",
    GameImage(
        "https://cdn.division.zone/uploads/2019/03/tc-the-division-2-preload-start-times-sizes-header.jpg",
        ""),
    "",
    "Massive Entertainment",
  ),
  Game(
    "Resident Evil 2",
    GameImage(
        "https://media.playstation.com/is/image/SCEA/resident-evil-2-box-art-01-ps4-us-12dec18?\$native_nt\$",
        ""),
    "",
    "Capcom",
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
    "Lyto: Seal Online",
    GameImage("https://www.ps1fun.com/thumbs/spyro-the-dragon.jpg", ""),
    "",
    "Seal Online Games",
  ),
  Game(
    "Ragnarok Online",
    GameImage(
        "https://gamerwk.sgp1.cdn.digitaloceanspaces.com/2021/10/RO1.jpg", ""),
    "",
    "Ragnarok Online",
  ),
  Game(
    "Gunbound: Massive Assault",
    GameImage(
        "https://cdn.idntimes.com/content-images/community/2018/02/maxresdefault-95fbd975b16fec62380c494850e9d775.jpg",
        ""),
    "",
    "CyberConnect2",
  ),
  Game(
    "Mortal Kombat 11",
    GameImage(
        "https://static.trueachievements.com/customimages/093902.jpg", ""),
    "",
    "NetherRealm Studios",
  )
];
