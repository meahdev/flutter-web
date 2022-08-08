String upperCase(String text) {
  return text.replaceAll('/', '').substring(0, 1).toUpperCase() +
      text.replaceAll('/', '').substring(1).toLowerCase();
}
