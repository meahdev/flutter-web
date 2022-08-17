int getRouteIndex(String route) {
  if (route == 'Buttons') {
    return 1;
  } else if (route == 'Rating') {
    return 2;
  } else if (route == 'Badge') {
    return 3;
  } else if (route == 'Toast') {
    return 4;
  } else if (route == 'Alert Dialog') {
    return 5;
  } else if (route == 'Modal') {
    return 6;
  } else if (route == 'Basic Action Email') {
    return 7;
  } else if (route == 'Alert Email') {
    return 8;
  } else if (route == 'Billing Email') {
    return 9;
  } else if (route == 'Loaders') {
    return 10;
  } else {
    return 0;
  }
}
