package com.smaato.soma.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.drive.DriveFile;
import com.smaato.soma.AdType;
import com.smaato.soma.ErrorCode;
import com.smaato.soma.bannerutilities.constant.BannerStatus;
import com.smaato.soma.exception.OpeningLandingPageFailed;
import com.smaato.soma.internal.d.c;
import com.smaato.soma.mediation.CSMAdFormat;
import com.smaato.soma.mediation.o;
import com.smaato.soma.p;
import java.util.List;
import java.util.TreeMap;
/* compiled from: ReceivedBanner.java */
/* loaded from: classes3.dex */
public class b implements p {
    private String c;
    private AdType e;
    private CSMAdFormat f;
    private String g;
    private String h;
    private String j;
    private List<String> k;
    private String l;
    private String m;
    private String n;
    private boolean b = false;
    private BannerStatus d = BannerStatus.ERROR;
    private boolean i = false;

    /* renamed from: a  reason: collision with root package name */
    TreeMap<Integer, o> f4969a = new TreeMap<>();
    private ErrorCode o = ErrorCode.NO_ERROR;
    private String p = "";
    private c q = new c();
    private com.smaato.soma.internal.b.a r = new com.smaato.soma.internal.b.a();

    @Override // com.smaato.soma.p
    public String o() {
        return this.j;
    }

    @Override // com.smaato.soma.p
    public void a(String str) {
        this.j = str;
    }

    @Override // com.smaato.soma.p
    public boolean b() {
        return this.i;
    }

    @Override // com.smaato.soma.p
    public void a(boolean z) {
        this.i = z;
    }

    @Override // com.smaato.soma.p
    public CSMAdFormat c() {
        return this.f;
    }

    @Override // com.smaato.soma.p
    public void a(CSMAdFormat cSMAdFormat) {
        this.f = cSMAdFormat;
    }

    public final String q() {
        return this.c;
    }

    public final void b(String str) {
        this.c = str;
    }

    @Override // com.smaato.soma.p
    public final BannerStatus a() {
        return this.d;
    }

    @Override // com.smaato.soma.p
    public final void a(BannerStatus bannerStatus) {
        this.d = bannerStatus;
    }

    @Override // com.smaato.soma.p
    public final AdType d() {
        return this.e;
    }

    @Override // com.smaato.soma.p
    public final void a(AdType adType) {
        this.e = adType;
    }

    @Override // com.smaato.soma.p
    public final String e() {
        return this.g;
    }

    public final void c(String str) {
        this.g = str;
    }

    @Override // com.smaato.soma.p
    public final String f() {
        return this.h;
    }

    public final void d(String str) {
        this.h = str;
    }

    @Override // com.smaato.soma.p
    public final List<String> g() {
        return this.k;
    }

    public final void a(List<String> list) {
        this.k = list;
    }

    @Override // com.smaato.soma.p
    public final String h() {
        return this.l;
    }

    @Override // com.smaato.soma.p
    public final String i() {
        return this.m;
    }

    public final void e(String str) {
        this.m = str;
    }

    @Override // com.smaato.soma.p
    public final String j() {
        return this.n;
    }

    public final void f(String str) {
        this.n = str;
    }

    @Override // com.smaato.soma.p
    public final ErrorCode k() {
        return this.o;
    }

    @Override // com.smaato.soma.p
    public final void a(ErrorCode errorCode) {
        this.o = errorCode;
    }

    @Override // com.smaato.soma.p
    public final String l() {
        return this.p;
    }

    public final void g(String str) {
        this.p = str;
    }

    @Override // com.smaato.soma.p
    public final void a(Context context) throws OpeningLandingPageFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.b.1
            });
            if (!this.b && f() != null && f().length() > 0) {
                this.b = true;
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(f()));
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                context.getApplicationContext().startActivity(intent);
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new OpeningLandingPageFailed(e2);
        }
    }

    public void a(c cVar) {
        this.q = cVar;
    }

    @Override // com.smaato.soma.p
    public c m() {
        return this.q;
    }

    @Override // com.smaato.soma.p
    public void a(com.smaato.soma.internal.b.a aVar) {
        this.r = aVar;
    }

    @Override // com.smaato.soma.p
    public com.smaato.soma.internal.b.a n() {
        return this.r;
    }

    @Override // com.smaato.soma.p
    public void a(TreeMap<Integer, o> treeMap) {
        this.f4969a = treeMap;
    }

    @Override // com.smaato.soma.p
    public TreeMap<Integer, o> p() {
        return this.f4969a;
    }
}
