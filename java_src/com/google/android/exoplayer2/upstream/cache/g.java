package com.google.android.exoplayer2.upstream.cache;

import android.util.Log;
import android.util.SparseArray;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.util.p;
import com.google.android.exoplayer2.util.v;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Random;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: CachedContentIndex.java */
/* loaded from: classes2.dex */
final class g {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<String, f> f3484a;
    private final SparseArray<String> b;
    private final com.google.android.exoplayer2.util.b c;
    private final Cipher d;
    private final SecretKeySpec e;
    private boolean f;
    private p g;

    public g(File file, byte[] bArr) {
        if (bArr != null) {
            com.google.android.exoplayer2.util.a.a(bArr.length == 16);
            try {
                this.d = Cipher.getInstance("AES/CBC/PKCS5PADDING");
                this.e = new SecretKeySpec(bArr, "AES");
            } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
                throw new IllegalStateException(e);
            }
        } else {
            this.d = null;
            this.e = null;
        }
        this.f3484a = new HashMap<>();
        this.b = new SparseArray<>();
        this.c = new com.google.android.exoplayer2.util.b(new File(file, "cached_content_index.exi"));
    }

    public void a() {
        com.google.android.exoplayer2.util.a.b(!this.f);
        if (!e()) {
            this.c.a();
            this.f3484a.clear();
            this.b.clear();
        }
    }

    public void b() throws Cache.CacheException {
        if (this.f) {
            f();
            this.f = false;
        }
    }

    public f a(String str) {
        f fVar = this.f3484a.get(str);
        if (fVar == null) {
            return b(str, -1L);
        }
        return fVar;
    }

    public f b(String str) {
        return this.f3484a.get(str);
    }

    public Collection<f> c() {
        return this.f3484a.values();
    }

    public int c(String str) {
        return a(str).f3483a;
    }

    public String a(int i) {
        return this.b.get(i);
    }

    public void d(String str) {
        f remove = this.f3484a.remove(str);
        if (remove != null) {
            com.google.android.exoplayer2.util.a.b(remove.c());
            this.b.remove(remove.f3483a);
            this.f = true;
        }
    }

    public void d() {
        LinkedList linkedList = new LinkedList();
        for (f fVar : this.f3484a.values()) {
            if (fVar.c()) {
                linkedList.add(fVar.b);
            }
        }
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            d((String) it.next());
        }
    }

    public void a(String str, long j) {
        f b = b(str);
        if (b != null) {
            if (b.a() != j) {
                b.a(j);
                this.f = true;
                return;
            }
            return;
        }
        b(str, j);
    }

    public long e(String str) {
        f b = b(str);
        if (b == null) {
            return -1L;
        }
        return b.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean e() {
        DataInputStream dataInputStream;
        DataInputStream dataInputStream2;
        try {
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(this.c.c());
                dataInputStream = new DataInputStream(bufferedInputStream);
                try {
                    try {
                        if (dataInputStream.readInt() != 1) {
                            if (dataInputStream == null) {
                                return false;
                            }
                            v.a(dataInputStream);
                            return false;
                        }
                        if ((dataInputStream.readInt() & 1) != 0) {
                            if (this.d == null) {
                                if (dataInputStream == null) {
                                    return false;
                                }
                                v.a(dataInputStream);
                                return false;
                            }
                            byte[] bArr = new byte[16];
                            dataInputStream.readFully(bArr);
                            try {
                                this.d.init(2, this.e, new IvParameterSpec(bArr));
                                dataInputStream = new DataInputStream(new CipherInputStream(bufferedInputStream, this.d));
                            } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                                throw new IllegalStateException(e);
                            }
                        } else if (this.d != null) {
                            this.f = true;
                        }
                        try {
                            int readInt = dataInputStream.readInt();
                            int i = 0;
                            for (int i2 = 0; i2 < readInt; i2++) {
                                f fVar = new f(dataInputStream);
                                b(fVar);
                                i += fVar.d();
                            }
                            if (dataInputStream.readInt() == i) {
                                if (dataInputStream != null) {
                                    v.a(dataInputStream);
                                }
                                return true;
                            } else if (dataInputStream == null) {
                                return false;
                            } else {
                                v.a(dataInputStream);
                                return false;
                            }
                        } catch (FileNotFoundException e2) {
                            dataInputStream2 = dataInputStream;
                            if (dataInputStream2 == null) {
                                return false;
                            }
                            v.a(dataInputStream2);
                            return false;
                        }
                    } catch (FileNotFoundException e3) {
                        dataInputStream2 = dataInputStream;
                    }
                } catch (IOException e4) {
                    e = e4;
                    Log.e("CachedContentIndex", "Error reading cache content index file.", e);
                    if (dataInputStream == null) {
                        return false;
                    }
                    v.a(dataInputStream);
                    return false;
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    v.a((Closeable) null);
                }
                throw th;
            }
        } catch (FileNotFoundException e5) {
            dataInputStream2 = null;
        } catch (IOException e6) {
            e = e6;
            dataInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
            }
            throw th;
        }
    }

    private void f() throws Cache.CacheException {
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2 = null;
        int i = 0;
        int i2 = 1;
        try {
            OutputStream b = this.c.b();
            if (this.g == null) {
                this.g = new p(b);
            } else {
                this.g.a(b);
            }
            dataOutputStream = new DataOutputStream(this.g);
            try {
                try {
                    dataOutputStream.writeInt(1);
                    if (this.d == null) {
                        i2 = 0;
                    }
                    dataOutputStream.writeInt(i2);
                    if (this.d != null) {
                        byte[] bArr = new byte[16];
                        new Random().nextBytes(bArr);
                        dataOutputStream.write(bArr);
                        try {
                            this.d.init(1, this.e, new IvParameterSpec(bArr));
                            dataOutputStream.flush();
                            dataOutputStream = new DataOutputStream(new CipherOutputStream(this.g, this.d));
                        } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                            throw new IllegalStateException(e);
                        }
                    }
                    try {
                        dataOutputStream.writeInt(this.f3484a.size());
                        Iterator<f> it = this.f3484a.values().iterator();
                        while (true) {
                            int i3 = i;
                            if (it.hasNext()) {
                                f next = it.next();
                                next.a(dataOutputStream);
                                i = next.d() + i3;
                            } else {
                                dataOutputStream.writeInt(i3);
                                this.c.a(dataOutputStream);
                                v.a((Closeable) null);
                                return;
                            }
                        }
                    } catch (IOException e2) {
                        e = e2;
                        dataOutputStream2 = dataOutputStream;
                        try {
                            throw new Cache.CacheException(e);
                        } catch (Throwable th) {
                            th = th;
                            dataOutputStream = dataOutputStream2;
                            v.a(dataOutputStream);
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    v.a(dataOutputStream);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
                dataOutputStream2 = dataOutputStream;
            }
        } catch (IOException e4) {
            e = e4;
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream = null;
        }
    }

    private void b(f fVar) {
        this.f3484a.put(fVar.b, fVar);
        this.b.put(fVar.f3483a, fVar.b);
    }

    void a(f fVar) {
        b(fVar);
        this.f = true;
    }

    private f b(String str, long j) {
        f fVar = new f(a(this.b), str, j);
        a(fVar);
        return fVar;
    }

    public static int a(SparseArray<String> sparseArray) {
        int size = sparseArray.size();
        int keyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
        if (keyAt < 0) {
            keyAt = 0;
            while (keyAt < size && keyAt == sparseArray.keyAt(keyAt)) {
                keyAt++;
            }
        }
        return keyAt;
    }
}
