enum FileExpiration {
  burnAfterRead('Burn After Read'),
  tenMinutes('10 Minutes'),
  oneHour('1 Hour'),
  oneDay('1 Day'),
  oneWeek('1 Week'),
  twoWeeks('2 Weeks'),
  oneMonth('1 Month'),
  sixMonths('6 Months'),
  oneYear('1 Year');

  const FileExpiration(this.label);
  final String label;
}
