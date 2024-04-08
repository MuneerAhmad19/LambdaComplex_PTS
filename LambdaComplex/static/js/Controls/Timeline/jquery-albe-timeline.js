/*!
 * Albe-Timeline v4.0.2, https://github.com/Albejr/jquery-albe-timeline
 * ======================================================================
 * Plugin para renderização de 'linha do tempo' a partir de listas de dados em JSON
 *
 * 2017, Albertino Júnior, http://albertino.eti.br
 */
!function (e) { e.fn.albeTimeline = function (t, n) { var r = this; r.html(""); var s = e.extend({}, e.fn.albeTimeline.defaults, n), i = e.fn.albeTimeline.languages.hasOwnProperty(s.language) ? e.fn.albeTimeline.languages[s.language] : { days: ["Domingo", "Segunda-feira", "Terça-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sábado"], months: ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"], shortMonths: ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago", "Set", "Out", "Nov", "Dez"], separator: "de", msgEmptyContent: "Sem informações a serem exibidas." }; if ("string" == typeof t && (t = e.parseJSON(t)), e.isEmptyObject(t)) return void console.warn(i.msgEmptyContent); t = t.sort(function (e, a) { return s.sortDesc ? Date.parse(a.time) - Date.parse(e.time) : Date.parse(e.time) - Date.parse(a.time) }); var l = e("<ul>").attr("id", "timeline-menu"), d = e("<section>").attr("id", "timeline"); e.each(t, function (t, n) { var r = new Date(n.time).getUTCFullYear(), o = e(d).find("div.group" + r); if (0 === o.length) { o = e("<div>").attr("id", "y" + r).addClass("group" + r).text(r), e(d).append(o); var p = e("<a>").attr("href", "#y" + r).text(r); l.append(e("<li>").append(p)) } var c = e("<div>").addClass("badge"); c.html(a(n.time, s.formatDate, i)); var g = e("<div>").addClass("panel").append(c); if (n.header) { var u = e("<div>").addClass("panel-heading"), f = e("<h4>").addClass("panel-title").text(n.header); u.append(f), g.append(u) } var h = e("<div>").addClass("panel-body"); if (e.each(n.body, function (a, t) { var n = e("<" + t.tag + ">"); e(t.attr).each(function () { e.each(this, function (e, a) { "cssclass" === e.toLowerCase() ? n.addClass(a) : n.attr(e, a) }) }), t.content && n.html(t.content), h.append(n) }), g.append(h), n.footer) { var m = e("<div>").addClass("panel-footer").html(n.footer); g.append(m) } var v = o.siblings('article[id^="a' + r + '"]'), b = e('<article id="a' + r + "-" + (v.length + 1) + '">').append(g); v.length > 0 ? b.insertAfter(v.last()) : b.insertAfter(o) }); var o = e("<div>").addClass("badge").html("&nbsp;"), p = e("<div>").addClass("panel").append(o); d.append(e("<article>").append(p)), d.append(e("<div>").addClass("clearfix").css({ "float": "none" })), e.each(d.find("article"), function (a, t) { e(this).addClass(a % 2 == 0 ? "" : "inverted"), s.effect && "none" != s.effect && e(this).addClass("animated " + s.effect) }), s.showGroup ? s.showMenu && l.appendTo(r) : e.each(d.find('div[class*="group"]'), function (a, t) { e(this).css("display", "none") }), d.appendTo(r) }, e.fn.albeTimeline.languages = {}, e.fn.albeTimeline.defaults = { effect: "fadeInUp", formatDate: "dd MMM", language: "pt-BR", showGroup: !0, showMenu: !0, sortDesc: !0 }; var a = function (e, a, n) { var r = e.split(/[ :\-\/]/g), s = new Date(r[0], r[1] - 1, r[2], r[3] || 0, r[4] || 0, r[5] || 0); return n.separator && (a = a.replace(new RegExp(n.separator, "g"), "___")), a = a.replace("ss", t(s.getSeconds(), 2)), a = a.replace("s", s.getSeconds()), a = a.replace("dd", t(s.getDate(), 2)), a = a.replace("d", s.getDate()), a = a.replace("mm", t(s.getMinutes(), 2)), a = a.replace("m", s.getMinutes()), a = a.replace("MMMM", n.months[s.getMonth()]), a = a.replace("MMM", n.months[s.getMonth()].substring(0, 3)), a = a.replace("MM", t(s.getMonth() + 1, 2)), a = a.replace("DD", n.days[s.getDay()]), a = a.replace("yyyy", s.getUTCFullYear()), a = a.replace("YYYY", s.getUTCFullYear()), a = a.replace("yy", (s.getUTCFullYear() + "").substring(2)), a = a.replace("YY", (s.getUTCFullYear() + "").substring(2)), a = a.replace("HH", t(s.getHours(), 2)), a = a.replace("H", s.getHours()), n.separator && (a = a.replace(new RegExp("___", "g"), n.separator)), a }, t = function (e, a, t) { return t = t || "0", e += "", e.length >= a ? e : new Array(a - e.length + 1).join(t) + e } }(jQuery);