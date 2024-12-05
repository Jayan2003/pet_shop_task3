String getImageUrl(String imageUrl) {
  String pattern = "d/([^/]+)";
  RegExp regex = RegExp(pattern);
  Match? match = regex.firstMatch(imageUrl);

  if (match != null) {
    String fileId = match.group(1)!;
    return "https://drive.google.com/uc?export=view&id=$fileId";
  } else {
    return "";
  }
}
