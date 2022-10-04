class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> demo_recommendations = [
  Recommendation(
    name: "Microsoft 365",
    source: "Passed 4 Exams",
    text:
        "Microsoft Certified: Security, Compliance, and Identity Fundamentals,Fundamentals,Teams Application Developer Associate, And Teams Administrator Associate",
  ),
  Recommendation(
    name: "Web Development",
    source: "Obtained 10+ Certificates",
    text:
        "Responsive web Design,Front-end Development,Javascript,CSS,Html,And Version Control",
  ),
  Recommendation(
    name: "Flutter App Development",
    source: "Obtained 3 Certificates",
    text:
        "Dart Functions Framework,Getting started with Flutter Development, And Introduction to Dart",
  ),
];
