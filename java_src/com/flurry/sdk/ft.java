package com.flurry.sdk;

import android.text.TextUtils;
import android.util.Xml;
import com.flurry.sdk.fr;
import com.flurry.sdk.fz;
import com.flurry.sdk.ga;
import com.flurry.sdk.gb;
import com.flurry.sdk.gc;
import com.flurry.sdk.gd;
import com.flurry.sdk.ge;
import com.flurry.sdk.gf;
import com.openx.model.vast.Ad;
import com.openx.model.vast.Creatives;
import com.openx.model.vast.Impressions;
import com.openx.model.vast.MediaFiles;
import com.openx.model.vast.TrackingEvents;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes2.dex */
public final class ft {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2694a = null;
    private static a b = a.PARSING_UNKNOWN;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public enum a {
        PARSING_UNKNOWN,
        PARSING_STARTED,
        PARSING_COMPLETE,
        PARSING_ERROR
    }

    public static fr a(String str) {
        StringReader stringReader;
        fr frVar;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        a(a.PARSING_UNKNOWN);
        try {
            stringReader = new StringReader(str);
            try {
                try {
                    XmlPullParser newPullParser = Xml.newPullParser();
                    newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
                    newPullParser.setInput(stringReader);
                    newPullParser.nextTag();
                    frVar = a(newPullParser, new fr.a(), new ArrayList());
                    if (frVar != null && frVar.c && frVar.a() == null) {
                        frVar = new fr.a().a().f2692a;
                    }
                    ly.a(stringReader);
                } catch (Exception e) {
                    e = e;
                    if (b.equals(a.PARSING_ERROR)) {
                        km.a(3, "VASTXmlParser", "Error parsing VAST XML: " + str, e);
                        frVar = new fr.a().a().f2692a;
                    } else {
                        km.a(3, "VASTXmlParser", "Not a VAST Ad");
                        frVar = null;
                    }
                    ly.a(stringReader);
                    return frVar;
                }
            } catch (Throwable th) {
                th = th;
                ly.a(stringReader);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            stringReader = null;
        } catch (Throwable th2) {
            th = th2;
            stringReader = null;
        }
        return frVar;
    }

    private static fr a(XmlPullParser xmlPullParser, fr.a aVar, List<fz> list) throws XmlPullParserException, IOException, IllegalArgumentException {
        boolean z;
        xmlPullParser.require(2, f2694a, "VAST");
        a(a.PARSING_STARTED);
        int c = c(xmlPullParser);
        if (c > 0 && c <= 3) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            aVar.a(c);
            while (xmlPullParser.next() != 3) {
                if (xmlPullParser.getEventType() == 2) {
                    if (xmlPullParser.getName().equals(Ad.VAST_AD)) {
                        list.add(a(xmlPullParser, new fz.a()));
                    } else {
                        b(xmlPullParser);
                    }
                }
            }
            aVar.a(list);
            aVar.a(a(list));
            if (!a(list)) {
                a(a.PARSING_UNKNOWN);
            } else {
                a(a.PARSING_COMPLETE);
            }
            return aVar.f2692a;
        }
        a(a.PARSING_ERROR);
        throw new IllegalArgumentException();
    }

    private static fz a(XmlPullParser xmlPullParser, fz.a aVar) throws IOException, XmlPullParserException {
        xmlPullParser.require(2, f2694a, Ad.VAST_AD);
        aVar.a(xmlPullParser.getAttributeValue(f2694a, "id"));
        try {
            String attributeValue = xmlPullParser.getAttributeValue(f2694a, "sequence");
            if (!TextUtils.isEmpty(attributeValue)) {
                aVar.a(Integer.parseInt(attributeValue));
            }
        } catch (NumberFormatException e) {
            km.a(3, "VASTXmlParser", "Could not identify Ad Sequence");
        }
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                char c = 65535;
                switch (name.hashCode()) {
                    case -2101083431:
                        if (name.equals("InLine")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1034806157:
                        if (name.equals("Wrapper")) {
                            c = 1;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        aVar.a(a(xmlPullParser, new gb.a(), new ga.a(), new ArrayList(), new ArrayList()));
                        continue;
                    case 1:
                        aVar.a(a(xmlPullParser, new gb.a(), new ga.a(), new ArrayList(), new ArrayList(), new ArrayList()));
                        continue;
                    default:
                        b(xmlPullParser);
                        continue;
                }
            }
        }
        return aVar.f2702a;
    }

    private static gb a(XmlPullParser xmlPullParser, gb.a aVar, ga.a aVar2, List<String> list, List<String> list2) throws IOException, XmlPullParserException {
        aVar.a(fu.InLine);
        xmlPullParser.require(2, f2694a, "InLine");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                char c = 65535;
                switch (name.hashCode()) {
                    case -1692490108:
                        if (name.equals(Creatives.VAST_CREATIVES)) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1633884078:
                        if (name.equals("AdSystem")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 67232232:
                        if (name.equals("Error")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 501930965:
                        if (name.equals("AdTitle")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 2114088489:
                        if (name.equals(Impressions.VAST_IMPRESSION)) {
                            c = 3;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        aVar.d(a(xmlPullParser, new ArrayList()));
                        continue;
                    case 1:
                        aVar2.a(xmlPullParser.getAttributeValue(f2694a, "version"));
                        aVar2.b(a(xmlPullParser));
                        aVar.a(aVar2.f2707a);
                        continue;
                    case 2:
                        aVar.a(a(xmlPullParser));
                        continue;
                    case 3:
                        a(list, a(xmlPullParser));
                        continue;
                    case 4:
                        a(list2, a(xmlPullParser));
                        continue;
                    default:
                        b(xmlPullParser);
                        continue;
                }
            }
        }
        aVar.b(list);
        aVar.c(list2);
        return aVar.f2709a;
    }

    private static gb a(XmlPullParser xmlPullParser, gb.a aVar, ga.a aVar2, List<String> list, List<String> list2, List<String> list3) throws IOException, XmlPullParserException {
        aVar.a(fu.Wrapper);
        xmlPullParser.require(2, f2694a, "Wrapper");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                char c = 65535;
                switch (name.hashCode()) {
                    case -1692490108:
                        if (name.equals(Creatives.VAST_CREATIVES)) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1633884078:
                        if (name.equals("AdSystem")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -587420703:
                        if (name.equals("VASTAdTagURI")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 67232232:
                        if (name.equals("Error")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 2114088489:
                        if (name.equals(Impressions.VAST_IMPRESSION)) {
                            c = 3;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        aVar.d(a(xmlPullParser, new ArrayList()));
                        continue;
                    case 1:
                        aVar2.a(xmlPullParser.getAttributeValue(f2694a, "version"));
                        aVar2.b(a(xmlPullParser));
                        aVar.a(aVar2.f2707a);
                        continue;
                    case 2:
                        a(list, a(xmlPullParser));
                        continue;
                    case 3:
                        a(list2, a(xmlPullParser));
                        continue;
                    case 4:
                        a(list3, a(xmlPullParser));
                        continue;
                    default:
                        b(xmlPullParser);
                        continue;
                }
            }
        }
        aVar.a(list);
        aVar.b(list2);
        aVar.c(list3);
        return aVar.f2709a;
    }

    private static List<gc> a(XmlPullParser xmlPullParser, List<gc> list) throws IOException, XmlPullParserException {
        xmlPullParser.require(2, f2694a, Creatives.VAST_CREATIVES);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Creative")) {
                    list.add(a(xmlPullParser, new gc.a()));
                } else {
                    b(xmlPullParser);
                }
            }
        }
        return list;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static gc a(XmlPullParser xmlPullParser, gc.a aVar) throws IOException, XmlPullParserException {
        boolean z;
        boolean z2;
        xmlPullParser.require(2, f2694a, "Creative");
        aVar.a(xmlPullParser.getAttributeValue(f2694a, "id"));
        String attributeValue = xmlPullParser.getAttributeValue(f2694a, "sequence");
        if (attributeValue != null) {
            try {
                aVar.a(Math.round(Float.parseFloat(attributeValue)));
            } catch (NumberFormatException e) {
                km.a(3, "VASTXmlParser", "Could not identify Creative sequence");
            }
        }
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Linear")) {
                    aVar.a(fv.Linear);
                    gd.a aVar2 = new gd.a();
                    xmlPullParser.require(2, f2694a, "Linear");
                    String attributeValue2 = xmlPullParser.getAttributeValue(f2694a, "skipoffset");
                    if (attributeValue2 != null) {
                        aVar2.b(fs.a(attributeValue2));
                    }
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            String name = xmlPullParser.getName();
                            switch (name.hashCode()) {
                                case -2049897434:
                                    if (name.equals("VideoClicks")) {
                                        z = true;
                                        break;
                                    }
                                    z = true;
                                    break;
                                case -1927368268:
                                    if (name.equals("Duration")) {
                                        z = false;
                                        break;
                                    }
                                    z = true;
                                    break;
                                case -385055469:
                                    if (name.equals(MediaFiles.VAST_MEDIAFILES)) {
                                        z = true;
                                        break;
                                    }
                                    z = true;
                                    break;
                                case 611554000:
                                    if (name.equals("TrackingEvents")) {
                                        z = true;
                                        break;
                                    }
                                    z = true;
                                    break;
                                default:
                                    z = true;
                                    break;
                            }
                            switch (z) {
                                case false:
                                    aVar2.a(fs.a(a(xmlPullParser)));
                                    break;
                                case true:
                                    kd<fx, String> kdVar = new kd<>();
                                    xmlPullParser.require(2, f2694a, "TrackingEvents");
                                    while (xmlPullParser.next() != 3) {
                                        if (xmlPullParser.getEventType() == 2) {
                                            if (xmlPullParser.getName().equals(TrackingEvents.VAST_TRACKING)) {
                                                gf.a aVar3 = new gf.a();
                                                xmlPullParser.require(2, f2694a, TrackingEvents.VAST_TRACKING);
                                                aVar3.f2717a.f2716a = fx.a(xmlPullParser.getAttributeValue(f2694a, "event"));
                                                aVar3.f2717a.b = a(xmlPullParser);
                                                gf gfVar = aVar3.f2717a;
                                                if (!TextUtils.isEmpty(gfVar.b)) {
                                                    kdVar.a((kd<fx, String>) gfVar.f2716a, (fx) gfVar.b);
                                                }
                                            } else {
                                                b(xmlPullParser);
                                            }
                                        }
                                    }
                                    aVar2.a(kdVar);
                                    break;
                                case true:
                                    kd<fy, String> kdVar2 = new kd<>();
                                    xmlPullParser.require(2, f2694a, "VideoClicks");
                                    while (xmlPullParser.next() != 3) {
                                        if (xmlPullParser.getEventType() == 2) {
                                            String name2 = xmlPullParser.getName();
                                            switch (name2.hashCode()) {
                                                case -617879491:
                                                    if (name2.equals("ClickThrough")) {
                                                        z2 = false;
                                                        break;
                                                    }
                                                    z2 = true;
                                                    break;
                                                case -135761801:
                                                    if (name2.equals("CustomClick")) {
                                                        z2 = true;
                                                        break;
                                                    }
                                                    z2 = true;
                                                    break;
                                                case 2107600959:
                                                    if (name2.equals("ClickTracking")) {
                                                        z2 = true;
                                                        break;
                                                    }
                                                    z2 = true;
                                                    break;
                                                default:
                                                    z2 = true;
                                                    break;
                                            }
                                            switch (z2) {
                                                case false:
                                                    kdVar2.a((kd<fy, String>) fy.ClickThrough, (fy) a(xmlPullParser));
                                                    break;
                                                case true:
                                                    kdVar2.a((kd<fy, String>) fy.ClickTracking, (fy) a(xmlPullParser));
                                                    break;
                                                case true:
                                                    kdVar2.a((kd<fy, String>) fy.CustomClick, (fy) a(xmlPullParser));
                                                    break;
                                                default:
                                                    b(xmlPullParser);
                                                    break;
                                            }
                                        }
                                    }
                                    aVar2.b(kdVar2);
                                    break;
                                case true:
                                    ge a2 = fs.a(b(xmlPullParser, new ArrayList()));
                                    if (a2 == null) {
                                        break;
                                    } else {
                                        aVar2.a(a2);
                                        break;
                                    }
                                default:
                                    b(xmlPullParser);
                                    break;
                            }
                        }
                    }
                    aVar.a(aVar2.f2713a);
                } else {
                    b(xmlPullParser);
                }
            }
        }
        return aVar.f2711a;
    }

    private static List<ge> b(XmlPullParser xmlPullParser, List<ge> list) throws IOException, XmlPullParserException {
        xmlPullParser.require(2, f2694a, MediaFiles.VAST_MEDIAFILES);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(MediaFiles.VAST_MEDIAFILE)) {
                    list.add(a(xmlPullParser, new ge.a()));
                } else {
                    b(xmlPullParser);
                }
            }
        }
        return list;
    }

    private static ge a(XmlPullParser xmlPullParser, ge.a aVar) throws IOException, XmlPullParserException {
        xmlPullParser.require(2, f2694a, MediaFiles.VAST_MEDIAFILE);
        aVar.f2715a.f2714a = xmlPullParser.getAttributeValue(f2694a, "id");
        aVar.f2715a.j = xmlPullParser.getAttributeValue(f2694a, "type");
        aVar.f2715a.b = xmlPullParser.getAttributeValue(f2694a, "apiFramework");
        aVar.f2715a.e = fw.a(xmlPullParser.getAttributeValue(f2694a, "delivery"));
        try {
            aVar.f2715a.f = Integer.parseInt(xmlPullParser.getAttributeValue(f2694a, "height"));
        } catch (NumberFormatException e) {
            km.a(3, "VASTXmlParser", "Could not identify MediaFile height");
        }
        try {
            aVar.f2715a.g = Integer.parseInt(xmlPullParser.getAttributeValue(f2694a, "width"));
        } catch (NumberFormatException e2) {
            km.a(3, "VASTXmlParser", "Could not identify MediaFile width");
        }
        try {
            aVar.f2715a.d = Integer.parseInt(xmlPullParser.getAttributeValue(f2694a, "bitrate"));
        } catch (NumberFormatException e3) {
            km.a(3, "VASTXmlParser", "Could not identify MediaFile bitRate");
        }
        aVar.f2715a.i = Boolean.parseBoolean(xmlPullParser.getAttributeValue(f2694a, "scalable"));
        aVar.f2715a.h = Boolean.parseBoolean(xmlPullParser.getAttributeValue(f2694a, "maintainAspectRatio"));
        aVar.f2715a.c = a(xmlPullParser);
        return aVar.f2715a;
    }

    private static String a(XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        if (xmlPullParser.next() != 4) {
            return null;
        }
        String trim = xmlPullParser.getText().trim();
        xmlPullParser.nextTag();
        return trim;
    }

    private static void a(List<String> list, String str) {
        if (list != null && !TextUtils.isEmpty(str)) {
            list.add(str);
        }
    }

    private static void b(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (xmlPullParser.getEventType() != 2) {
            throw new IllegalStateException();
        }
        int i = 1;
        while (i != 0) {
            switch (xmlPullParser.next()) {
                case 2:
                    i++;
                    break;
                case 3:
                    i--;
                    break;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean a(List<fz> list) {
        if (list == null || list.isEmpty()) {
            return false;
        }
        for (fz fzVar : list) {
            gb gbVar = fzVar.c;
            if (gbVar == null || !fu.InLine.equals(gbVar.f2708a)) {
                return false;
            }
            while (r2.hasNext()) {
            }
        }
        return true;
    }

    private static int c(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(f2694a, "version");
        km.a(3, "VASTXmlParser", "Version" + attributeValue);
        if (TextUtils.isEmpty(attributeValue)) {
            return Integer.MIN_VALUE;
        }
        String[] split = attributeValue.split("\\.");
        if (split.length <= 0 || TextUtils.isEmpty(split[0])) {
            return Integer.MIN_VALUE;
        }
        try {
            return Integer.parseInt(split[0]);
        } catch (NumberFormatException e) {
            km.a(3, "VASTXmlParser", "Could not detect VAST version " + split[0]);
            return Integer.MIN_VALUE;
        }
    }

    private static void a(a aVar) {
        km.a(3, "VASTXmlParser", "Setting VAST parse state as: " + aVar.name());
        b = aVar;
    }
}
