package com.revmob.ads.interstitial.a;

import android.graphics.Bitmap;
import android.view.animation.Animation;
import com.facebook.internal.AnalyticsEvents;
import com.revmob.RevMobAdsListener;
import com.revmob.ads.a.d;
import java.io.File;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes3.dex */
public final class b extends com.revmob.client.a {
    private static HashMap h = new HashMap();
    private String A;
    private String B;
    private String C;
    private d D;
    private d E;
    private int F;
    private int G;
    private int H;
    private int I;
    private int J;
    private int K;
    private int L;
    private int M;
    private int N;
    private int O;
    private int P;
    private int Q;
    private int R;
    private int S;
    private double T;
    private double U;
    private double V;
    private double W;
    private double X;
    private double Y;
    private File Z;
    private ArrayList aa;
    private ArrayList ab;
    private RevMobAdsListener ac;
    private Bitmap i;
    private Bitmap j;
    private Bitmap k;
    private Bitmap l;
    private Bitmap m;
    private Bitmap n;
    private Bitmap o;
    private Bitmap p;
    private Bitmap q;
    private Bitmap r;
    private Bitmap s;
    private Bitmap t;
    private Bitmap u;
    private String v;
    private String w;
    private String x;
    private String y;
    private String z;

    public b(String str, String str2, String str3, boolean z, RevMobAdsListener revMobAdsListener, String str4, String str5, String str6, String str7, Bitmap bitmap, Bitmap bitmap2, Bitmap bitmap3, d dVar, d dVar2, String str8, boolean z2, String str9, int i, double d, int i2, String str10, Bitmap bitmap4, Bitmap bitmap5, File file, Bitmap bitmap6, Bitmap bitmap7, ArrayList arrayList, ArrayList arrayList2, Bitmap bitmap8, Bitmap bitmap9, int i3, int i4, Bitmap bitmap10, Bitmap bitmap11, Bitmap bitmap12, double d2, double d3, double d4, double d5, String str11, String str12, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, double d6, int i14, Bitmap bitmap13) {
        super(str, str2, str3, z, str8, z2);
        this.l = null;
        this.m = null;
        this.F = 0;
        this.ac = revMobAdsListener;
        this.w = str5;
        this.v = str4;
        this.x = str6;
        this.y = str7;
        this.j = bitmap3;
        this.k = bitmap2;
        this.l = bitmap8;
        this.m = bitmap9;
        this.I = i3;
        this.H = i4;
        this.i = bitmap;
        this.D = dVar;
        this.E = dVar2;
        this.z = str9;
        this.F = i;
        this.T = d;
        this.p = bitmap7;
        this.o = bitmap6;
        this.u = bitmap13;
        this.G = i2;
        this.A = str10;
        this.n = bitmap4;
        this.q = bitmap5;
        this.Z = file;
        this.aa = arrayList;
        this.ab = arrayList2;
        this.r = bitmap10;
        this.s = bitmap11;
        this.U = d2;
        this.V = d3;
        this.t = bitmap12;
        this.W = d4;
        this.X = d5;
        this.B = str11;
        this.J = i5;
        this.K = i6;
        this.L = i7;
        this.M = i8;
        this.C = str12;
        this.N = i9;
        this.O = i10;
        this.P = i11;
        this.Q = i12;
        this.R = i13;
        this.Y = d6;
        this.S = i14;
        this.e = "fullscreen";
        if (this.A != null) {
            this.e = AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO;
        }
        if (this.r != null) {
            this.e = "rewardedVideo";
        }
    }

    public static b a(String str) {
        return (b) ((SoftReference) h.get(str)).get();
    }

    public static void a(b bVar) {
        h.put(bVar.f, new SoftReference(bVar));
    }

    public static void b(b bVar) {
        if (bVar != null) {
            h.remove(bVar.f);
        }
    }

    public final double A() {
        return this.W;
    }

    public final double B() {
        return this.X;
    }

    public final Bitmap C() {
        return this.r;
    }

    public final Bitmap D() {
        return this.s;
    }

    public final Bitmap E() {
        return this.t;
    }

    public final String F() {
        return this.B;
    }

    public final String G() {
        return this.C;
    }

    public final int H() {
        return this.J;
    }

    public final int I() {
        return this.K;
    }

    public final int J() {
        return this.L;
    }

    public final int K() {
        return this.M;
    }

    public final int L() {
        return this.N;
    }

    public final int M() {
        return this.O;
    }

    public final int N() {
        return this.P;
    }

    public final int O() {
        return this.Q;
    }

    public final int P() {
        return this.R;
    }

    public final double Q() {
        return this.Y;
    }

    public final int R() {
        return this.S;
    }

    public final Bitmap S() {
        return this.u;
    }

    public final Bitmap a(int i) {
        return (i != 2 || this.k == null) ? (i != 1 || this.j == null) ? this.i : this.j : this.k;
    }

    public final String a() {
        return this.w;
    }

    public final Bitmap b(int i) {
        return i == 2 ? this.m : this.l;
    }

    public final String b() {
        return this.v;
    }

    public final void b(String str) {
        this.x = str;
    }

    @Override // com.revmob.client.a
    public final String c() {
        return this.x;
    }

    public final String d() {
        return this.y;
    }

    public final RevMobAdsListener e() {
        return this.ac;
    }

    public final boolean f() {
        return (this.v == null && this.w == null) ? false : true;
    }

    public final boolean g() {
        return (this.x == null && this.y == null) ? false : true;
    }

    public final boolean h() {
        return (this.j == null || this.k == null) ? false : true;
    }

    public final Animation i() {
        return this.D.k();
    }

    public final Animation j() {
        return this.E.k();
    }

    public final int k() {
        return this.F;
    }

    public final String l() {
        return this.z;
    }

    public final double m() {
        return this.T;
    }

    public final int n() {
        return this.G;
    }

    public final String o() {
        return this.A;
    }

    public final Bitmap p() {
        return this.n;
    }

    public final Bitmap q() {
        return this.q;
    }

    public final File r() {
        return this.Z;
    }

    public final Bitmap s() {
        return this.o;
    }

    public final Bitmap t() {
        return this.p;
    }

    public final ArrayList u() {
        return this.aa;
    }

    public final ArrayList v() {
        return this.ab;
    }

    public final int w() {
        return this.H;
    }

    public final int x() {
        return this.I;
    }

    public final double y() {
        return this.U;
    }

    public final double z() {
        return this.V;
    }
}
