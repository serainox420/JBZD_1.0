package com.revmob.ads.banner.a;

import android.graphics.Bitmap;
import android.view.animation.Animation;
import com.revmob.ads.a.d;
/* loaded from: classes3.dex */
public final class b extends com.revmob.client.a {
    private Bitmap h;
    private String i;
    private String j;
    private String k;
    private d l;
    private d m;
    private String n;

    public b(String str, String str2, String str3, boolean z, Bitmap bitmap, String str4, String str5, String str6, d dVar, d dVar2, String str7, boolean z2, String str8) {
        super(str, str2, str3, z, str7, z2);
        this.h = bitmap;
        this.i = str4;
        this.j = str5;
        this.k = str6;
        this.l = dVar;
        this.m = dVar2;
        this.n = str8;
        this.e = "banner";
    }

    public final String a() {
        return this.i;
    }

    public final void a(String str) {
        this.j = str;
    }

    public final Bitmap b() {
        return this.h;
    }

    @Override // com.revmob.client.a
    public final String c() {
        return this.j;
    }

    public final String d() {
        return this.k;
    }

    public final boolean e() {
        return this.i != null;
    }

    public final boolean f() {
        return (this.j == null && this.k == null) ? false : true;
    }

    public final Animation g() {
        return this.l.k();
    }

    public final Animation h() {
        return this.m.k();
    }

    public final String i() {
        return this.n;
    }
}
