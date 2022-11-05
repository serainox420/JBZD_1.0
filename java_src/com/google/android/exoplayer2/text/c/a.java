package com.google.android.exoplayer2.text.c;

import android.text.Layout;
import android.util.Log;
import android.util.Pair;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.flurry.android.AdCreative;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.v;
import com.google.android.exoplayer2.util.w;
import com.google.firebase.a.a;
import com.millennialmedia.NativeAd;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* compiled from: TtmlDecoder.java */
/* loaded from: classes2.dex */
public final class a extends com.google.android.exoplayer2.text.c {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3436a = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    private static final Pattern b = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    private static final Pattern c = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    private static final Pattern d = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");
    private static final C0147a e = new C0147a(30.0f, 1, 1);
    private final XmlPullParserFactory f;

    public a() {
        super("TtmlDecoder");
        try {
            this.f = XmlPullParserFactory.newInstance();
            this.f.setNamespaceAware(true);
        } catch (XmlPullParserException e2) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.text.c
    /* renamed from: b */
    public f a(byte[] bArr, int i) throws SubtitleDecoderException {
        C0147a c0147a;
        int i2;
        f fVar;
        f fVar2 = null;
        int i3 = 0;
        try {
            XmlPullParser newPullParser = this.f.newPullParser();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            hashMap2.put("", new c());
            newPullParser.setInput(new ByteArrayInputStream(bArr, 0, i), null);
            LinkedList linkedList = new LinkedList();
            int eventType = newPullParser.getEventType();
            C0147a c0147a2 = e;
            for (int i4 = eventType; i4 != 1; i4 = newPullParser.getEventType()) {
                b bVar = (b) linkedList.peekLast();
                if (i3 == 0) {
                    String name = newPullParser.getName();
                    if (i4 == 2) {
                        if ("tt".equals(name)) {
                            c0147a2 = a(newPullParser);
                        }
                        if (!b(name)) {
                            Log.i("TtmlDecoder", "Ignoring unsupported tag: " + newPullParser.getName());
                            int i5 = i3 + 1;
                            fVar = fVar2;
                            c0147a = c0147a2;
                            i2 = i5;
                        } else if ("head".equals(name)) {
                            a(newPullParser, hashMap, hashMap2);
                            c0147a = c0147a2;
                            i2 = i3;
                            fVar = fVar2;
                        } else {
                            try {
                                b a2 = a(newPullParser, bVar, hashMap2, c0147a2);
                                linkedList.addLast(a2);
                                if (bVar != null) {
                                    bVar.a(a2);
                                }
                                c0147a = c0147a2;
                                i2 = i3;
                                fVar = fVar2;
                            } catch (SubtitleDecoderException e2) {
                                Log.w("TtmlDecoder", "Suppressing parser error", e2);
                                int i6 = i3 + 1;
                                fVar = fVar2;
                                c0147a = c0147a2;
                                i2 = i6;
                            }
                        }
                    } else if (i4 == 4) {
                        bVar.a(b.a(newPullParser.getText()));
                        c0147a = c0147a2;
                        i2 = i3;
                        fVar = fVar2;
                    } else if (i4 == 3) {
                        f fVar3 = newPullParser.getName().equals("tt") ? new f((b) linkedList.getLast(), hashMap, hashMap2) : fVar2;
                        linkedList.removeLast();
                        C0147a c0147a3 = c0147a2;
                        i2 = i3;
                        fVar = fVar3;
                        c0147a = c0147a3;
                    } else {
                        c0147a = c0147a2;
                        i2 = i3;
                        fVar = fVar2;
                    }
                    fVar2 = fVar;
                    i3 = i2;
                    c0147a2 = c0147a;
                } else if (i4 == 2) {
                    i3++;
                } else if (i4 == 3) {
                    i3--;
                }
                newPullParser.next();
            }
            return fVar2;
        } catch (IOException e3) {
            throw new IllegalStateException("Unexpected error when reading input.", e3);
        } catch (XmlPullParserException e4) {
            throw new SubtitleDecoderException("Unable to decode source", e4);
        }
    }

    private C0147a a(XmlPullParser xmlPullParser) throws SubtitleDecoderException {
        int i = 30;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        if (attributeValue != null) {
            i = Integer.parseInt(attributeValue);
        }
        float f = 1.0f;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            String[] split = attributeValue2.split(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
            if (split.length != 2) {
                throw new SubtitleDecoderException("frameRateMultiplier doesn't have 2 parts");
            }
            f = Integer.parseInt(split[0]) / Integer.parseInt(split[1]);
        }
        int i2 = e.b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i2 = Integer.parseInt(attributeValue3);
        }
        int i3 = e.c;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i3 = Integer.parseInt(attributeValue4);
        }
        return new C0147a(i * f, i2, i3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Map<String, e> a(XmlPullParser xmlPullParser, Map<String, e> map, Map<String, c> map2) throws IOException, XmlPullParserException {
        Pair<String, c> b2;
        do {
            xmlPullParser.next();
            if (w.b(xmlPullParser, "style")) {
                String c2 = w.c(xmlPullParser, "style");
                e a2 = a(xmlPullParser, new e());
                if (c2 != null) {
                    for (String str : a(c2)) {
                        a2.a(map.get(str));
                    }
                }
                if (a2.i() != null) {
                    map.put(a2.i(), a2);
                }
            } else if (w.b(xmlPullParser, "region") && (b2 = b(xmlPullParser)) != null) {
                map2.put(b2.first, b2.second);
            }
        } while (!w.a(xmlPullParser, "head"));
        return map;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Pair<String, c> b(XmlPullParser xmlPullParser) {
        float f;
        float f2;
        float f3;
        String c2 = w.c(xmlPullParser, "id");
        String c3 = w.c(xmlPullParser, a.b.ORIGIN);
        String c4 = w.c(xmlPullParser, "extent");
        if (c3 == null || c2 == null) {
            return null;
        }
        Matcher matcher = d.matcher(c3);
        if (matcher.matches()) {
            try {
                f2 = Float.parseFloat(matcher.group(1)) / 100.0f;
                f = Float.parseFloat(matcher.group(2)) / 100.0f;
            } catch (NumberFormatException e2) {
                Log.w("TtmlDecoder", "Ignoring region with malformed origin: '" + c3 + "'", e2);
                f = Float.MIN_VALUE;
                f2 = Float.MIN_VALUE;
            }
        } else {
            f = Float.MIN_VALUE;
            f2 = Float.MIN_VALUE;
        }
        if (c4 != null) {
            Matcher matcher2 = d.matcher(c4);
            if (matcher2.matches()) {
                try {
                    f3 = Float.parseFloat(matcher2.group(1)) / 100.0f;
                } catch (NumberFormatException e3) {
                    Log.w("TtmlDecoder", "Ignoring malformed region extent: '" + c4 + "'", e3);
                }
                if (f2 != Float.MIN_VALUE) {
                    return null;
                }
                return new Pair<>(c2, new c(f2, f, 0, f3));
            }
        }
        f3 = Float.MIN_VALUE;
        if (f2 != Float.MIN_VALUE) {
        }
    }

    private String[] a(String str) {
        return str.split("\\s+");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private e a(XmlPullParser xmlPullParser, e eVar) {
        char c2;
        boolean z;
        char c3;
        int attributeCount = xmlPullParser.getAttributeCount();
        e eVar2 = eVar;
        for (int i = 0; i < attributeCount; i++) {
            String attributeValue = xmlPullParser.getAttributeValue(i);
            String attributeName = xmlPullParser.getAttributeName(i);
            switch (attributeName.hashCode()) {
                case -1550943582:
                    if (attributeName.equals("fontStyle")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1224696685:
                    if (attributeName.equals("fontFamily")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1065511464:
                    if (attributeName.equals("textAlign")) {
                        c2 = 7;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -879295043:
                    if (attributeName.equals("textDecoration")) {
                        c2 = '\b';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -734428249:
                    if (attributeName.equals("fontWeight")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3355:
                    if (attributeName.equals("id")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 94842723:
                    if (attributeName.equals("color")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 365601008:
                    if (attributeName.equals("fontSize")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1287124693:
                    if (attributeName.equals("backgroundColor")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            switch (c2) {
                case 0:
                    if ("style".equals(xmlPullParser.getName())) {
                        eVar2 = a(eVar2).b(attributeValue);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    eVar2 = a(eVar2);
                    try {
                        eVar2.b(com.google.android.exoplayer2.util.d.a(attributeValue));
                        break;
                    } catch (IllegalArgumentException e2) {
                        Log.w("TtmlDecoder", "failed parsing background value: '" + attributeValue + "'");
                        break;
                    }
                case 2:
                    eVar2 = a(eVar2);
                    try {
                        eVar2.a(com.google.android.exoplayer2.util.d.a(attributeValue));
                        break;
                    } catch (IllegalArgumentException e3) {
                        Log.w("TtmlDecoder", "failed parsing color value: '" + attributeValue + "'");
                        break;
                    }
                case 3:
                    eVar2 = a(eVar2).a(attributeValue);
                    break;
                case 4:
                    try {
                        eVar2 = a(eVar2);
                        a(attributeValue, eVar2);
                        break;
                    } catch (SubtitleDecoderException e4) {
                        Log.w("TtmlDecoder", "failed parsing fontSize value: '" + attributeValue + "'");
                        break;
                    }
                case 5:
                    eVar2 = a(eVar2).c("bold".equalsIgnoreCase(attributeValue));
                    break;
                case 6:
                    eVar2 = a(eVar2).d("italic".equalsIgnoreCase(attributeValue));
                    break;
                case 7:
                    String d2 = v.d(attributeValue);
                    switch (d2.hashCode()) {
                        case -1364013995:
                            if (d2.equals("center")) {
                                c3 = 4;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 100571:
                            if (d2.equals("end")) {
                                c3 = 3;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 3317767:
                            if (d2.equals(AdCreative.kAlignmentLeft)) {
                                c3 = 0;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 108511772:
                            if (d2.equals(AdCreative.kAlignmentRight)) {
                                c3 = 2;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 109757538:
                            if (d2.equals(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START)) {
                                c3 = 1;
                                break;
                            }
                            c3 = 65535;
                            break;
                        default:
                            c3 = 65535;
                            break;
                    }
                    switch (c3) {
                        case 0:
                            eVar2 = a(eVar2).a(Layout.Alignment.ALIGN_NORMAL);
                            continue;
                        case 1:
                            eVar2 = a(eVar2).a(Layout.Alignment.ALIGN_NORMAL);
                            continue;
                        case 2:
                            eVar2 = a(eVar2).a(Layout.Alignment.ALIGN_OPPOSITE);
                            continue;
                        case 3:
                            eVar2 = a(eVar2).a(Layout.Alignment.ALIGN_OPPOSITE);
                            continue;
                        case 4:
                            eVar2 = a(eVar2).a(Layout.Alignment.ALIGN_CENTER);
                            continue;
                    }
                case '\b':
                    String d3 = v.d(attributeValue);
                    switch (d3.hashCode()) {
                        case -1461280213:
                            if (d3.equals("nounderline")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case -1026963764:
                            if (d3.equals("underline")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case 913457136:
                            if (d3.equals("nolinethrough")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case 1679736913:
                            if (d3.equals("linethrough")) {
                                z = false;
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
                            eVar2 = a(eVar2).a(true);
                            continue;
                        case true:
                            eVar2 = a(eVar2).a(false);
                            continue;
                        case true:
                            eVar2 = a(eVar2).b(true);
                            continue;
                        case true:
                            eVar2 = a(eVar2).b(false);
                            continue;
                    }
            }
        }
        return eVar2;
    }

    private e a(e eVar) {
        return eVar == null ? new e() : eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private b a(XmlPullParser xmlPullParser, b bVar, Map<String, c> map, C0147a c0147a) throws SubtitleDecoderException {
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6 = -9223372036854775807L;
        long j7 = -9223372036854775807L;
        long j8 = -9223372036854775807L;
        String str = "";
        String[] strArr = null;
        int attributeCount = xmlPullParser.getAttributeCount();
        e a2 = a(xmlPullParser, (e) null);
        int i = 0;
        while (i < attributeCount) {
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            char c2 = 65535;
            switch (attributeName.hashCode()) {
                case -934795532:
                    if (attributeName.equals("region")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 99841:
                    if (attributeName.equals("dur")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 100571:
                    if (attributeName.equals("end")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 93616297:
                    if (attributeName.equals("begin")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 109780401:
                    if (attributeName.equals("style")) {
                        c2 = 3;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    long a3 = a(attributeValue, c0147a);
                    j5 = j6;
                    j3 = j8;
                    j4 = a3;
                    continue;
                    i++;
                    j6 = j5;
                    j7 = j4;
                    j8 = j3;
                case 1:
                    j3 = a(attributeValue, c0147a);
                    j4 = j7;
                    j5 = j6;
                    continue;
                    i++;
                    j6 = j5;
                    j7 = j4;
                    j8 = j3;
                case 2:
                    long j9 = j8;
                    j4 = j7;
                    j5 = a(attributeValue, c0147a);
                    j3 = j9;
                    continue;
                    i++;
                    j6 = j5;
                    j7 = j4;
                    j8 = j3;
                case 3:
                    String[] a4 = a(attributeValue);
                    if (a4.length > 0) {
                        strArr = a4;
                        j3 = j8;
                        j4 = j7;
                        j5 = j6;
                        continue;
                        i++;
                        j6 = j5;
                        j7 = j4;
                        j8 = j3;
                    }
                    break;
                case 4:
                    if (map.containsKey(attributeValue)) {
                        str = attributeValue;
                        j3 = j8;
                        j4 = j7;
                        j5 = j6;
                        continue;
                        i++;
                        j6 = j5;
                        j7 = j4;
                        j8 = j3;
                    }
                    break;
            }
            j3 = j8;
            j4 = j7;
            j5 = j6;
            i++;
            j6 = j5;
            j7 = j4;
            j8 = j3;
        }
        if (bVar != null && bVar.d != -9223372036854775807L) {
            if (j7 != -9223372036854775807L) {
                j7 += bVar.d;
            }
            if (j8 != -9223372036854775807L) {
                long j10 = j8 + bVar.d;
                j = j7;
                j2 = j10;
                if (j2 == -9223372036854775807L) {
                    if (j6 != -9223372036854775807L) {
                        j2 = j + j6;
                    } else if (bVar != null && bVar.e != -9223372036854775807L) {
                        j2 = bVar.e;
                    }
                }
                return b.a(xmlPullParser.getName(), j, j2, a2, strArr, str);
            }
        }
        long j11 = j8;
        j = j7;
        j2 = j11;
        if (j2 == -9223372036854775807L) {
        }
        return b.a(xmlPullParser.getName(), j, j2, a2, strArr, str);
    }

    private static boolean b(String str) {
        return str.equals("tt") || str.equals("head") || str.equals(NativeAd.COMPONENT_ID_BODY) || str.equals("div") || str.equals("p") || str.equals("span") || str.equals("br") || str.equals("style") || str.equals("styling") || str.equals("layout") || str.equals("region") || str.equals("metadata") || str.equals("smpte:image") || str.equals("smpte:data") || str.equals("smpte:information");
    }

    private static void a(String str, e eVar) throws SubtitleDecoderException {
        Matcher matcher;
        String[] split = str.split("\\s+");
        if (split.length == 1) {
            matcher = c.matcher(str);
        } else if (split.length == 2) {
            matcher = c.matcher(split[1]);
            Log.w("TtmlDecoder", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        } else {
            throw new SubtitleDecoderException("Invalid number of entries for fontSize: " + split.length + ".");
        }
        if (matcher.matches()) {
            String group = matcher.group(3);
            char c2 = 65535;
            switch (group.hashCode()) {
                case 37:
                    if (group.equals("%")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 3240:
                    if (group.equals("em")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 3592:
                    if (group.equals("px")) {
                        c2 = 0;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    eVar.c(1);
                    break;
                case 1:
                    eVar.c(2);
                    break;
                case 2:
                    eVar.c(3);
                    break;
                default:
                    throw new SubtitleDecoderException("Invalid unit for fontSize: '" + group + "'.");
            }
            eVar.a(Float.valueOf(matcher.group(1)).floatValue());
            return;
        }
        throw new SubtitleDecoderException("Invalid expression for fontSize: '" + str + "'.");
    }

    private static long a(String str, C0147a c0147a) throws SubtitleDecoderException {
        String group;
        String group2;
        double d2 = 0.0d;
        Matcher matcher = f3436a.matcher(str);
        if (matcher.matches()) {
            double parseLong = Long.parseLong(matcher.group(3)) + (Long.parseLong(matcher.group(1)) * 3600) + (Long.parseLong(matcher.group(2)) * 60);
            String group3 = matcher.group(4);
            double parseLong2 = (matcher.group(5) != null ? ((float) Long.parseLong(group)) / c0147a.f3437a : 0.0d) + parseLong + (group3 != null ? Double.parseDouble(group3) : 0.0d);
            if (matcher.group(6) != null) {
                d2 = (Long.parseLong(group2) / c0147a.b) / c0147a.f3437a;
            }
            return (long) ((parseLong2 + d2) * 1000000.0d);
        }
        Matcher matcher2 = b.matcher(str);
        if (matcher2.matches()) {
            double parseDouble = Double.parseDouble(matcher2.group(1));
            String group4 = matcher2.group(2);
            char c2 = 65535;
            switch (group4.hashCode()) {
                case 102:
                    if (group4.equals("f")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 104:
                    if (group4.equals("h")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 109:
                    if (group4.equals("m")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 115:
                    if (group4.equals("s")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 116:
                    if (group4.equals("t")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 3494:
                    if (group4.equals("ms")) {
                        c2 = 3;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    parseDouble *= 3600.0d;
                    break;
                case 1:
                    parseDouble *= 60.0d;
                    break;
                case 3:
                    parseDouble /= 1000.0d;
                    break;
                case 4:
                    parseDouble /= c0147a.f3437a;
                    break;
                case 5:
                    parseDouble /= c0147a.c;
                    break;
            }
            return (long) (parseDouble * 1000000.0d);
        }
        throw new SubtitleDecoderException("Malformed time expression: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TtmlDecoder.java */
    /* renamed from: com.google.android.exoplayer2.text.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0147a {

        /* renamed from: a  reason: collision with root package name */
        final float f3437a;
        final int b;
        final int c;

        C0147a(float f, int i, int i2) {
            this.f3437a = f;
            this.b = i;
            this.c = i2;
        }
    }
}
