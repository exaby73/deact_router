import 'dart:html';

import 'package:deact/deact.dart';
import 'package:deact/deact_html52.dart';

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
  window.history.pushState(null, '', path);
}

DeactNode notFound() {
  return fc(
    (ctx) => div(
      children: [
        txt('Not found'),
        div(
          onclick: (event) => goto(ctx, '/'),
          children: [txt('Back to home')],
        ),
      ],
    ),
  );
}

String getNext() {
  final next = UrlSearchParams(window.location.search).get('next');
  return next ?? window.location.pathname ?? '/';
}
