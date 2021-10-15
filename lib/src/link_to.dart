import 'dart:html' as h;

import 'package:deact/deact.dart';
import 'package:deact/deact_html52.dart';
import 'package:deact_router/deact_router.dart';

DeactNode linkTo({
  Object? key,
  Ref<h.Element?>? ref,
  String? accesskey,
  String? className,
  String? contenteditable,
  String? dir,
  String? draggable,
  String? hidden,
  String? id,
  String? lang,
  String? spellcheck,
  String? style,
  String? tabindex,
  String? title,
  EventListener<h.UIEvent>? onabort,
  EventListener<h.Event>? onafterprint,
  EventListener<h.Event>? onbeforeprint,
  EventListener<h.BeforeUnloadEvent>? onbeforeunload,
  EventListener<h.FocusEvent>? onblur,
  EventListener<h.Event>? onchange,
  EventListener<h.CompositionEvent>? oncompositionend,
  EventListener<h.CompositionEvent>? oncompositionstart,
  EventListener<h.CompositionEvent>? oncompositionupdate,
  EventListener<h.MouseEvent>? oncontextmenu,
  EventListener<h.MouseEvent>? ondblclick,
  EventListener<h.MouseEvent>? ondrag,
  EventListener<h.MouseEvent>? ondragend,
  EventListener<h.MouseEvent>? ondragenter,
  EventListener<h.MouseEvent>? ondragleave,
  EventListener<h.MouseEvent>? ondragover,
  EventListener<h.MouseEvent>? ondragstart,
  EventListener<h.MouseEvent>? ondrop,
  EventListener<h.UIEvent>? onerror,
  EventListener<h.FocusEvent>? onfocus,
  EventListener<h.FocusEvent>? onfocusin,
  EventListener<h.FocusEvent>? onfocusout,
  EventListener<h.HashChangeEvent>? onhashchange,
  EventListener<h.Event>? oninput,
  EventListener<h.Event>? oninvalid,
  EventListener<h.KeyboardEvent>? onkeydown,
  EventListener<h.KeyboardEvent>? onkeyup,
  EventListener<h.Event>? onlanguagechange,
  EventListener<h.UIEvent>? onload,
  EventListener<h.MouseEvent>? onmousedown,
  EventListener<h.MouseEvent>? onmouseenter,
  EventListener<h.MouseEvent>? onmouseleave,
  EventListener<h.MouseEvent>? onmousemove,
  EventListener<h.MouseEvent>? onmouseout,
  EventListener<h.MouseEvent>? onmouseover,
  EventListener<h.MouseEvent>? onmouseup,
  EventListener<h.PageTransitionEvent>? onpagehide,
  EventListener<h.PageTransitionEvent>? onpageshow,
  EventListener<h.PopStateEvent>? onpopstate,
  EventListener<h.Event>? onreset,
  EventListener<h.UIEvent>? onresize,
  EventListener<h.UIEvent>? onscroll,
  EventListener<h.UIEvent>? onselect,
  EventListener<h.MouseEvent>? onshow,
  EventListener<h.Event>? onsubmit,
  EventListener<h.UIEvent>? onunload,
  EventListener<h.WheelEvent>? onwheel,
  Iterable<DeactNode>? children,
  required String href,
}) {
  const _style = 'user-select: none; cursor: pointer;';
  return fc(
    (ctx) => div(
      key: key,
      ref: ref,
      accesskey: accesskey,
      className: className,
      contenteditable: contenteditable,
      dir: dir,
      draggable: draggable,
      hidden: hidden,
      id: id,
      lang: lang,
      spellcheck: spellcheck,
      style: style == null ? _style : '$_style$style',
      tabindex: tabindex,
      title: title,
      onabort: onabort,
      onafterprint: onafterprint,
      onbeforeprint: onbeforeprint,
      onbeforeunload: onbeforeunload,
      onblur: onblur,
      onclick: (_) => goto(ctx, href),
      onchange: onchange,
      oncompositionend: oncompositionend,
      oncompositionstart: oncompositionstart,
      oncompositionupdate: oncompositionupdate,
      oncontextmenu: oncontextmenu,
      ondblclick: ondblclick,
      ondrag: ondrag,
      ondragend: ondragend,
      ondragenter: ondragenter,
      ondragleave: ondragleave,
      ondragover: ondragover,
      ondragstart: ondragstart,
      ondrop: ondrop,
      onerror: onerror,
      onfocus: onfocus,
      onfocusin: onfocusin,
      onfocusout: onfocusout,
      onhashchange: onhashchange,
      oninput: oninput,
      oninvalid: oninvalid,
      onkeydown: onkeydown,
      onkeyup: onkeyup,
      onlanguagechange: onlanguagechange,
      onload: onload,
      onmousedown: onmousedown,
      onmouseenter: onmouseenter,
      onmouseleave: onmouseleave,
      onmousemove: onmousemove,
      onmouseout: onmouseout,
      onmouseover: onmouseover,
      onmouseup: onmouseup,
      onpagehide: onpagehide,
      onpageshow: onpageshow,
      onpopstate: onpopstate,
      onreset: onreset,
      onresize: onresize,
      onscroll: onscroll,
      onselect: onselect,
      onshow: onshow,
      onsubmit: onsubmit,
      onunload: onunload,
      onwheel: onwheel,
      children: children,
    ),
  );
}