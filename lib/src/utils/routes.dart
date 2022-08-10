int getRouteIndex(String route) {
  if (route == 'Buttons') {
    return 1;
  } else if (route == 'Rating') {
    return 2;
  } else if (route == 'Badge') {
    return 3;
  } else if (route == 'Toast') {
    return 4;
  } else if (route == 'Cupertino Icons') {
    return 5;
  } else if (route == 'Morris Chart') {
    return 6;
  }else if (route == 'Chartist chart') {
    return 7;
  } else {
    return 0;
  }
}
