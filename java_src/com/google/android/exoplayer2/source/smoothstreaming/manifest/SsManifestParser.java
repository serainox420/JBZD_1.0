package com.google.android.exoplayer2.source.smoothstreaming.manifest;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.c.h;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.a;
import com.google.android.exoplayer2.upstream.p;
import com.google.android.exoplayer2.util.v;
import com.pubmatic.sdk.common.CommonConstants;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* loaded from: classes2.dex */
public class SsManifestParser implements p.a<com.google.android.exoplayer2.source.smoothstreaming.manifest.a> {

    /* renamed from: a  reason: collision with root package name */
    private final XmlPullParserFactory f3414a;

    public SsManifestParser() {
        try {
            this.f3414a = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e2) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.p.a
    /* renamed from: a */
    public com.google.android.exoplayer2.source.smoothstreaming.manifest.a b(Uri uri, InputStream inputStream) throws IOException {
        try {
            XmlPullParser newPullParser = this.f3414a.newPullParser();
            newPullParser.setInput(inputStream, null);
            return (com.google.android.exoplayer2.source.smoothstreaming.manifest.a) new d(null, uri.toString()).a(newPullParser);
        } catch (XmlPullParserException e2) {
            throw new ParserException(e2);
        }
    }

    /* loaded from: classes2.dex */
    public static class MissingFieldException extends ParserException {
        public MissingFieldException(String str) {
            super("Missing required field: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f3415a;
        private final String b;
        private final a c;
        private final List<Pair<String, Object>> d = new LinkedList();

        protected abstract Object a();

        public a(a aVar, String str, String str2) {
            this.c = aVar;
            this.f3415a = str;
            this.b = str2;
        }

        public final Object a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
            int i = 0;
            boolean z = false;
            while (true) {
                switch (xmlPullParser.getEventType()) {
                    case 1:
                        return null;
                    case 2:
                        String name = xmlPullParser.getName();
                        if (this.b.equals(name)) {
                            b(xmlPullParser);
                            z = true;
                            break;
                        } else if (z) {
                            if (i > 0) {
                                i++;
                                break;
                            } else if (b(name)) {
                                b(xmlPullParser);
                                break;
                            } else {
                                a a2 = a(this, name, this.f3415a);
                                if (a2 != null) {
                                    a(a2.a(xmlPullParser));
                                    break;
                                } else {
                                    i = 1;
                                    break;
                                }
                            }
                        } else {
                            break;
                        }
                    case 3:
                        if (z) {
                            if (i > 0) {
                                i--;
                                break;
                            } else {
                                String name2 = xmlPullParser.getName();
                                d(xmlPullParser);
                                if (b(name2)) {
                                    break;
                                } else {
                                    return a();
                                }
                            }
                        } else {
                            continue;
                        }
                    case 4:
                        if (z && i == 0) {
                            c(xmlPullParser);
                            break;
                        }
                        break;
                }
                xmlPullParser.next();
            }
        }

        private a a(a aVar, String str, String str2) {
            if ("QualityLevel".equals(str)) {
                return new c(aVar, str2);
            }
            if ("Protection".equals(str)) {
                return new b(aVar, str2);
            }
            if ("StreamIndex".equals(str)) {
                return new e(aVar, str2);
            }
            return null;
        }

        protected final void a(String str, Object obj) {
            this.d.add(Pair.create(str, obj));
        }

        protected final Object a(String str) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.d.size()) {
                    Pair<String, Object> pair = this.d.get(i2);
                    if (!((String) pair.first).equals(str)) {
                        i = i2 + 1;
                    } else {
                        return pair.second;
                    }
                } else if (this.c != null) {
                    return this.c.a(str);
                } else {
                    return null;
                }
            }
        }

        protected boolean b(String str) {
            return false;
        }

        protected void b(XmlPullParser xmlPullParser) throws ParserException {
        }

        protected void c(XmlPullParser xmlPullParser) {
        }

        protected void d(XmlPullParser xmlPullParser) {
        }

        protected void a(Object obj) {
        }

        protected final String a(XmlPullParser xmlPullParser, String str) throws MissingFieldException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                return attributeValue;
            }
            throw new MissingFieldException(str);
        }

        protected final int a(XmlPullParser xmlPullParser, String str, int i) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Integer.parseInt(attributeValue);
                } catch (NumberFormatException e) {
                    throw new ParserException(e);
                }
            }
            return i;
        }

        protected final int b(XmlPullParser xmlPullParser, String str) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Integer.parseInt(attributeValue);
                } catch (NumberFormatException e) {
                    throw new ParserException(e);
                }
            }
            throw new MissingFieldException(str);
        }

        protected final long a(XmlPullParser xmlPullParser, String str, long j) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Long.parseLong(attributeValue);
                } catch (NumberFormatException e) {
                    throw new ParserException(e);
                }
            }
            return j;
        }

        protected final long c(XmlPullParser xmlPullParser, String str) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Long.parseLong(attributeValue);
                } catch (NumberFormatException e) {
                    throw new ParserException(e);
                }
            }
            throw new MissingFieldException(str);
        }

        protected final boolean a(XmlPullParser xmlPullParser, String str, boolean z) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                return Boolean.parseBoolean(attributeValue);
            }
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class d extends a {

        /* renamed from: a  reason: collision with root package name */
        private final List<a.b> f3418a;
        private int b;
        private int c;
        private long d;
        private long e;
        private long f;
        private int g;
        private boolean h;
        private a.C0144a i;

        public d(a aVar, String str) {
            super(aVar, str, "SmoothStreamingMedia");
            this.g = -1;
            this.i = null;
            this.f3418a = new LinkedList();
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public void b(XmlPullParser xmlPullParser) throws ParserException {
            this.b = b(xmlPullParser, "MajorVersion");
            this.c = b(xmlPullParser, "MinorVersion");
            this.d = a(xmlPullParser, "TimeScale", 10000000L);
            this.e = c(xmlPullParser, "Duration");
            this.f = a(xmlPullParser, "DVRWindowLength", 0L);
            this.g = a(xmlPullParser, "LookaheadCount", -1);
            this.h = a(xmlPullParser, "IsLive", false);
            a("TimeScale", Long.valueOf(this.d));
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public void a(Object obj) {
            if (obj instanceof a.b) {
                this.f3418a.add((a.b) obj);
            } else if (obj instanceof a.C0144a) {
                com.google.android.exoplayer2.util.a.b(this.i == null);
                this.i = (a.C0144a) obj;
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public Object a() {
            a.b[] bVarArr = new a.b[this.f3418a.size()];
            this.f3418a.toArray(bVarArr);
            if (this.i != null) {
                DrmInitData drmInitData = new DrmInitData(new DrmInitData.SchemeData(this.i.f3421a, "video/mp4", this.i.b));
                for (a.b bVar : bVarArr) {
                    for (int i = 0; i < bVar.j.length; i++) {
                        bVar.j[i] = bVar.j[i].a(drmInitData);
                    }
                }
            }
            return new com.google.android.exoplayer2.source.smoothstreaming.manifest.a(this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, bVarArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b extends a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f3416a;
        private UUID b;
        private byte[] c;

        public b(a aVar, String str) {
            super(aVar, str, "Protection");
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public boolean b(String str) {
            return "ProtectionHeader".equals(str);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public void b(XmlPullParser xmlPullParser) {
            if ("ProtectionHeader".equals(xmlPullParser.getName())) {
                this.f3416a = true;
                this.b = UUID.fromString(c(xmlPullParser.getAttributeValue(null, "SystemID")));
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public void c(XmlPullParser xmlPullParser) {
            if (this.f3416a) {
                this.c = Base64.decode(xmlPullParser.getText(), 0);
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public void d(XmlPullParser xmlPullParser) {
            if ("ProtectionHeader".equals(xmlPullParser.getName())) {
                this.f3416a = false;
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public Object a() {
            return new a.C0144a(this.b, h.a(this.b, this.c));
        }

        private static String c(String str) {
            if (str.charAt(0) == '{' && str.charAt(str.length() - 1) == '}') {
                return str.substring(1, str.length() - 1);
            }
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class e extends a {

        /* renamed from: a  reason: collision with root package name */
        private final String f3419a;
        private final List<Format> b;
        private int c;
        private String d;
        private long e;
        private String f;
        private String g;
        private int h;
        private int i;
        private int j;
        private int k;
        private String l;
        private ArrayList<Long> m;
        private long n;

        public e(a aVar, String str) {
            super(aVar, str, "StreamIndex");
            this.f3419a = str;
            this.b = new LinkedList();
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public boolean b(String str) {
            return "c".equals(str);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public void b(XmlPullParser xmlPullParser) throws ParserException {
            if ("c".equals(xmlPullParser.getName())) {
                e(xmlPullParser);
            } else {
                f(xmlPullParser);
            }
        }

        private void e(XmlPullParser xmlPullParser) throws ParserException {
            int size = this.m.size();
            long a2 = a(xmlPullParser, "t", -9223372036854775807L);
            if (a2 == -9223372036854775807L) {
                if (size == 0) {
                    a2 = 0;
                } else if (this.n != -1) {
                    a2 = this.m.get(size - 1).longValue() + this.n;
                } else {
                    throw new ParserException("Unable to infer start time");
                }
            }
            int i = size + 1;
            this.m.add(Long.valueOf(a2));
            this.n = a(xmlPullParser, PhoenixConstants.DEBUG_PARAM, -9223372036854775807L);
            long a3 = a(xmlPullParser, "r", 1L);
            if (a3 > 1 && this.n == -9223372036854775807L) {
                throw new ParserException("Repeated chunk with unspecified duration");
            }
            for (int i2 = 1; i2 < a3; i2++) {
                i++;
                this.m.add(Long.valueOf((this.n * i2) + a2));
            }
        }

        private void f(XmlPullParser xmlPullParser) throws ParserException {
            this.c = g(xmlPullParser);
            a("Type", Integer.valueOf(this.c));
            if (this.c == 3) {
                this.d = a(xmlPullParser, "Subtype");
            } else {
                this.d = xmlPullParser.getAttributeValue(null, "Subtype");
            }
            this.f = xmlPullParser.getAttributeValue(null, "Name");
            this.g = a(xmlPullParser, "Url");
            this.h = a(xmlPullParser, "MaxWidth", -1);
            this.i = a(xmlPullParser, "MaxHeight", -1);
            this.j = a(xmlPullParser, "DisplayWidth", -1);
            this.k = a(xmlPullParser, "DisplayHeight", -1);
            this.l = xmlPullParser.getAttributeValue(null, "Language");
            a("Language", this.l);
            this.e = a(xmlPullParser, "TimeScale", -1);
            if (this.e == -1) {
                this.e = ((Long) a("TimeScale")).longValue();
            }
            this.m = new ArrayList<>();
        }

        private int g(XmlPullParser xmlPullParser) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, "Type");
            if (attributeValue != null) {
                if ("audio".equalsIgnoreCase(attributeValue)) {
                    return 1;
                }
                if (AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO.equalsIgnoreCase(attributeValue)) {
                    return 2;
                }
                if (CommonConstants.RESPONSE_TEXT.equalsIgnoreCase(attributeValue)) {
                    return 3;
                }
                throw new ParserException("Invalid key value[" + attributeValue + "]");
            }
            throw new MissingFieldException("Type");
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public void a(Object obj) {
            if (obj instanceof Format) {
                this.b.add((Format) obj);
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public Object a() {
            Format[] formatArr = new Format[this.b.size()];
            this.b.toArray(formatArr);
            return new a.b(this.f3419a, this.g, this.c, this.d, this.e, this.f, this.h, this.i, this.j, this.k, this.l, formatArr, this.m, this.n);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c extends a {

        /* renamed from: a  reason: collision with root package name */
        private Format f3417a;

        public c(a aVar, String str) {
            super(aVar, str, "QualityLevel");
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public void b(XmlPullParser xmlPullParser) throws ParserException {
            int intValue = ((Integer) a("Type")).intValue();
            String attributeValue = xmlPullParser.getAttributeValue(null, "Index");
            int b = b(xmlPullParser, "Bitrate");
            String d = d(a(xmlPullParser, "FourCC"));
            if (intValue == 2) {
                this.f3417a = Format.a(attributeValue, "video/mp4", d, (String) null, b, b(xmlPullParser, "MaxWidth"), b(xmlPullParser, "MaxHeight"), -1.0f, c(xmlPullParser.getAttributeValue(null, "CodecPrivateData")), 0);
            } else if (intValue == 1) {
                if (d == null) {
                    d = "audio/mp4a-latm";
                }
                int b2 = b(xmlPullParser, "Channels");
                int b3 = b(xmlPullParser, "SamplingRate");
                List<byte[]> c = c(xmlPullParser.getAttributeValue(null, "CodecPrivateData"));
                if (c.isEmpty() && "audio/mp4a-latm".equals(d)) {
                    c = Collections.singletonList(com.google.android.exoplayer2.util.c.a(b3, b2));
                }
                this.f3417a = Format.a(attributeValue, "audio/mp4", d, (String) null, b, b2, b3, c, 0, (String) a("Language"));
            } else if (intValue == 3) {
                this.f3417a = Format.a(attributeValue, "application/mp4", d, (String) null, b, 0, (String) a("Language"));
            } else {
                this.f3417a = Format.b(attributeValue, "application/mp4", d, null, b, 0, null);
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.a
        public Object a() {
            return this.f3417a;
        }

        private static List<byte[]> c(String str) {
            ArrayList arrayList = new ArrayList();
            if (!TextUtils.isEmpty(str)) {
                byte[] h = v.h(str);
                byte[][] b = com.google.android.exoplayer2.util.c.b(h);
                if (b == null) {
                    arrayList.add(h);
                } else {
                    Collections.addAll(arrayList, b);
                }
            }
            return arrayList;
        }

        private static String d(String str) {
            if (str.equalsIgnoreCase("H264") || str.equalsIgnoreCase("X264") || str.equalsIgnoreCase("AVC1") || str.equalsIgnoreCase("DAVC")) {
                return "video/avc";
            }
            if (str.equalsIgnoreCase("AAC") || str.equalsIgnoreCase("AACL") || str.equalsIgnoreCase("AACH") || str.equalsIgnoreCase("AACP")) {
                return "audio/mp4a-latm";
            }
            if (str.equalsIgnoreCase("TTML")) {
                return "application/ttml+xml";
            }
            if (str.equalsIgnoreCase("ac-3") || str.equalsIgnoreCase("dac3")) {
                return "audio/ac3";
            }
            if (str.equalsIgnoreCase("ec-3") || str.equalsIgnoreCase("dec3")) {
                return "audio/eac3";
            }
            if (str.equalsIgnoreCase("dtsc")) {
                return "audio/vnd.dts";
            }
            if (str.equalsIgnoreCase("dtsh") || str.equalsIgnoreCase("dtsl")) {
                return "audio/vnd.dts.hd";
            }
            if (str.equalsIgnoreCase("dtse")) {
                return "audio/vnd.dts.hd;profile=lbr";
            }
            if (str.equalsIgnoreCase("opus")) {
                return "audio/opus";
            }
            return null;
        }
    }
}
