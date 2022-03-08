import 'dart:html';

import 'package:deact/deact.dart';
import 'package:deact/deact_html52.dart';
import 'package:deact_router/deact_router.dart';

DeactNode router({
  required Map<String, FunctionalComponent> routes,
  FunctionalComponent? notFoundRoute,
}) {
  return fc(
    (ctx) {
      final route = ctx.globalState<String>('route');
      var value = route.value;
      while (value != '/' && value.endsWith('/')) {
        value = value.substring(0, value.length - 1);
      }

      if (routes.containsKey(value)) {
        return routes[value]!.call(ctx);
      } else {
        return notFoundRoute?.call(ctx) ?? notFound();
      }
    },
  );
}

void changeTitle(String title) {
  document.title = title;
}

void goto(ComponentContext ctx, String path) {
  final route = ctx.globalState<String>('route');
  route.set((state) => path);
  window.history.pushState(null, '', '#$path');
}

DeactNode notFound() {
  return fc(
    (ctx) => div(
      children: [
        h1(children: [txt('Not found')]),
        linkTo(
          href: '/',
          children: [txt('Back to home')],
        ),
      ],
    ),
  );
}

String getNext() {
  final url = Uri.parse(window.location.href);
  var fragment = url.fragment.replaceFirst('#', '');
  if (fragment.isEmpty) fragment = '/';
  return fragment;
}
