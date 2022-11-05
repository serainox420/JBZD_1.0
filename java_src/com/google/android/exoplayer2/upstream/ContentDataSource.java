package com.google.android.exoplayer2.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public final class ContentDataSource implements e {

    /* renamed from: a  reason: collision with root package name */
    private final ContentResolver f3468a;
    private final r<? super ContentDataSource> b;
    private Uri c;
    private AssetFileDescriptor d;
    private InputStream e;
    private long f;
    private boolean g;

    /* loaded from: classes2.dex */
    public static class ContentDataSourceException extends IOException {
        public ContentDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public ContentDataSource(Context context, r<? super ContentDataSource> rVar) {
        this.f3468a = context.getContentResolver();
        this.b = rVar;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public long a(g gVar) throws ContentDataSourceException {
        try {
            this.c = gVar.f3489a;
            this.d = this.f3468a.openAssetFileDescriptor(this.c, "r");
            this.e = new FileInputStream(this.d.getFileDescriptor());
            if (this.e.skip(gVar.d) < gVar.d) {
                throw new EOFException();
            }
            if (gVar.e != -1) {
                this.f = gVar.e;
            } else {
                this.f = this.e.available();
                if (this.f == 0) {
                    this.f = -1L;
                }
            }
            this.g = true;
            if (this.b != null) {
                this.b.a((r<? super ContentDataSource>) this, gVar);
            }
            return this.f;
        } catch (IOException e) {
            throw new ContentDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public int a(byte[] bArr, int i, int i2) throws ContentDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.f == 0) {
            return -1;
        }
        try {
            if (this.f != -1) {
                i2 = (int) Math.min(this.f, i2);
            }
            int read = this.e.read(bArr, i, i2);
            if (read == -1) {
                if (this.f == -1) {
                    return -1;
                }
                throw new ContentDataSourceException(new EOFException());
            }
            if (this.f != -1) {
                this.f -= read;
            }
            if (this.b != null) {
                this.b.a((r<? super ContentDataSource>) this, read);
            }
            return read;
        } catch (IOException e) {
            throw new ContentDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public Uri b() {
        return this.c;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public void a() throws ContentDataSourceException {
        boolean z;
        this.c = null;
        try {
            try {
                if (this.e != null) {
                    this.e.close();
                }
                this.e = null;
                try {
                    try {
                        if (this.d != null) {
                            this.d.close();
                        }
                        if (!z) {
                            return;
                        }
                    } catch (IOException e) {
                        throw new ContentDataSourceException(e);
                    }
                } finally {
                    this.d = null;
                    if (this.g) {
                        this.g = false;
                        if (this.b != null) {
                            this.b.a(this);
                        }
                    }
                }
            } catch (IOException e2) {
                throw new ContentDataSourceException(e2);
            }
        } catch (Throwable th) {
            this.e = null;
            try {
                try {
                    if (this.d != null) {
                        this.d.close();
                    }
                    this.d = null;
                    if (this.g) {
                        this.g = false;
                        if (this.b != null) {
                            this.b.a(this);
                        }
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new ContentDataSourceException(e3);
                }
            } finally {
                this.d = null;
                if (this.g) {
                    this.g = false;
                    if (this.b != null) {
                        this.b.a(this);
                    }
                }
            }
        }
    }
}
