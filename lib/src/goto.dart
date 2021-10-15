import 'dart:html';

void main() {
  final search = window.location.search ?? '';
  final next = 'next=${window.location.pathname}';
  if (search.isEmpty) {
    window.location.href = '/?$next';
  } else {
    window.location.href = '/$search&$next';
  }
}
