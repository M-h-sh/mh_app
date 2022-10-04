class Project {
  final String? title, description, link;

  Project({this.title, this.description, this.link});
}

List<Project> demo_projects = [
  Project(
    title: "My Personal Portfolio website",
    description: "lib/images/newP.png",
    link: 'http://mh-new-portfolio.netlify.app/',
  ),
  Project(
    title: "The Good People Data Company Website",
    description: "lib/images/tgpdc.png",
    link: 'https://tgpdc-web-site.netlify.app/',
  ),
  Project(
    title: "Music Player Web Application",
    description: "lib/images/musicp.png",
    link: 'https://mh-music-player.netlify.app/',
  ),
  Project(
      title: "After Effect Tutorial",
      description: "lib/images/after.png",
      link:
          "https://drive.google.com/file/d/1F2xQkJs1kYUZmJoujS1feajICCQEKRvI/view"),
  Project(
    title: "Unity3d Game",
    description: "lib/images/game.png",
    link:
        "https://drive.google.com/file/d/1_bDlkV8DBiClAE9KVWEwvGWUTqQKYNDx/view",
  ),
  Project(
      title: "Figma Design",
      description: "lib/images/figma.png",
      link: "https://www.figma.com/file/2D0uXTFTHRTmadM1vgZsBP/My-Web-Design"),
];
