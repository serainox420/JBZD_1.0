package com.google.android.exoplayer2.upstream;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public final class RawResourceDataSource implements e {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f3475a;
    private final r<? super RawResourceDataSource> b;
    private Uri c;
    private AssetFileDescriptor d;
    private InputStream e;
    private long f;
    private boolean g;

    /* loaded from: classes2.dex */
    public static class RawResourceDataSourceException extends IOException {
        public RawResourceDataSourceException(String str) {
            super(str);
        }

        public RawResourceDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public long a(g gVar) throws RawResourceDataSourceException {
        long j = -1;
        try {
            this.c = gVar.f3489a;
            if (!TextUtils.equals("rawresource", this.c.getScheme())) {
                throw new RawResourceDataSourceException("URI must use scheme rawresource");
            }
            try {
                this.d = this.f3475a.openRawResourceFd(Integer.parseInt(this.c.getLastPathSegment()));
                this.e = new FileInputStream(this.d.getFileDescriptor());
                this.e.skip(this.d.getStartOffset());
                if (this.e.skip(gVar.d) < gVar.d) {
                    throw new EOFException();
                }
                if (gVar.e != -1) {
                    this.f = gVar.e;
                } else {
                    long length = this.d.getLength();
                    if (length != -1) {
                        j = length - gVar.d;
                    }
                    this.f = j;
                }
                this.g = true;
                if (this.b != null) {
                    this.b.a((r<? super RawResourceDataSource>) this, gVar);
                }
                return this.f;
            } catch (NumberFormatException e) {
                throw new RawResourceDataSourceException("Resource identifier must be an integer.");
            }
        } catch (IOException e2) {
            throw new RawResourceDataSourceException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public int a(byte[] bArr, int i, int i2) throws RawResourceDataSourceException {
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
                throw new RawResourceDataSourceException(new EOFException());
            }
            if (this.f != -1) {
                this.f -= read;
            }
            if (this.b != null) {
                this.b.a((r<? super RawResourceDataSource>) this, read);
            }
            return read;
        } catch (IOException e) {
            throw new RawResourceDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public Uri b() {
        return this.c;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public void a() throws RawResourceDataSourceException {
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
                        throw new RawResourceDataSourceException(e);
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
                throw new RawResourceDataSourceException(e2);
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
                    throw new RawResourceDataSourceException(e3);
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
