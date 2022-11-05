package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public final class AssetDataSource implements e {

    /* renamed from: a  reason: collision with root package name */
    private final AssetManager f3467a;
    private final r<? super AssetDataSource> b;
    private Uri c;
    private InputStream d;
    private long e;
    private boolean f;

    /* loaded from: classes2.dex */
    public static final class AssetDataSourceException extends IOException {
        public AssetDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public AssetDataSource(Context context, r<? super AssetDataSource> rVar) {
        this.f3467a = context.getAssets();
        this.b = rVar;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public long a(g gVar) throws AssetDataSourceException {
        try {
            this.c = gVar.f3489a;
            String path = this.c.getPath();
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith("/")) {
                path = path.substring(1);
            }
            this.d = this.f3467a.open(path, 1);
            if (this.d.skip(gVar.d) < gVar.d) {
                throw new EOFException();
            }
            if (gVar.e != -1) {
                this.e = gVar.e;
            } else {
                this.e = this.d.available();
                if (this.e == 2147483647L) {
                    this.e = -1L;
                }
            }
            this.f = true;
            if (this.b != null) {
                this.b.a((r<? super AssetDataSource>) this, gVar);
            }
            return this.e;
        } catch (IOException e) {
            throw new AssetDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public int a(byte[] bArr, int i, int i2) throws AssetDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.e == 0) {
            return -1;
        }
        try {
            if (this.e != -1) {
                i2 = (int) Math.min(this.e, i2);
            }
            int read = this.d.read(bArr, i, i2);
            if (read == -1) {
                if (this.e == -1) {
                    return -1;
                }
                throw new AssetDataSourceException(new EOFException());
            }
            if (this.e != -1) {
                this.e -= read;
            }
            if (this.b != null) {
                this.b.a((r<? super AssetDataSource>) this, read);
            }
            return read;
        } catch (IOException e) {
            throw new AssetDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public Uri b() {
        return this.c;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public void a() throws AssetDataSourceException {
        boolean z;
        this.c = null;
        try {
            try {
                if (this.d != null) {
                    this.d.close();
                }
                if (!z) {
                    return;
                }
            } catch (IOException e) {
                throw new AssetDataSourceException(e);
            }
        } finally {
            this.d = null;
            if (this.f) {
                this.f = false;
                if (this.b != null) {
                    this.b.a(this);
                }
            }
        }
    }
}
