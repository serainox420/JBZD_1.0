package com.google.android.exoplayer2.source.b.a;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.source.UnrecognizedInputFormatException;
import com.google.android.exoplayer2.source.b.a.a;
import com.google.android.exoplayer2.source.b.a.b;
import com.google.android.exoplayer2.upstream.p;
import com.google.android.exoplayer2.util.v;
import com.openx.view.mraid.JSInterface;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: HlsPlaylistParser.java */
/* loaded from: classes2.dex */
public final class d implements p.a<c> {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3356a = Pattern.compile("BANDWIDTH=(\\d+)\\b");
    private static final Pattern b = Pattern.compile("CODECS=\"(.+?)\"");
    private static final Pattern c = Pattern.compile("RESOLUTION=(\\d+x\\d+)");
    private static final Pattern d = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
    private static final Pattern e = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
    private static final Pattern f = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");
    private static final Pattern g = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    private static final Pattern h = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    private static final Pattern i = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    private static final Pattern j = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    private static final Pattern k = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    private static final Pattern l = Pattern.compile("METHOD=(NONE|AES-128)");
    private static final Pattern m = Pattern.compile("URI=\"(.+?)\"");
    private static final Pattern n = Pattern.compile("IV=([^,.*]+)");
    private static final Pattern o = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    private static final Pattern p = Pattern.compile("LANGUAGE=\"(.+?)\"");
    private static final Pattern q = Pattern.compile("NAME=\"(.+?)\"");
    private static final Pattern r = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    private static final Pattern s = b("AUTOSELECT");
    private static final Pattern t = b("DEFAULT");
    private static final Pattern u = b("FORCED");

    @Override // com.google.android.exoplayer2.upstream.p.a
    /* renamed from: a */
    public c b(Uri uri, InputStream inputStream) throws IOException {
        String trim;
        c a2;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        LinkedList linkedList = new LinkedList();
        try {
            if (!a(bufferedReader)) {
                throw new UnrecognizedInputFormatException("Input does not start with the #EXTM3U header.", uri);
            }
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    v.a(bufferedReader);
                    throw new ParserException("Failed to parse the playlist, could not identify any tags.");
                }
                trim = readLine.trim();
                if (!trim.isEmpty()) {
                    if (trim.startsWith("#EXT-X-STREAM-INF")) {
                        linkedList.add(trim);
                        a2 = a(new a(linkedList, bufferedReader), uri.toString());
                        break;
                    } else if (trim.startsWith("#EXT-X-TARGETDURATION") || trim.startsWith("#EXT-X-MEDIA-SEQUENCE") || trim.startsWith("#EXTINF") || trim.startsWith("#EXT-X-KEY") || trim.startsWith("#EXT-X-BYTERANGE") || trim.equals("#EXT-X-DISCONTINUITY") || trim.equals("#EXT-X-DISCONTINUITY-SEQUENCE") || trim.equals("#EXT-X-ENDLIST")) {
                        break;
                    } else {
                        linkedList.add(trim);
                    }
                }
            }
            linkedList.add(trim);
            a2 = b(new a(linkedList, bufferedReader), uri.toString());
            return a2;
        } finally {
            v.a(bufferedReader);
        }
    }

    private static boolean a(BufferedReader bufferedReader) throws IOException {
        int read = bufferedReader.read();
        if (read == 239) {
            if (bufferedReader.read() != 187 || bufferedReader.read() != 191) {
                return false;
            }
            read = bufferedReader.read();
        }
        int a2 = a(bufferedReader, true, read);
        int length = "#EXTM3U".length();
        int i2 = a2;
        for (int i3 = 0; i3 < length; i3++) {
            if (i2 != "#EXTM3U".charAt(i3)) {
                return false;
            }
            i2 = bufferedReader.read();
        }
        return v.a(a(bufferedReader, false, i2));
    }

    private static int a(BufferedReader bufferedReader, boolean z, int i2) throws IOException {
        while (i2 != -1 && Character.isWhitespace(i2) && (z || !v.a(i2))) {
            i2 = bufferedReader.read();
        }
        return i2;
    }

    private static com.google.android.exoplayer2.source.b.a.a a(a aVar, String str) throws IOException {
        String str2;
        int parseInt;
        Format format;
        int i2;
        int i3;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Format format2 = null;
        ArrayList arrayList4 = new ArrayList();
        while (aVar.a()) {
            String b2 = aVar.b();
            if (b2.startsWith("#EXT-X-MEDIA")) {
                int a2 = a(b2);
                String d2 = d(b2, m);
                String a3 = a(b2, q);
                String d3 = d(b2, p);
                String a4 = a(b2, o);
                char c2 = 65535;
                switch (a4.hashCode()) {
                    case -959297733:
                        if (a4.equals("SUBTITLES")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case -333210994:
                        if (a4.equals("CLOSED-CAPTIONS")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case 62628790:
                        if (a4.equals("AUDIO")) {
                            c2 = 0;
                            break;
                        }
                        break;
                }
                switch (c2) {
                    case 0:
                        format = Format.a(a3, "application/x-mpegURL", (String) null, (String) null, -1, -1, -1, (List<byte[]>) null, a2, d3);
                        if (d2 != null) {
                            arrayList2.add(new a.C0139a(d2, format));
                            format = format2;
                            break;
                        }
                        break;
                    case 1:
                        arrayList3.add(new a.C0139a(d2, Format.a(a3, "application/x-mpegURL", "text/vtt", (String) null, -1, a2, d3)));
                        format = format2;
                        break;
                    case 2:
                        String a5 = a(b2, r);
                        if (a5.startsWith("CC")) {
                            str2 = "application/cea-608";
                            parseInt = Integer.parseInt(a5.substring(2));
                        } else {
                            str2 = "application/cea-708";
                            parseInt = Integer.parseInt(a5.substring(7));
                        }
                        arrayList4.add(Format.a(a3, (String) null, str2, (String) null, -1, a2, d3, parseInt));
                        format = format2;
                        break;
                    default:
                        format = format2;
                        break;
                }
                format2 = format;
            } else if (b2.startsWith("#EXT-X-STREAM-INF")) {
                int b3 = b(b2, f3356a);
                String d4 = d(b2, b);
                String d5 = d(b2, c);
                if (d5 != null) {
                    String[] split = d5.split(JSInterface.JSON_X);
                    int parseInt2 = Integer.parseInt(split[0]);
                    int parseInt3 = Integer.parseInt(split[1]);
                    if (parseInt2 <= 0 || parseInt3 <= 0) {
                        parseInt2 = -1;
                        parseInt3 = -1;
                    }
                    i3 = parseInt3;
                    i2 = parseInt2;
                } else {
                    i2 = -1;
                    i3 = -1;
                }
                arrayList.add(new a.C0139a(aVar.b(), Format.a(Integer.toString(arrayList.size()), "application/x-mpegURL", (String) null, d4, b3, i2, i3, -1.0f, (List<byte[]>) null, 0)));
            }
        }
        return new com.google.android.exoplayer2.source.b.a.a(str, arrayList, arrayList2, arrayList3, format2, arrayList4);
    }

    private static int a(String str) {
        int i2 = 0;
        int i3 = (a(str, t, false) ? 1 : 0) | (a(str, u, false) ? 2 : 0);
        if (a(str, s, false)) {
            i2 = 4;
        }
        return i3 | i2;
    }

    private static b b(a aVar, String str) throws IOException {
        int i2;
        long j2;
        String str2;
        String str3;
        String hexString;
        b.a aVar2 = null;
        ArrayList arrayList = new ArrayList();
        long j3 = 0;
        long j4 = -1;
        boolean z = false;
        String str4 = null;
        long j5 = -9223372036854775807L;
        int i3 = 1;
        int i4 = 0;
        long j6 = -9223372036854775807L;
        int i5 = 0;
        int i6 = 0;
        boolean z2 = false;
        long j7 = 0;
        long j8 = 0;
        long j9 = 0;
        boolean z3 = false;
        int i7 = 0;
        String str5 = null;
        int i8 = 0;
        while (aVar.a()) {
            String b2 = aVar.b();
            if (b2.startsWith("#EXT-X-PLAYLIST-TYPE")) {
                String a2 = a(b2, f);
                if ("VOD".equals(a2)) {
                    i2 = 1;
                } else if ("EVENT".equals(a2)) {
                    i2 = 2;
                } else {
                    throw new ParserException("Illegal playlist type: " + a2);
                }
                i5 = i2;
            } else if (b2.startsWith("#EXT-X-START")) {
                j6 = (long) (c(b2, i) * 1000000.0d);
            } else if (b2.startsWith("#EXT-X-MAP")) {
                String a3 = a(b2, m);
                String d2 = d(b2, k);
                if (d2 != null) {
                    String[] split = d2.split("@");
                    j2 = Long.parseLong(split[0]);
                    if (split.length > 1) {
                        j3 = Long.parseLong(split[1]);
                    }
                } else {
                    j2 = j4;
                }
                b.a aVar3 = new b.a(a3, j3, j2);
                j3 = 0;
                j4 = -1;
                aVar2 = aVar3;
            } else if (b2.startsWith("#EXT-X-TARGETDURATION")) {
                j5 = b(b2, d) * 1000000;
            } else if (b2.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                int b3 = b(b2, g);
                i8 = b3;
                i4 = b3;
            } else if (b2.startsWith("#EXT-X-VERSION")) {
                i3 = b(b2, e);
            } else if (b2.startsWith("#EXTINF")) {
                j7 = (long) (c(b2, h) * 1000000.0d);
            } else if (b2.startsWith("#EXT-X-KEY")) {
                z = "AES-128".equals(a(b2, l));
                if (z) {
                    str2 = a(b2, m);
                    str3 = d(b2, n);
                } else {
                    str2 = null;
                    str3 = null;
                }
                str5 = str3;
                str4 = str2;
            } else if (b2.startsWith("#EXT-X-BYTERANGE")) {
                String[] split2 = a(b2, j).split("@");
                j4 = Long.parseLong(split2[0]);
                j3 = split2.length > 1 ? Long.parseLong(split2[1]) : j3;
            } else if (b2.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                i6 = Integer.parseInt(b2.substring(b2.indexOf(58) + 1));
                z2 = true;
            } else if (b2.equals("#EXT-X-DISCONTINUITY")) {
                i7++;
            } else if (b2.startsWith("#EXT-X-PROGRAM-DATE-TIME")) {
                if (j9 == 0) {
                    j9 = com.google.android.exoplayer2.b.b(v.f(b2.substring(b2.indexOf(58) + 1))) - j8;
                }
            } else if (!b2.startsWith("#")) {
                if (!z) {
                    hexString = null;
                } else {
                    hexString = str5 != null ? str5 : Integer.toHexString(i8);
                }
                int i9 = i8 + 1;
                long j10 = j4 == -1 ? 0L : j3;
                arrayList.add(new b.a(b2, j7, i7, j8, z, str4, hexString, j10, j4));
                long j11 = j8 + j7;
                long j12 = j4 != -1 ? j10 + j4 : j10;
                j4 = -1;
                i8 = i9;
                j8 = j11;
                j7 = 0;
                j3 = j12;
            } else if (b2.equals("#EXT-X-ENDLIST")) {
                z3 = true;
            }
        }
        return new b(i5, str, j6, j9, z2, i6, i4, i3, j5, z3, j9 != 0, aVar2, arrayList);
    }

    private static String a(String str, Pattern pattern) throws ParserException {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find() && matcher.groupCount() == 1) {
            return matcher.group(1);
        }
        throw new ParserException("Couldn't match " + pattern.pattern() + " in " + str);
    }

    private static int b(String str, Pattern pattern) throws ParserException {
        return Integer.parseInt(a(str, pattern));
    }

    private static double c(String str, Pattern pattern) throws ParserException {
        return Double.parseDouble(a(str, pattern));
    }

    private static String d(String str, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    private static boolean a(String str, Pattern pattern, boolean z) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return matcher.group(1).equals("YES");
        }
        return z;
    }

    private static Pattern b(String str) {
        return Pattern.compile(str + "=(NO|YES)");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HlsPlaylistParser.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final BufferedReader f3357a;
        private final Queue<String> b;
        private String c;

        public a(Queue<String> queue, BufferedReader bufferedReader) {
            this.b = queue;
            this.f3357a = bufferedReader;
        }

        public boolean a() throws IOException {
            if (this.c != null) {
                return true;
            }
            if (!this.b.isEmpty()) {
                this.c = this.b.poll();
                return true;
            }
            do {
                String readLine = this.f3357a.readLine();
                this.c = readLine;
                if (readLine != null) {
                    this.c = this.c.trim();
                } else {
                    return false;
                }
            } while (this.c.isEmpty());
            return true;
        }

        public String b() throws IOException {
            if (a()) {
                String str = this.c;
                this.c = null;
                return str;
            }
            return null;
        }
    }
}
