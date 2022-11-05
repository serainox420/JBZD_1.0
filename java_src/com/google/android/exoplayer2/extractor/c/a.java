package com.google.android.exoplayer2.extractor.c;

import com.google.android.exoplayer2.util.v;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: Atom.java */
/* loaded from: classes2.dex */
abstract class a {
    public final int aP;

    /* renamed from: a  reason: collision with root package name */
    public static final int f3215a = v.g("ftyp");
    public static final int b = v.g("avc1");
    public static final int c = v.g("avc3");
    public static final int d = v.g("hvc1");
    public static final int e = v.g("hev1");
    public static final int f = v.g("s263");
    public static final int g = v.g("d263");
    public static final int h = v.g("mdat");
    public static final int i = v.g("mp4a");
    public static final int j = v.g(".mp3");
    public static final int k = v.g("wave");
    public static final int l = v.g("lpcm");
    public static final int m = v.g("sowt");
    public static final int n = v.g("ac-3");
    public static final int o = v.g("dac3");
    public static final int p = v.g("ec-3");
    public static final int q = v.g("dec3");
    public static final int r = v.g("dtsc");
    public static final int s = v.g("dtsh");
    public static final int t = v.g("dtsl");
    public static final int u = v.g("dtse");
    public static final int v = v.g("ddts");
    public static final int w = v.g("tfdt");
    public static final int x = v.g("tfhd");
    public static final int y = v.g("trex");
    public static final int z = v.g("trun");
    public static final int A = v.g("sidx");
    public static final int B = v.g("moov");
    public static final int C = v.g("mvhd");
    public static final int D = v.g("trak");
    public static final int E = v.g("mdia");
    public static final int F = v.g("minf");
    public static final int G = v.g("stbl");
    public static final int H = v.g("avcC");
    public static final int I = v.g("hvcC");
    public static final int J = v.g("esds");
    public static final int K = v.g("moof");
    public static final int L = v.g("traf");
    public static final int M = v.g("mvex");
    public static final int N = v.g("mehd");
    public static final int O = v.g("tkhd");
    public static final int P = v.g("edts");
    public static final int Q = v.g("elst");
    public static final int R = v.g("mdhd");
    public static final int S = v.g("hdlr");
    public static final int T = v.g("stsd");
    public static final int U = v.g("pssh");
    public static final int V = v.g("sinf");
    public static final int W = v.g("schm");
    public static final int X = v.g("schi");
    public static final int Y = v.g("tenc");
    public static final int Z = v.g("encv");
    public static final int aa = v.g("enca");
    public static final int ab = v.g("frma");
    public static final int ac = v.g("saiz");
    public static final int ad = v.g("saio");
    public static final int ae = v.g("sbgp");
    public static final int af = v.g("sgpd");
    public static final int ag = v.g("uuid");
    public static final int ah = v.g("senc");
    public static final int ai = v.g("pasp");
    public static final int aj = v.g("TTML");
    public static final int ak = v.g("vmhd");
    public static final int al = v.g("mp4v");
    public static final int am = v.g("stts");
    public static final int an = v.g("stss");
    public static final int ao = v.g("ctts");
    public static final int ap = v.g("stsc");
    public static final int aq = v.g("stsz");
    public static final int ar = v.g("stz2");
    public static final int as = v.g("stco");
    public static final int at = v.g("co64");
    public static final int au = v.g("tx3g");
    public static final int av = v.g("wvtt");
    public static final int aw = v.g("stpp");
    public static final int ax = v.g("c608");
    public static final int ay = v.g("samr");
    public static final int az = v.g("sawb");
    public static final int aA = v.g("udta");
    public static final int aB = v.g("meta");
    public static final int aC = v.g("ilst");
    public static final int aD = v.g("mean");
    public static final int aE = v.g("name");
    public static final int aF = v.g("data");
    public static final int aG = v.g("emsg");
    public static final int aH = v.g("st3d");
    public static final int aI = v.g("sv3d");
    public static final int aJ = v.g("proj");
    public static final int aK = v.g("vp08");
    public static final int aL = v.g("vp09");
    public static final int aM = v.g("vpcC");
    public static final int aN = v.g("camm");
    public static final int aO = v.g("alac");

    public a(int i2) {
        this.aP = i2;
    }

    public String toString() {
        return c(this.aP);
    }

    /* compiled from: Atom.java */
    /* loaded from: classes2.dex */
    static final class b extends a {
        public final com.google.android.exoplayer2.util.l aQ;

        public b(int i, com.google.android.exoplayer2.util.l lVar) {
            super(i);
            this.aQ = lVar;
        }
    }

    /* compiled from: Atom.java */
    /* renamed from: com.google.android.exoplayer2.extractor.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static final class C0133a extends a {
        public final long aQ;
        public final List<b> aR;
        public final List<C0133a> aS;

        public C0133a(int i, long j) {
            super(i);
            this.aQ = j;
            this.aR = new ArrayList();
            this.aS = new ArrayList();
        }

        public void a(b bVar) {
            this.aR.add(bVar);
        }

        public void a(C0133a c0133a) {
            this.aS.add(c0133a);
        }

        public b d(int i) {
            int size = this.aR.size();
            for (int i2 = 0; i2 < size; i2++) {
                b bVar = this.aR.get(i2);
                if (bVar.aP == i) {
                    return bVar;
                }
            }
            return null;
        }

        public C0133a e(int i) {
            int size = this.aS.size();
            for (int i2 = 0; i2 < size; i2++) {
                C0133a c0133a = this.aS.get(i2);
                if (c0133a.aP == i) {
                    return c0133a;
                }
            }
            return null;
        }

        @Override // com.google.android.exoplayer2.extractor.c.a
        public String toString() {
            return c(this.aP) + " leaves: " + Arrays.toString(this.aR.toArray()) + " containers: " + Arrays.toString(this.aS.toArray());
        }
    }

    public static int a(int i2) {
        return (i2 >> 24) & 255;
    }

    public static int b(int i2) {
        return 16777215 & i2;
    }

    public static String c(int i2) {
        return "" + ((char) ((i2 >> 24) & 255)) + ((char) ((i2 >> 16) & 255)) + ((char) ((i2 >> 8) & 255)) + ((char) (i2 & 255));
    }
}
