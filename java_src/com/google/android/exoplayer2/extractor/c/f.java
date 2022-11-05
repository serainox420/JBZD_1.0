package com.google.android.exoplayer2.extractor.c;

import android.util.Log;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.util.v;
/* compiled from: MetadataUtil.java */
/* loaded from: classes2.dex */
final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final int f3227a = v.g("nam");
    private static final int b = v.g("trk");
    private static final int c = v.g("cmt");
    private static final int d = v.g("day");
    private static final int e = v.g("ART");
    private static final int f = v.g("too");
    private static final int g = v.g("alb");
    private static final int h = v.g("com");
    private static final int i = v.g("wrt");
    private static final int j = v.g("lyr");
    private static final int k = v.g("gen");
    private static final int l = v.g("covr");
    private static final int m = v.g("gnre");
    private static final int n = v.g("grp");
    private static final int o = v.g("disk");
    private static final int p = v.g("trkn");
    private static final int q = v.g("tmpo");
    private static final int r = v.g("cpil");
    private static final int s = v.g("aART");
    private static final int t = v.g("sonm");
    private static final int u = v.g("soal");
    private static final int v = v.g("soar");
    private static final int w = v.g("soaa");
    private static final int x = v.g("soco");
    private static final int y = v.g("rtng");
    private static final int z = v.g("pgap");
    private static final int A = v.g("sosn");
    private static final int B = v.g("tvsh");
    private static final int C = v.g("----");
    private static final String[] D = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    public static Metadata.Entry a(com.google.android.exoplayer2.util.l lVar) {
        int m2 = lVar.m() + lVar.d();
        int m3 = lVar.m();
        int i2 = (m3 >> 24) & 255;
        try {
            if (i2 == 169 || i2 == 65533) {
                int i3 = 16777215 & m3;
                if (i3 == c) {
                    CommentFrame a2 = a(m3, lVar);
                    lVar.c(m2);
                    return a2;
                } else if (i3 == f3227a || i3 == b) {
                    return a(m3, "TIT2", lVar);
                } else {
                    if (i3 == h || i3 == i) {
                        return a(m3, "TCOM", lVar);
                    }
                    if (i3 == d) {
                        return a(m3, "TDRC", lVar);
                    }
                    if (i3 == e) {
                        return a(m3, "TPE1", lVar);
                    }
                    if (i3 == f) {
                        return a(m3, "TSSE", lVar);
                    }
                    if (i3 == g) {
                        return a(m3, "TALB", lVar);
                    }
                    if (i3 == j) {
                        return a(m3, "USLT", lVar);
                    }
                    if (i3 == k) {
                        return a(m3, "TCON", lVar);
                    }
                    if (i3 == n) {
                        return a(m3, "TIT1", lVar);
                    }
                }
            } else if (m3 == m) {
                return b(lVar);
            } else {
                if (m3 == o) {
                    return b(m3, "TPOS", lVar);
                }
                if (m3 == p) {
                    return b(m3, "TRCK", lVar);
                }
                if (m3 == q) {
                    return a(m3, "TBPM", lVar, true, false);
                }
                if (m3 == r) {
                    return a(m3, "TCMP", lVar, true, true);
                }
                if (m3 == l) {
                    return c(lVar);
                }
                if (m3 == s) {
                    return a(m3, "TPE2", lVar);
                }
                if (m3 == t) {
                    return a(m3, "TSOT", lVar);
                }
                if (m3 == u) {
                    return a(m3, "TSO2", lVar);
                }
                if (m3 == v) {
                    return a(m3, "TSOA", lVar);
                }
                if (m3 == w) {
                    return a(m3, "TSOP", lVar);
                }
                if (m3 == x) {
                    return a(m3, "TSOC", lVar);
                }
                if (m3 == y) {
                    return a(m3, "ITUNESADVISORY", lVar, false, false);
                }
                if (m3 == z) {
                    return a(m3, "ITUNESGAPLESS", lVar, false, true);
                }
                if (m3 == A) {
                    return a(m3, "TVSHOWSORT", lVar);
                }
                if (m3 == B) {
                    return a(m3, "TVSHOW", lVar);
                }
                if (m3 == C) {
                    return a(lVar, m2);
                }
            }
            Log.d("MetadataUtil", "Skipped unknown metadata entry: " + a.c(m3));
            return null;
        } finally {
            lVar.c(m2);
        }
    }

    private static TextInformationFrame a(int i2, String str, com.google.android.exoplayer2.util.l lVar) {
        int m2 = lVar.m();
        if (lVar.m() == a.aF) {
            lVar.d(8);
            return new TextInformationFrame(str, null, lVar.f(m2 - 16));
        }
        Log.w("MetadataUtil", "Failed to parse text attribute: " + a.c(i2));
        return null;
    }

    private static CommentFrame a(int i2, com.google.android.exoplayer2.util.l lVar) {
        int m2 = lVar.m();
        if (lVar.m() == a.aF) {
            lVar.d(8);
            String f2 = lVar.f(m2 - 16);
            return new CommentFrame("und", f2, f2);
        }
        Log.w("MetadataUtil", "Failed to parse comment attribute: " + a.c(i2));
        return null;
    }

    private static Id3Frame a(int i2, String str, com.google.android.exoplayer2.util.l lVar, boolean z2, boolean z3) {
        int d2 = d(lVar);
        int min = z3 ? Math.min(1, d2) : d2;
        if (min >= 0) {
            return z2 ? new TextInformationFrame(str, null, Integer.toString(min)) : new CommentFrame("und", str, Integer.toString(min));
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute: " + a.c(i2));
        return null;
    }

    private static TextInformationFrame b(int i2, String str, com.google.android.exoplayer2.util.l lVar) {
        int m2 = lVar.m();
        if (lVar.m() == a.aF && m2 >= 22) {
            lVar.d(10);
            int g2 = lVar.g();
            if (g2 > 0) {
                String str2 = "" + g2;
                int g3 = lVar.g();
                if (g3 > 0) {
                    str2 = str2 + "/" + g3;
                }
                return new TextInformationFrame(str, null, str2);
            }
        }
        Log.w("MetadataUtil", "Failed to parse index/count attribute: " + a.c(i2));
        return null;
    }

    private static TextInformationFrame b(com.google.android.exoplayer2.util.l lVar) {
        int d2 = d(lVar);
        String str = (d2 <= 0 || d2 > D.length) ? null : D[d2 - 1];
        if (str != null) {
            return new TextInformationFrame("TCON", null, str);
        }
        Log.w("MetadataUtil", "Failed to parse standard genre code");
        return null;
    }

    private static ApicFrame c(com.google.android.exoplayer2.util.l lVar) {
        String str;
        int m2 = lVar.m();
        if (lVar.m() == a.aF) {
            int b2 = a.b(lVar.m());
            if (b2 == 13) {
                str = "image/jpeg";
            } else {
                str = b2 == 14 ? "image/png" : null;
            }
            if (str == null) {
                Log.w("MetadataUtil", "Unrecognized cover art flags: " + b2);
                return null;
            }
            lVar.d(4);
            byte[] bArr = new byte[m2 - 16];
            lVar.a(bArr, 0, bArr.length);
            return new ApicFrame(str, null, 3, bArr);
        }
        Log.w("MetadataUtil", "Failed to parse cover art attribute");
        return null;
    }

    private static Id3Frame a(com.google.android.exoplayer2.util.l lVar, int i2) {
        int i3 = -1;
        int i4 = -1;
        String str = null;
        String str2 = null;
        while (lVar.d() < i2) {
            int d2 = lVar.d();
            int m2 = lVar.m();
            int m3 = lVar.m();
            lVar.d(4);
            if (m3 == a.aD) {
                str2 = lVar.f(m2 - 12);
            } else if (m3 == a.aE) {
                str = lVar.f(m2 - 12);
            } else {
                if (m3 == a.aF) {
                    i3 = m2;
                    i4 = d2;
                }
                lVar.d(m2 - 12);
            }
        }
        if (!"com.apple.iTunes".equals(str2) || !"iTunSMPB".equals(str) || i4 == -1) {
            return null;
        }
        lVar.c(i4);
        lVar.d(16);
        return new CommentFrame("und", str, lVar.f(i3 - 16));
    }

    private static int d(com.google.android.exoplayer2.util.l lVar) {
        lVar.d(4);
        if (lVar.m() == a.aF) {
            lVar.d(8);
            return lVar.f();
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }
}
