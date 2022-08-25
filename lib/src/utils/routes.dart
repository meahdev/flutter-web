import 'package:admin_dashboard/src/constant/string.dart';

int getRouteIndex(String route) {
  if (route == Strings.buttons) {
    return 1;
  } else if (route == Strings.rating) {
    return 2;
  } else if (route == Strings.badge) {
    return 3;
  } else if (route == Strings.toast) {
    return 4;
  } else if (route == Strings.alertDialog) {
    return 5;
  } else if (route == Strings.modal) {
    return 6;
  } else if (route == Strings.basicActionEmail) {
    return 7;
  } else if (route == Strings.alertEmail) {
    return 8;
  } else if (route == Strings.billingEmail) {
    return 9;
  } else if (route == Strings.loader) {
    return 10;
  } else if (route == Strings.morrisChart) {
    return 11;
  } else if (route == Strings.chartistChart) {
    return 12;
  } else if (route == Strings.chartJsChart) {
    return 13;
  } else if (route == Strings.basicTable) {
    return 14;
  } else if (route == Strings.dataTable) {
    return 15;
  } else if (route == Strings.responsiveTable) {
    return 16;
  } else if (route == Strings.editableTable) {
    return 17;
  } else if (route == Strings.timeline) {
    return 18;
  } else if (route == Strings.pricing) {
    return 19;
  } else if (route == Strings.directory) {
    return 20;
  } else if (route == Strings.faqs) {
    return 21;
  } else if (route == Strings.invoice) {
    return 22;
  } else if (route == Strings.gallery) {
    return 23;
  } else if (route == Strings.carousel) {
    return 24;
  } else if (route == Strings.tabs) {
    return 25;
  } else if (route == Strings.calendar) {
    return 26;
  } else {
    return 0;
  }
}
