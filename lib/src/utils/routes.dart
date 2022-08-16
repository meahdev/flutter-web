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
  } else if (route == 'Timeline') {
    return 6;
  } else if (route == 'Coming soon') {
    return 7;
  } else if (route == 'Error 404') {
    return 8;
  } else if (route == 'Error 500') {
    return 9;
  } else if (route == 'Maintenence') {
    return 10;
  } else if (route == 'Pricing') {
    return 11;
  } else if (route == 'Directory') {
    return 11;
  }  else if (route == 'FAQs') {
    return 12;
  }  else if (route == 'Invoice') {
    return 13;
  } else {
    return 0;
  }
}
