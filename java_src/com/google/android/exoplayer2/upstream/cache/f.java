package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.upstream.cache.Cache;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.TreeSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CachedContent.java */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final int f3483a;
    public final String b;
    private final TreeSet<j> c;
    private long d;

    public f(DataInputStream dataInputStream) throws IOException {
        this(dataInputStream.readInt(), dataInputStream.readUTF(), dataInputStream.readLong());
    }

    public f(int i, String str, long j) {
        this.f3483a = i;
        this.b = str;
        this.d = j;
        this.c = new TreeSet<>();
    }

    public void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.f3483a);
        dataOutputStream.writeUTF(this.b);
        dataOutputStream.writeLong(this.d);
    }

    public long a() {
        return this.d;
    }

    public void a(long j) {
        this.d = j;
    }

    public void a(j jVar) {
        this.c.add(jVar);
    }

    public TreeSet<j> b() {
        return this.c;
    }

    public j b(long j) {
        j a2 = j.a(this.b, j);
        j floor = this.c.floor(a2);
        if (floor == null || floor.b + floor.c <= j) {
            j ceiling = this.c.ceiling(a2);
            return ceiling == null ? j.b(this.b, j) : j.a(this.b, j, ceiling.b - j);
        }
        return floor;
    }

    public j b(j jVar) throws Cache.CacheException {
        com.google.android.exoplayer2.util.a.b(this.c.remove(jVar));
        j a2 = jVar.a(this.f3483a);
        if (!jVar.e.renameTo(a2.e)) {
            throw new Cache.CacheException("Renaming of " + jVar.e + " to " + a2.e + " failed.");
        }
        this.c.add(a2);
        return a2;
    }

    public boolean c() {
        return this.c.isEmpty();
    }

    public boolean a(e eVar) {
        if (this.c.remove(eVar)) {
            eVar.e.delete();
            return true;
        }
        return false;
    }

    public int d() {
        return (((this.f3483a * 31) + this.b.hashCode()) * 31) + ((int) (this.d ^ (this.d >>> 32)));
    }
}
