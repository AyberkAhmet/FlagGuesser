import 'dart:math';

class Questions {
  String questionFlag;
  List<String> flagNames;

  Questions({this.flagNames, this.questionFlag});
}

getQuestion() {
  List<String> allFlags;
  List<String> allFlagNames;
  List<String> flagNames = [];
  String questionFlag;
  var random = Random();

  List<int> randomNumbers = [];

  allFlags = [
    "assets/flags/ad.png",
    "assets/flags/ae.png",
    "assets/flags/af.png",
    "assets/flags/ag.png",
    "assets/flags/ai.png",
    "assets/flags/al.png",
    "assets/flags/am.png",
    "assets/flags/ao.png",
    "assets/flags/aq.png",
    "assets/flags/ar.png",
    "assets/flags/as.png",
    "assets/flags/at.png",
    "assets/flags/au.png",
    "assets/flags/aw.png",
    "assets/flags/ax.png",
    "assets/flags/az.png",
    "assets/flags/ba.png",
    "assets/flags/bb.png",
    "assets/flags/bd.png",
    "assets/flags/be.png",
    "assets/flags/bf.png",
    "assets/flags/bg.png",
    "assets/flags/bh.png",
    "assets/flags/bi.png",
    "assets/flags/bj.png",
    "assets/flags/bl.png",
    "assets/flags/bm.png",
    "assets/flags/bn.png",
    "assets/flags/bo.png",
    "assets/flags/br.png",
    "assets/flags/bs.png",
    "assets/flags/bt.png",
    "assets/flags/bv.png",
    "assets/flags/bw.png",
    "assets/flags/by.png",
    "assets/flags/bz.png",
    "assets/flags/ca.png",
    "assets/flags/cc.png",
    "assets/flags/cd.png",
    "assets/flags/cf.png",
    "assets/flags/cg.png",
    "assets/flags/ch.png",
    "assets/flags/ci.png",
    "assets/flags/ck.png",
    "assets/flags/cl.png",
    "assets/flags/cm.png",
    "assets/flags/cn.png",
    "assets/flags/co.png",
    "assets/flags/cr.png",
    "assets/flags/cu.png",
    "assets/flags/cv.png",
    "assets/flags/cw.png",
    "assets/flags/cx.png",
    "assets/flags/cy.png",
    "assets/flags/cz.png",
    "assets/flags/de.png",
    "assets/flags/dj.png",
    "assets/flags/dk.png",
    "assets/flags/dm.png",
    "assets/flags/do.png",
    "assets/flags/dz.png",
    "assets/flags/ec.png",
    "assets/flags/ee.png",
    "assets/flags/eg.png",
    "assets/flags/eh.png",
    "assets/flags/er.png",
    "assets/flags/es.png",
    "assets/flags/et.png",
    "assets/flags/fi.png",
    "assets/flags/fj.png",
    "assets/flags/fk.png",
    "assets/flags/fm.png",
    "assets/flags/fo.png",
    "assets/flags/fr.png",
    "assets/flags/ga.png",
    "assets/flags/gb-eng.png",
    "assets/flags/gb-nir.png",
    "assets/flags/gb-sct.png",
    "assets/flags/gb-wls.png",
    "assets/flags/gb.png",
    "assets/flags/gd.png",
    "assets/flags/ge.png",
    "assets/flags/gf.png",
    "assets/flags/gg.png",
    "assets/flags/gh.png",
    "assets/flags/gi.png",
    "assets/flags/gl.png",
    "assets/flags/gm.png",
    "assets/flags/gn.png",
    "assets/flags/gp.png",
    "assets/flags/gq.png",
    "assets/flags/gr.png",
    "assets/flags/gs.png",
    "assets/flags/gt.png",
    "assets/flags/gu.png",
    "assets/flags/gw.png",
    "assets/flags/gy.png",
    "assets/flags/hk.png",
    "assets/flags/hm.png",
    "assets/flags/hn.png",
    "assets/flags/hr.png",
    "assets/flags/ht.png",
    "assets/flags/hu.png",
    "assets/flags/id.png",
    "assets/flags/ie.png",
    "assets/flags/il.png",
    "assets/flags/im.png",
    "assets/flags/in.png",
    "assets/flags/io.png",
    "assets/flags/iq.png",
    "assets/flags/ir.png",
    "assets/flags/is.png",
    "assets/flags/it.png",
    "assets/flags/je.png",
    "assets/flags/jm.png",
    "assets/flags/jo.png",
    "assets/flags/jp.png",
    "assets/flags/ke.png",
    "assets/flags/kg.png",
    "assets/flags/kh.png",
    "assets/flags/ki.png",
    "assets/flags/km.png",
    "assets/flags/kn.png",
    "assets/flags/kp.png",
    "assets/flags/kr.png",
    "assets/flags/kw.png",
    "assets/flags/ky.png",
    "assets/flags/kz.png",
    "assets/flags/la.png",
    "assets/flags/lb.png",
    "assets/flags/lc.png",
    "assets/flags/li.png",
    "assets/flags/lk.png",
    "assets/flags/lr.png",
    "assets/flags/ls.png",
    "assets/flags/lt.png",
    "assets/flags/lu.png",
    "assets/flags/lv.png",
    "assets/flags/ly.png",
    "assets/flags/ma.png",
    "assets/flags/mc.png",
    "assets/flags/md.png",
    "assets/flags/me.png",
    "assets/flags/mg.png",
    "assets/flags/mh.png",
    "assets/flags/mk.png",
    "assets/flags/ml.png",
    "assets/flags/mm.png",
    "assets/flags/mn.png",
    "assets/flags/mo.png",
    "assets/flags/mp.png",
    "assets/flags/mq.png",
    "assets/flags/mr.png",
    "assets/flags/ms.png",
    "assets/flags/mt.png",
    "assets/flags/mu.png",
    "assets/flags/mv.png",
    "assets/flags/mw.png",
    "assets/flags/mx.png",
    "assets/flags/my.png",
    "assets/flags/mz.png",
    "assets/flags/na.png",
    "assets/flags/nc.png",
    "assets/flags/ne.png",
    "assets/flags/nf.png",
    "assets/flags/ng.png",
    "assets/flags/ni.png",
    "assets/flags/nl.png",
    "assets/flags/no.png",
    "assets/flags/np.png",
    "assets/flags/nr.png",
    "assets/flags/nu.png",
    "assets/flags/nz.png",
    "assets/flags/om.png",
    "assets/flags/pa.png",
    "assets/flags/pe.png",
    "assets/flags/pf.png",
    "assets/flags/pg.png",
    "assets/flags/ph.png",
    "assets/flags/pk.png",
    "assets/flags/pl.png",
    "assets/flags/pm.png",
    "assets/flags/pn.png",
    "assets/flags/pr.png",
    "assets/flags/ps.png",
    "assets/flags/pt.png",
    "assets/flags/pw.png",
    "assets/flags/py.png",
    "assets/flags/qa.png",
    "assets/flags/re.png",
    "assets/flags/ro.png",
    "assets/flags/rs.png",
    "assets/flags/ru.png",
    "assets/flags/rw.png",
    "assets/flags/sa.png",
    "assets/flags/sb.png",
    "assets/flags/sc.png",
    "assets/flags/sd.png",
    "assets/flags/se.png",
    "assets/flags/sg.png",
    "assets/flags/sh.png",
    "assets/flags/si.png",
    "assets/flags/sk.png",
    "assets/flags/sl.png",
    "assets/flags/sm.png",
    "assets/flags/sn.png",
    "assets/flags/so.png",
    "assets/flags/sr.png",
    "assets/flags/ss.png",
    "assets/flags/st.png",
    "assets/flags/sv.png",
    "assets/flags/sx.png",
    "assets/flags/sy.png",
    "assets/flags/sz.png",
    "assets/flags/tc.png",
    "assets/flags/td.png",
    "assets/flags/tf.png",
    "assets/flags/tg.png",
    "assets/flags/th.png",
    "assets/flags/tj.png",
    "assets/flags/tk.png",
    "assets/flags/tl.png",
    "assets/flags/tm.png",
    "assets/flags/tn.png",
    "assets/flags/to.png",
    "assets/flags/tr.png",
    "assets/flags/tt.png",
    "assets/flags/tv.png",
    "assets/flags/tw.png",
    "assets/flags/tz.png",
    "assets/flags/ua.png",
    "assets/flags/ug.png",
    "assets/flags/us.png",
    "assets/flags/uy.png",
    "assets/flags/uz.png",
    "assets/flags/va.png",
    "assets/flags/vc.png",
    "assets/flags/ve.png",
    "assets/flags/vg.png",
    "assets/flags/vi.png",
    "assets/flags/vn.png",
    "assets/flags/vu.png",
    "assets/flags/wf.png",
    "assets/flags/ws.png",
    "assets/flags/xk.png",
    "assets/flags/ye.png",
    "assets/flags/yt.png",
    "assets/flags/za.png",
    "assets/flags/zm.png",
    "assets/flags/zw.png",
  ];

  allFlagNames = [
    "Andorra",
    "Birleşik Arap Emirlikleri",
    "Afganistan",
    "Antigua ve Barbuda",
    "Anguilla",
    "Arnavutluk",
    "Ermenistan",
    "Angola",
    "Antarktika",
    "Arjantin",
    "Amerikan Samoa",
    "Avusturya",
    "Avustralya",
    "Aruba",
    "Åland Adaları",
    "Azerbaycan",
    "Bosna Hersek",
    "Barbados",
    "Bangladeş",
    "Belçika",
    "Burkine Faso",
    "Bulgaristan",
    "Bahreyn",
    "Burundi",
    "Benin",
    "Saint Barthélemy",
    "Bermuda",
    "Brunei",
    "Bolivya",
    "Brezilya",
    "Bahamalar",
    "Bhutan",
    "Bouvet Adası",
    "Botsvana",
    "Beyaz Rusya",
    "Belize",
    "Kanada",
    "Cocos Adaları",
    "Kongo Demokratik Cumhuriyeti",
    "Orta Afrika Cumhuriyeti",
    "Kongo",
    "İsviçre",
    "Fildişi Sahili",
    "Cook Adası",
    "Şili",
    "Kamerun",
    "Çin Halk Cumhuriyeti",
    "Kolombiya",
    "Kosta Rika",
    "Küba",
    "Cape Verde",
    "Curaçao",
    "Christmas Adaları",
    "Kıbrıs Rum Kesimi",
    "Çekya",
    "Almanya",
    "Cibuti",
    "Danimarka",
    "Dominika",
    "Dominik Cumhuriyeti",
    "Cezayir",
    "Ekvator",
    "Estonya",
    "Mısır",
    "Sahra Demokratik Arap Cumhuriyeti",
    "Eritre",
    "İspanya",
    "Etiyopya",
    "Finlandiya",
    "Fiji",
    "Falkland Adaları",
    "Mikronezya",
    "Faroe Adaları",
    "Fransa",
    "Gabon",
    "İngiltere",
    "Kuzey İrlanda",
    "İskoçya",
    "Galler",
    "Büyük Britanya ve Kuzey İrlanda Birleşik Krallığı",
    "Grenada",
    "Gürcistan",
    "Fransız Guyanası",
    "Guernsey",
    "Gana",
    "Cebelitarık",
    "Grönland",
    "Gambiya",
    "Gine",
    "Guadeloupe",
    "Ekvator Ginesi",
    "Yunanistan",
    "Güney Georgia ve Güney Sandviç Adaları",
    "Guatemala",
    "Guam",
    "Gine-Bissau",
    "Guyana",
    "Hong-Kong",
    "Heard Adaları ve Mc Donald Adası",
    "Honduras",
    "Hırvatistan",
    "Haiti",
    "Macaristan",
    "Endonezya",
    "İrlanda",
    "İsrail",
    "Man Adası",
    "Hindistan",
    "İngiliz Hint Okyanusu Toprakları",
    "Irak",
    "İran",
    "İzlanda",
    "İtalya",
    "Jersey",
    "Jamaika",
    "Ürdün",
    "Japonya",
    "Kenya",
    "Kırgızistan",
    "Kamboçya",
    "Kiribati",
    "Comoros",
    "St. Kitts ve Nevis",
    "Kuzey Kore",
    "Güney Kore",
    "Kuveyt",
    "Cayman Adaları",
    "Kazakistan",
    "Laos Demokratik Halk Cumhuriyeti",
    "Lübnan",
    "St. Lucia",
    "Lihtenştayn",
    "Sri Lanka",
    "Liberya",
    "Lesoto",
    "Litvanya",
    "Lüksemburg",
    "Letonya",
    "Libya",
    "Fas",
    "Monako",
    "Moldovya",
    "Karadağ",
    "Madagaskar",
    "Marshal Adaları",
    "Makedonya",
    "Mali",
    "Myanmar(Burma)(Birmanya)",
    "Moğolistan",
    "Makao",
    "Kuzey Mariana Adaları",
    "Martinik",
    "Moritanya",
    "Montserrat",
    "Malta",
    "Mauritius",
    "Maldivler",
    "Malavi",
    "Meksika",
    "Malezya",
    "Mozambik",
    "Namibya",
    "Yeni Kaledonya",
    "Nijer",
    "Norfolk Adası",
    "Nijerya",
    "Nikaragua",
    "Hollanda",
    "Norveç",
    "Nepal",
    "Nauru",
    "Niue Adası",
    "Yeni Zelanda",
    "Umman",
    "Panama",
    "Peru",
    "Fransız Polinezyası",
    "Papua Yeni Gine",
    "Filipinler",
    "Pakistan",
    "Polonya",
    "St. Pierre & Miquelon",
    "Pitcairn",
    "Porto Riko",
    "Filistin",
    "Portekiz",
    "Palau",
    "Paraguay",
    "Katar",
    "Réunion",
    "Romanya",
    "Sırbistan",
    "Rusya",
    "Ruanda",
    "Suudi Arabistan",
    "Solomon Adaları",
    "Seyşeller",
    "Sudan",
    "İsveç",
    "Singapur",
    "St. Helena",
    "Slovenya",
    "Slovakya",
    "Sierra Leone",
    "San Marino",
    "Senegal",
    "Somali",
    "Surinam",
    "Güney Sudan",
    "Sao Tome ve Principe",
    "El Salvador",
    "Sint Maarten (Hollanda Tarafı)",
    "Suriye Arap Cumhuriyeti",
    "Esvatini Krallığı",
    "Turks ve Caicaos Adaları",
    "Çad",
    "Fransa Güney Bölgeleri",
    "Togo",
    "Tayland",
    "Tacikistan",
    "Tokelau",
    "Batı Timor",
    "Türkmenistan",
    "Tunus",
    "Tonga",
    "Türkiye",
    "Trinidad ve Tobago",
    "Tuvalu",
    "Tayvan",
    "Tanzanya",
    "Ukrayna",
    "Uganda",
    "Amerika Birleşik Devletleri",
    "Uruguay",
    "Özbekistan",
    "Vatikan",
    "Saint Vincent ve Grenadinler",
    "Venezuella",
    "İngiliz Virgin Adaları",
    "Amerika Birleşik Devletleri Virjin Adaları",
    "Vietnam",
    "Vanuatu",
    "Wallis ve Futuna",
    "Samoa",
    "Kosova",
    "Yemen",
    "Mayotte",
    "Güney Afrika Cumhuriyeti",
    "Zambiya",
    "Zimbabve"
  ];

  int index = random.nextInt(250);
  flagNames.add(allFlagNames[index]);
  questionFlag = allFlags[index];
  randomNumbers.add(index);

  for (var i = 0; i < 3; i++) {
    do {
      index = random.nextInt(250);
    } while (_controlRandom(randomNumbers, index));
    randomNumbers.add(index);
    flagNames.add(allFlagNames[index]);
  }

  return Questions(flagNames: flagNames, questionFlag: questionFlag);
}

_controlRandom(List<int> randomNumbers, int index) {
  for (var i = 0; i < randomNumbers.length; i++) {
    if (randomNumbers[i] == index) {
      return true;
    }
  }
  return false;
}
