enum FileDownloadLimit {
  one('1'),
  two('2'),
  three('3'),
  four('4'),
  five('5'),
  ten('10'),
  unlimited('Unlimited');

  const FileDownloadLimit(this.label);
  final String label;
}
