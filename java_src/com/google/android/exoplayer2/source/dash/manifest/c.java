package com.google.android.exoplayer2.source.dash.manifest;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.Pair;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.source.dash.manifest.h;
import com.google.android.exoplayer2.upstream.p;
import com.google.android.exoplayer2.util.u;
import com.google.android.exoplayer2.util.v;
import com.google.android.exoplayer2.util.w;
import com.intentsoftware.addapptr.ad.NativeAd;
import com.mopub.mobileads.VastIconXmlManager;
import com.pubmatic.sdk.common.CommonConstants;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* compiled from: DashManifestParser.java */
/* loaded from: classes2.dex */
public class c extends DefaultHandler implements p.a<b> {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3394a = Pattern.compile("(\\d+)(?:/(\\d+))?");
    private static final Pattern b = Pattern.compile("CC([1-4])=.*");
    private static final Pattern c = Pattern.compile("([1-9]|[1-5][0-9]|6[0-3])=.*");
    private final String d;
    private final XmlPullParserFactory e;

    public c() {
        this(null);
    }

    public c(String str) {
        this.d = str;
        try {
            this.e = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.p.a
    /* renamed from: a */
    public b b(Uri uri, InputStream inputStream) throws IOException {
        try {
            XmlPullParser newPullParser = this.e.newPullParser();
            newPullParser.setInput(inputStream, null);
            if (newPullParser.next() != 2 || !"MPD".equals(newPullParser.getName())) {
                throw new ParserException("inputStream does not contain a valid media presentation description");
            }
            return a(newPullParser, uri.toString());
        } catch (XmlPullParserException e) {
            throw new ParserException(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected b a(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        k kVar;
        boolean z;
        String str2;
        long j;
        long c2 = c(xmlPullParser, "availabilityStartTime", -9223372036854775807L);
        long b2 = b(xmlPullParser, "mediaPresentationDuration", -9223372036854775807L);
        long b3 = b(xmlPullParser, "minBufferTime", -9223372036854775807L);
        String attributeValue = xmlPullParser.getAttributeValue(null, "type");
        boolean z2 = attributeValue != null && attributeValue.equals("dynamic");
        long b4 = z2 ? b(xmlPullParser, "minimumUpdatePeriod", -9223372036854775807L) : -9223372036854775807L;
        long b5 = z2 ? b(xmlPullParser, "timeShiftBufferDepth", -9223372036854775807L) : -9223372036854775807L;
        long b6 = z2 ? b(xmlPullParser, "suggestedPresentationDelay", -9223372036854775807L) : -9223372036854775807L;
        k kVar2 = null;
        ArrayList arrayList = new ArrayList();
        boolean z3 = false;
        boolean z4 = false;
        long j2 = z2 ? -9223372036854775807L : 0L;
        String str3 = str;
        Uri uri = null;
        while (true) {
            boolean z5 = z3;
            xmlPullParser.next();
            if (w.b(xmlPullParser, "BaseURL")) {
                if (!z4) {
                    z = true;
                    str2 = c(xmlPullParser, str3);
                    z3 = z5;
                    kVar = kVar2;
                }
                z = z4;
                z3 = z5;
                kVar = kVar2;
                str2 = str3;
            } else if (w.b(xmlPullParser, "UTCTiming")) {
                z3 = z5;
                kVar = a(xmlPullParser);
                z = z4;
                str2 = str3;
            } else if (w.b(xmlPullParser, "Location")) {
                uri = Uri.parse(xmlPullParser.nextText());
                z = z4;
                z3 = z5;
                kVar = kVar2;
                str2 = str3;
            } else {
                if (w.b(xmlPullParser, "Period") && !z5) {
                    Pair<d, Long> a2 = a(xmlPullParser, str3, j2);
                    d dVar = (d) a2.first;
                    if (dVar.b == -9223372036854775807L) {
                        if (z2) {
                            z3 = true;
                            kVar = kVar2;
                            z = z4;
                            str2 = str3;
                        } else {
                            throw new ParserException("Unable to determine start of period " + arrayList.size());
                        }
                    } else {
                        long longValue = ((Long) a2.second).longValue();
                        j2 = longValue == -9223372036854775807L ? -9223372036854775807L : longValue + dVar.b;
                        arrayList.add(dVar);
                    }
                }
                z = z4;
                z3 = z5;
                kVar = kVar2;
                str2 = str3;
            }
            if (w.a(xmlPullParser, "MPD")) {
                if (b2 == -9223372036854775807L) {
                    if (j2 == -9223372036854775807L) {
                        if (!z2) {
                            throw new ParserException("Unable to determine duration of static manifest.");
                        }
                    } else {
                        j = j2;
                        if (!arrayList.isEmpty()) {
                            throw new ParserException("No periods found.");
                        }
                        return a(c2, j, b3, z2, b4, b5, b6, kVar, uri, arrayList);
                    }
                }
                j = b2;
                if (!arrayList.isEmpty()) {
                }
            } else {
                kVar2 = kVar;
                str3 = str2;
                z4 = z;
            }
        }
    }

    protected b a(long j, long j2, long j3, boolean z, long j4, long j5, long j6, k kVar, Uri uri, List<d> list) {
        return new b(j, j2, j3, z, j4, j5, j6, kVar, uri, list);
    }

    protected k a(XmlPullParser xmlPullParser) {
        return a(xmlPullParser.getAttributeValue(null, "schemeIdUri"), xmlPullParser.getAttributeValue(null, "value"));
    }

    protected k a(String str, String str2) {
        return new k(str, str2);
    }

    protected Pair<d, Long> a(XmlPullParser xmlPullParser, String str, long j) throws XmlPullParserException, IOException {
        String attributeValue = xmlPullParser.getAttributeValue(null, "id");
        long b2 = b(xmlPullParser, SASNativeVideoAdElement.TRACKING_EVENT_NAME_START, j);
        long b3 = b(xmlPullParser, VastIconXmlManager.DURATION, -9223372036854775807L);
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        h hVar = null;
        String str2 = str;
        do {
            xmlPullParser.next();
            if (w.b(xmlPullParser, "BaseURL")) {
                if (!z) {
                    str2 = c(xmlPullParser, str2);
                    z = true;
                }
            } else if (w.b(xmlPullParser, "AdaptationSet")) {
                arrayList.add(a(xmlPullParser, str2, hVar));
            } else if (w.b(xmlPullParser, "SegmentBase")) {
                hVar = a(xmlPullParser, (h.e) null);
            } else if (w.b(xmlPullParser, "SegmentList")) {
                hVar = a(xmlPullParser, (h.b) null);
            } else if (w.b(xmlPullParser, "SegmentTemplate")) {
                hVar = a(xmlPullParser, (h.c) null);
            }
        } while (!w.a(xmlPullParser, "Period"));
        return Pair.create(a(attributeValue, b2, arrayList), Long.valueOf(b3));
    }

    protected d a(String str, long j, List<com.google.android.exoplayer2.source.dash.manifest.a> list) {
        return new d(str, j, list);
    }

    protected com.google.android.exoplayer2.source.dash.manifest.a a(XmlPullParser xmlPullParser, String str, h hVar) throws XmlPullParserException, IOException {
        boolean z;
        int i;
        int a2 = a(xmlPullParser, "id", -1);
        int b2 = b(xmlPullParser);
        String attributeValue = xmlPullParser.getAttributeValue(null, "mimeType");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "codecs");
        int a3 = a(xmlPullParser, "width", -1);
        int a4 = a(xmlPullParser, "height", -1);
        float a5 = a(xmlPullParser, -1.0f);
        int i2 = -1;
        int a6 = a(xmlPullParser, "audioSamplingRate", -1);
        String attributeValue3 = xmlPullParser.getAttributeValue(null, PubMaticConstants.LANGUAGE);
        ArrayList<DrmInitData.SchemeData> arrayList = new ArrayList<>();
        ArrayList<g> arrayList2 = new ArrayList<>();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        int i3 = 0;
        boolean z2 = false;
        h hVar2 = hVar;
        String str2 = str;
        while (true) {
            xmlPullParser.next();
            if (w.b(xmlPullParser, "BaseURL")) {
                if (!z2) {
                    str2 = c(xmlPullParser, str2);
                    z = true;
                    i = b2;
                }
                z = z2;
                i = b2;
            } else if (w.b(xmlPullParser, "ContentProtection")) {
                DrmInitData.SchemeData c2 = c(xmlPullParser);
                if (c2 != null) {
                    arrayList.add(c2);
                }
                z = z2;
                i = b2;
            } else if (w.b(xmlPullParser, "ContentComponent")) {
                attributeValue3 = c(attributeValue3, xmlPullParser.getAttributeValue(null, PubMaticConstants.LANGUAGE));
                i = a(b2, b(xmlPullParser));
                z = z2;
            } else if (w.b(xmlPullParser, "Role")) {
                i3 |= f(xmlPullParser);
                z = z2;
                i = b2;
            } else if (w.b(xmlPullParser, "AudioChannelConfiguration")) {
                i2 = k(xmlPullParser);
                z = z2;
                i = b2;
            } else if (w.b(xmlPullParser, "Accessibility")) {
                arrayList3.add(e(xmlPullParser));
                z = z2;
                i = b2;
            } else if (w.b(xmlPullParser, "Representation")) {
                a a7 = a(xmlPullParser, str2, attributeValue, attributeValue2, a3, a4, a5, i2, a6, attributeValue3, i3, arrayList3, hVar2);
                int a8 = a(b2, a(a7.f3395a));
                arrayList4.add(a7);
                i = a8;
                z = z2;
            } else if (w.b(xmlPullParser, "SegmentBase")) {
                hVar2 = a(xmlPullParser, (h.e) hVar2);
                z = z2;
                i = b2;
            } else if (w.b(xmlPullParser, "SegmentList")) {
                hVar2 = a(xmlPullParser, (h.b) hVar2);
                z = z2;
                i = b2;
            } else if (w.b(xmlPullParser, "SegmentTemplate")) {
                hVar2 = a(xmlPullParser, (h.c) hVar2);
                z = z2;
                i = b2;
            } else if (w.b(xmlPullParser, "InbandEventStream")) {
                arrayList2.add(d(xmlPullParser));
                z = z2;
                i = b2;
            } else {
                if (w.b(xmlPullParser)) {
                    g(xmlPullParser);
                }
                z = z2;
                i = b2;
            }
            if (w.a(xmlPullParser, "AdaptationSet")) {
                break;
            }
            z2 = z;
            b2 = i;
        }
        List<f> arrayList5 = new ArrayList<>(arrayList4.size());
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 < arrayList4.size()) {
                arrayList5.add(a((a) arrayList4.get(i5), this.d, arrayList, arrayList2));
                i4 = i5 + 1;
            } else {
                return a(a2, i, arrayList5, arrayList3);
            }
        }
    }

    protected com.google.android.exoplayer2.source.dash.manifest.a a(int i, int i2, List<f> list, List<g> list2) {
        return new com.google.android.exoplayer2.source.dash.manifest.a(i, i2, list, list2);
    }

    protected int b(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "contentType");
        if (TextUtils.isEmpty(attributeValue)) {
            return -1;
        }
        if ("audio".equals(attributeValue)) {
            return 1;
        }
        if (AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO.equals(attributeValue)) {
            return 2;
        }
        return CommonConstants.RESPONSE_TEXT.equals(attributeValue) ? 3 : -1;
    }

    protected int a(Format format) {
        String str = format.f;
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (com.google.android.exoplayer2.util.i.b(str)) {
            return 2;
        }
        if (com.google.android.exoplayer2.util.i.a(str)) {
            return 1;
        }
        return a(str) ? 3 : -1;
    }

    protected DrmInitData.SchemeData c(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        boolean equals = "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95".equals(xmlPullParser.getAttributeValue(null, "schemeIdUri"));
        boolean z = false;
        UUID uuid = null;
        byte[] bArr = null;
        do {
            xmlPullParser.next();
            if (bArr == null && w.b(xmlPullParser, "cenc:pssh") && xmlPullParser.next() == 4) {
                bArr = Base64.decode(xmlPullParser.getText(), 0);
                uuid = com.google.android.exoplayer2.extractor.c.h.a(bArr);
                if (uuid == null) {
                    Log.w("MpdParser", "Skipping malformed cenc:pssh data");
                    bArr = null;
                }
            } else if (bArr == null && equals && w.b(xmlPullParser, "mspr:pro") && xmlPullParser.next() == 4) {
                bArr = com.google.android.exoplayer2.extractor.c.h.a(com.google.android.exoplayer2.b.e, Base64.decode(xmlPullParser.getText(), 0));
                uuid = com.google.android.exoplayer2.b.e;
            } else if (w.b(xmlPullParser, "widevine:license")) {
                String attributeValue = xmlPullParser.getAttributeValue(null, "robustness_level");
                z = attributeValue != null && attributeValue.startsWith("HW");
            }
        } while (!w.a(xmlPullParser, "ContentProtection"));
        if (bArr != null) {
            return new DrmInitData.SchemeData(uuid, "video/mp4", bArr, z);
        }
        return null;
    }

    protected g d(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        return b(xmlPullParser, "InbandEventStream");
    }

    protected g e(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        return b(xmlPullParser, "Accessibility");
    }

    protected int f(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String b2 = b(xmlPullParser, "schemeIdUri", (String) null);
        String b3 = b(xmlPullParser, "value", (String) null);
        do {
            xmlPullParser.next();
        } while (!w.a(xmlPullParser, "Role"));
        return (!"urn:mpeg:dash:role:2011".equals(b2) || !NativeAd.MAIN_IMAGE_ASSET.equals(b3)) ? 0 : 1;
    }

    protected void g(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
    }

    protected a a(XmlPullParser xmlPullParser, String str, String str2, String str3, int i, int i2, float f, int i3, int i4, String str4, int i5, List<g> list, h hVar) throws XmlPullParserException, IOException {
        h.e eVar;
        String str5;
        boolean z;
        int i6;
        String attributeValue = xmlPullParser.getAttributeValue(null, "id");
        int a2 = a(xmlPullParser, "bandwidth", -1);
        String b2 = b(xmlPullParser, "mimeType", str2);
        String b3 = b(xmlPullParser, "codecs", str3);
        int a3 = a(xmlPullParser, "width", i);
        int a4 = a(xmlPullParser, "height", i2);
        float a5 = a(xmlPullParser, f);
        int a6 = a(xmlPullParser, "audioSamplingRate", i4);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        boolean z2 = false;
        int i7 = i3;
        h hVar2 = hVar;
        String str6 = str;
        while (true) {
            xmlPullParser.next();
            if (w.b(xmlPullParser, "BaseURL")) {
                if (!z2) {
                    eVar = hVar2;
                    str5 = c(xmlPullParser, str6);
                    z = true;
                    i6 = i7;
                }
                eVar = hVar2;
                str5 = str6;
                z = z2;
                i6 = i7;
            } else if (w.b(xmlPullParser, "AudioChannelConfiguration")) {
                eVar = hVar2;
                str5 = str6;
                z = z2;
                i6 = k(xmlPullParser);
            } else if (w.b(xmlPullParser, "SegmentBase")) {
                eVar = a(xmlPullParser, (h.e) hVar2);
                str5 = str6;
                z = z2;
                i6 = i7;
            } else if (w.b(xmlPullParser, "SegmentList")) {
                eVar = a(xmlPullParser, (h.b) hVar2);
                str5 = str6;
                z = z2;
                i6 = i7;
            } else if (w.b(xmlPullParser, "SegmentTemplate")) {
                eVar = a(xmlPullParser, (h.c) hVar2);
                str5 = str6;
                z = z2;
                i6 = i7;
            } else if (w.b(xmlPullParser, "ContentProtection")) {
                DrmInitData.SchemeData c2 = c(xmlPullParser);
                if (c2 != null) {
                    arrayList.add(c2);
                }
                eVar = hVar2;
                str5 = str6;
                z = z2;
                i6 = i7;
            } else {
                if (w.b(xmlPullParser, "InbandEventStream")) {
                    arrayList2.add(d(xmlPullParser));
                }
                eVar = hVar2;
                str5 = str6;
                z = z2;
                i6 = i7;
            }
            if (w.a(xmlPullParser, "Representation")) {
                break;
            }
            i7 = i6;
            str6 = str5;
            z2 = z;
            hVar2 = eVar;
        }
        return new a(a(attributeValue, b2, a3, a4, a5, i6, a6, a2, str4, i5, list, b3), str5, eVar != null ? eVar : new h.e(), arrayList, arrayList2);
    }

    protected Format a(String str, String str2, int i, int i2, float f, int i3, int i4, int i5, String str3, int i6, List<g> list, String str4) {
        int i7;
        String b2 = b(str2, str4);
        if (b2 != null) {
            if (com.google.android.exoplayer2.util.i.b(b2)) {
                return Format.a(str, str2, b2, str4, i5, i, i2, f, (List<byte[]>) null, i6);
            }
            if (com.google.android.exoplayer2.util.i.a(b2)) {
                return Format.a(str, str2, b2, str4, i5, i3, i4, (List<byte[]>) null, i6, str3);
            }
            if (a(b2)) {
                if ("application/cea-608".equals(b2)) {
                    i7 = a(list);
                } else if ("application/cea-708".equals(b2)) {
                    i7 = b(list);
                } else {
                    i7 = -1;
                }
                return Format.a(str, str2, b2, str4, i5, i6, str3, i7);
            }
        }
        return Format.b(str, str2, b2, str4, i5, i6, str3);
    }

    protected f a(a aVar, String str, ArrayList<DrmInitData.SchemeData> arrayList, ArrayList<g> arrayList2) {
        Format format = aVar.f3395a;
        ArrayList<DrmInitData.SchemeData> arrayList3 = aVar.d;
        arrayList3.addAll(arrayList);
        if (!arrayList3.isEmpty()) {
            format = format.a(new DrmInitData(arrayList3));
        }
        ArrayList<g> arrayList4 = aVar.e;
        arrayList4.addAll(arrayList2);
        return f.a(str, -1L, format, aVar.b, aVar.c, arrayList4);
    }

    protected h.e a(XmlPullParser xmlPullParser, h.e eVar) throws XmlPullParserException, IOException {
        long j;
        long j2 = 0;
        long d = d(xmlPullParser, "timescale", eVar != null ? eVar.b : 1L);
        long d2 = d(xmlPullParser, "presentationTimeOffset", eVar != null ? eVar.c : 0L);
        long j3 = eVar != null ? eVar.d : 0L;
        if (eVar != null) {
            j2 = eVar.e;
        }
        String attributeValue = xmlPullParser.getAttributeValue(null, "indexRange");
        if (attributeValue != null) {
            String[] split = attributeValue.split("-");
            long parseLong = Long.parseLong(split[0]);
            j2 = (Long.parseLong(split[1]) - parseLong) + 1;
            j = parseLong;
        } else {
            j = j3;
        }
        e eVar2 = eVar != null ? eVar.f3400a : null;
        while (true) {
            xmlPullParser.next();
            e i = w.b(xmlPullParser, "Initialization") ? i(xmlPullParser) : eVar2;
            if (w.a(xmlPullParser, "SegmentBase")) {
                return a(i, d, d2, j, j2);
            }
            eVar2 = i;
        }
    }

    protected h.e a(e eVar, long j, long j2, long j3, long j4) {
        return new h.e(eVar, j, j2, j3, j4);
    }

    protected h.b a(XmlPullParser xmlPullParser, h.b bVar) throws XmlPullParserException, IOException {
        List<e> list;
        e eVar;
        List<h.d> list2;
        e eVar2 = null;
        long d = d(xmlPullParser, "timescale", bVar != null ? bVar.b : 1L);
        long d2 = d(xmlPullParser, "presentationTimeOffset", bVar != null ? bVar.c : 0L);
        long d3 = d(xmlPullParser, VastIconXmlManager.DURATION, bVar != null ? bVar.e : -9223372036854775807L);
        int a2 = a(xmlPullParser, "startNumber", bVar != null ? bVar.d : 1);
        List<e> list3 = null;
        List<h.d> list4 = null;
        do {
            xmlPullParser.next();
            if (w.b(xmlPullParser, "Initialization")) {
                eVar2 = i(xmlPullParser);
            } else if (w.b(xmlPullParser, "SegmentTimeline")) {
                list4 = h(xmlPullParser);
            } else if (w.b(xmlPullParser, "SegmentURL")) {
                if (list3 == null) {
                    list3 = new ArrayList<>();
                }
                list3.add(j(xmlPullParser));
            }
        } while (!w.a(xmlPullParser, "SegmentList"));
        if (bVar != null) {
            e eVar3 = eVar2 != null ? eVar2 : bVar.f3400a;
            list2 = list4 != null ? list4 : bVar.f;
            if (list3 == null) {
                list3 = bVar.g;
            }
            eVar = eVar3;
            list = list3;
        } else {
            list = list3;
            List<h.d> list5 = list4;
            eVar = eVar2;
            list2 = list5;
        }
        return a(eVar, d, d2, a2, d3, list2, list);
    }

    protected h.b a(e eVar, long j, long j2, int i, long j3, List<h.d> list, List<e> list2) {
        return new h.b(eVar, j, j2, i, j3, list, list2);
    }

    protected h.c a(XmlPullParser xmlPullParser, h.c cVar) throws XmlPullParserException, IOException {
        List<h.d> list;
        long d = d(xmlPullParser, "timescale", cVar != null ? cVar.b : 1L);
        long d2 = d(xmlPullParser, "presentationTimeOffset", cVar != null ? cVar.c : 0L);
        long d3 = d(xmlPullParser, VastIconXmlManager.DURATION, cVar != null ? cVar.e : -9223372036854775807L);
        int a2 = a(xmlPullParser, "startNumber", cVar != null ? cVar.d : 1);
        j a3 = a(xmlPullParser, ShareConstants.WEB_DIALOG_PARAM_MEDIA, cVar != null ? cVar.h : null);
        j a4 = a(xmlPullParser, "initialization", cVar != null ? cVar.g : null);
        List<h.d> list2 = null;
        e eVar = null;
        do {
            xmlPullParser.next();
            if (w.b(xmlPullParser, "Initialization")) {
                eVar = i(xmlPullParser);
            } else if (w.b(xmlPullParser, "SegmentTimeline")) {
                list2 = h(xmlPullParser);
            }
        } while (!w.a(xmlPullParser, "SegmentTemplate"));
        if (cVar != null) {
            if (eVar == null) {
                eVar = cVar.f3400a;
            }
            if (list2 == null) {
                list2 = cVar.f;
            }
            list = list2;
        } else {
            list = list2;
        }
        return a(eVar, d, d2, a2, d3, list, a4, a3);
    }

    protected h.c a(e eVar, long j, long j2, int i, long j3, List<h.d> list, j jVar, j jVar2) {
        return new h.c(eVar, j, j2, i, j3, list, jVar, jVar2);
    }

    protected List<h.d> h(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        long j = 0;
        do {
            xmlPullParser.next();
            if (w.b(xmlPullParser, "S")) {
                j = d(xmlPullParser, "t", j);
                long d = d(xmlPullParser, PhoenixConstants.DEBUG_PARAM, -9223372036854775807L);
                int a2 = a(xmlPullParser, "r", 0) + 1;
                int i = 0;
                while (i < a2) {
                    arrayList.add(a(j, d));
                    i++;
                    j += d;
                }
            }
        } while (!w.a(xmlPullParser, "SegmentTimeline"));
        return arrayList;
    }

    protected h.d a(long j, long j2) {
        return new h.d(j, j2);
    }

    protected j a(XmlPullParser xmlPullParser, String str, j jVar) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            return j.a(attributeValue);
        }
        return jVar;
    }

    protected e i(XmlPullParser xmlPullParser) {
        return a(xmlPullParser, "sourceURL", "range");
    }

    protected e j(XmlPullParser xmlPullParser) {
        return a(xmlPullParser, ShareConstants.WEB_DIALOG_PARAM_MEDIA, "mediaRange");
    }

    protected e a(XmlPullParser xmlPullParser, String str, String str2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        long j = 0;
        long j2 = -1;
        String attributeValue2 = xmlPullParser.getAttributeValue(null, str2);
        if (attributeValue2 != null) {
            String[] split = attributeValue2.split("-");
            j = Long.parseLong(split[0]);
            if (split.length == 2) {
                j2 = (Long.parseLong(split[1]) - j) + 1;
            }
        }
        return a(attributeValue, j, j2);
    }

    protected e a(String str, long j, long j2) {
        return new e(str, j, j2);
    }

    protected int k(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i = -1;
        if ("urn:mpeg:dash:23003:3:audio_channel_configuration:2011".equals(b(xmlPullParser, "schemeIdUri", (String) null))) {
            i = a(xmlPullParser, "value", -1);
        }
        do {
            xmlPullParser.next();
        } while (!w.a(xmlPullParser, "AudioChannelConfiguration"));
        return i;
    }

    private static String b(String str, String str2) {
        if (com.google.android.exoplayer2.util.i.a(str)) {
            return com.google.android.exoplayer2.util.i.e(str2);
        }
        if (com.google.android.exoplayer2.util.i.b(str)) {
            return com.google.android.exoplayer2.util.i.d(str2);
        }
        if (!a(str)) {
            if ("application/mp4".equals(str)) {
                if ("stpp".equals(str2)) {
                    return "application/ttml+xml";
                }
                if ("wvtt".equals(str2)) {
                    return "application/x-mp4-vtt";
                }
            } else if ("application/x-rawcc".equals(str)) {
                if (str2 != null) {
                    if (str2.contains("cea708")) {
                        return "application/cea-708";
                    }
                    if (str2.contains("eia608") || str2.contains("cea608")) {
                        return "application/cea-608";
                    }
                }
                return null;
            }
            return null;
        }
        return str;
    }

    private static boolean a(String str) {
        return com.google.android.exoplayer2.util.i.c(str) || "application/ttml+xml".equals(str) || "application/x-mp4-vtt".equals(str) || "application/cea-708".equals(str) || "application/cea-608".equals(str);
    }

    private static String c(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 != null) {
            com.google.android.exoplayer2.util.a.b(str.equals(str2));
            return str;
        }
        return str;
    }

    private static int a(int i, int i2) {
        if (i == -1) {
            return i2;
        }
        if (i2 != -1) {
            com.google.android.exoplayer2.util.a.b(i == i2);
            return i;
        }
        return i;
    }

    protected static g b(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String b2 = b(xmlPullParser, "schemeIdUri", (String) null);
        String b3 = b(xmlPullParser, "value", (String) null);
        do {
            xmlPullParser.next();
        } while (!w.a(xmlPullParser, str));
        return new g(b2, b3);
    }

    protected static int a(List<g> list) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                g gVar = list.get(i2);
                if ("urn:scte:dash:cc:cea-608:2015".equals(gVar.f3399a) && gVar.b != null) {
                    Matcher matcher = b.matcher(gVar.b);
                    if (matcher.matches()) {
                        return Integer.parseInt(matcher.group(1));
                    }
                    Log.w("MpdParser", "Unable to parse CEA-608 channel number from: " + gVar.b);
                }
                i = i2 + 1;
            } else {
                return -1;
            }
        }
    }

    protected static int b(List<g> list) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                g gVar = list.get(i2);
                if ("urn:scte:dash:cc:cea-708:2015".equals(gVar.f3399a) && gVar.b != null) {
                    Matcher matcher = c.matcher(gVar.b);
                    if (matcher.matches()) {
                        return Integer.parseInt(matcher.group(1));
                    }
                    Log.w("MpdParser", "Unable to parse CEA-708 service block number from: " + gVar.b);
                }
                i = i2 + 1;
            } else {
                return -1;
            }
        }
    }

    protected static float a(XmlPullParser xmlPullParser, float f) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "frameRate");
        if (attributeValue != null) {
            Matcher matcher = f3394a.matcher(attributeValue);
            if (matcher.matches()) {
                int parseInt = Integer.parseInt(matcher.group(1));
                String group = matcher.group(2);
                if (!TextUtils.isEmpty(group)) {
                    return parseInt / Integer.parseInt(group);
                }
                return parseInt;
            }
            return f;
        }
        return f;
    }

    protected static long b(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j : v.e(attributeValue);
    }

    protected static long c(XmlPullParser xmlPullParser, String str, long j) throws ParserException {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j : v.f(attributeValue);
    }

    protected static String c(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        xmlPullParser.next();
        return u.b(str, xmlPullParser.getText());
    }

    protected static int a(XmlPullParser xmlPullParser, String str, int i) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? i : Integer.parseInt(attributeValue);
    }

    protected static long d(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j : Long.parseLong(attributeValue);
    }

    protected static String b(XmlPullParser xmlPullParser, String str, String str2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? str2 : attributeValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DashManifestParser.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Format f3395a;
        public final String b;
        public final h c;
        public final ArrayList<DrmInitData.SchemeData> d;
        public final ArrayList<g> e;

        public a(Format format, String str, h hVar, ArrayList<DrmInitData.SchemeData> arrayList, ArrayList<g> arrayList2) {
            this.f3395a = format;
            this.b = str;
            this.c = hVar;
            this.d = arrayList;
            this.e = arrayList2;
        }
    }
}
