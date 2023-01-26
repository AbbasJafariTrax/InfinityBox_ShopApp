import 'package:flutter/material.dart';

Size mediaQuerySize(BuildContext context) {
  return MediaQuery.of(context).size;
}

EdgeInsets mediaQueryPadding(BuildContext context) {
  return MediaQuery.of(context).padding;
}
