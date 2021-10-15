import 'package:deact/deact.dart';
import 'package:deact/deact_html52.dart';
import 'package:deact_router/deact_router.dart';

void main() {
  final next = getNext();

  deact(
    '#output',
    (_) => globalState(
      name: 'route',
      initialValue: next,
      children: [
        router(
          routes: {
            '/': (_) => home(),
            '/about': (_) => about(),
          },
        ),
      ],
    ),
  );
}

DeactNode home() {
  return div(
    children: [
      h1(children: [txt('Home page')]),
      linkTo(
        href: '/about',
        children: [txt('About page')],
      ),
    ],
  );
}

DeactNode about() {
  return div(
    children: [
      h1(children: [txt('About page')]),
      linkTo(
        href: '/',
        children: [txt('Home page')],
      ),
    ],
  );
}
