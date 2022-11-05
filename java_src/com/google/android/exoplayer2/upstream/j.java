package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.net.Uri;
import com.facebook.common.util.UriUtil;
import com.google.android.exoplayer2.util.v;
import java.io.IOException;
/* compiled from: DefaultDataSource.java */
/* loaded from: classes2.dex */
public final class j implements e {

    /* renamed from: a  reason: collision with root package name */
    private final e f3493a;
    private final e b;
    private final e c;
    private final e d;
    private e e;

    public j(Context context, r<? super e> rVar, e eVar) {
        this.f3493a = (e) com.google.android.exoplayer2.util.a.a(eVar);
        this.b = new FileDataSource(rVar);
        this.c = new AssetDataSource(context, rVar);
        this.d = new ContentDataSource(context, rVar);
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public long a(g gVar) throws IOException {
        com.google.android.exoplayer2.util.a.b(this.e == null);
        String scheme = gVar.f3489a.getScheme();
        if (v.a(gVar.f3489a)) {
            if (gVar.f3489a.getPath().startsWith("/android_asset/")) {
                this.e = this.c;
            } else {
                this.e = this.b;
            }
        } else if (UriUtil.LOCAL_ASSET_SCHEME.equals(scheme)) {
            this.e = this.c;
        } else if ("content".equals(scheme)) {
            this.e = this.d;
        } else {
            this.e = this.f3493a;
        }
        return this.e.a(gVar);
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public int a(byte[] bArr, int i, int i2) throws IOException {
        return this.e.a(bArr, i, i2);
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public Uri b() {
        if (this.e == null) {
            return null;
        }
        return this.e.b();
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public void a() throws IOException {
        if (this.e != null) {
            try {
                this.e.a();
            } finally {
                this.e = null;
            }
        }
    }
}
