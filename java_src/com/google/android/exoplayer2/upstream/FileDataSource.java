package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes2.dex */
public final class FileDataSource implements e {

    /* renamed from: a  reason: collision with root package name */
    private final r<? super FileDataSource> f3469a;
    private RandomAccessFile b;
    private Uri c;
    private long d;
    private boolean e;

    /* loaded from: classes2.dex */
    public static class FileDataSourceException extends IOException {
        public FileDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public FileDataSource() {
        this(null);
    }

    public FileDataSource(r<? super FileDataSource> rVar) {
        this.f3469a = rVar;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public long a(g gVar) throws FileDataSourceException {
        try {
            this.c = gVar.f3489a;
            this.b = new RandomAccessFile(gVar.f3489a.getPath(), "r");
            this.b.seek(gVar.d);
            this.d = gVar.e == -1 ? this.b.length() - gVar.d : gVar.e;
            if (this.d < 0) {
                throw new EOFException();
            }
            this.e = true;
            if (this.f3469a != null) {
                this.f3469a.a((r<? super FileDataSource>) this, gVar);
            }
            return this.d;
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public int a(byte[] bArr, int i, int i2) throws FileDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.d == 0) {
            return -1;
        }
        try {
            int read = this.b.read(bArr, i, (int) Math.min(this.d, i2));
            if (read > 0) {
                this.d -= read;
                if (this.f3469a != null) {
                    this.f3469a.a((r<? super FileDataSource>) this, read);
                    return read;
                }
                return read;
            }
            return read;
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public Uri b() {
        return this.c;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public void a() throws FileDataSourceException {
        boolean z;
        this.c = null;
        try {
            try {
                if (this.b != null) {
                    this.b.close();
                }
                if (!z) {
                    return;
                }
            } catch (IOException e) {
                throw new FileDataSourceException(e);
            }
        } finally {
            this.b = null;
            if (this.e) {
                this.e = false;
                if (this.f3469a != null) {
                    this.f3469a.a(this);
                }
            }
        }
    }
}
