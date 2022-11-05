package com.google.android.exoplayer2.upstream.cache;

import java.io.File;
import java.io.IOException;
/* loaded from: classes2.dex */
public interface Cache {

    /* loaded from: classes2.dex */
    public interface a {
        void a(Cache cache, e eVar);

        void a(Cache cache, e eVar, e eVar2);

        void b(Cache cache, e eVar);
    }

    long a();

    long a(String str);

    e a(String str, long j) throws InterruptedException, CacheException;

    File a(String str, long j, long j2) throws CacheException;

    void a(e eVar);

    void a(File file) throws CacheException;

    e b(String str, long j) throws CacheException;

    void b(e eVar) throws CacheException;

    void c(String str, long j) throws CacheException;

    /* loaded from: classes2.dex */
    public static class CacheException extends IOException {
        public CacheException(String str) {
            super(str);
        }

        public CacheException(IOException iOException) {
            super(iOException);
        }
    }
}
