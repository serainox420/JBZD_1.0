package com.facebook.ads.internal.util;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    public final String f2243a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;
    public final long g;
    public final long h;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f2244a;
        private long b = -1;
        private long c = -1;
        private long d = -1;
        private long e = -1;
        private long f = -1;
        private long g = -1;
        private long h = -1;

        public a(String str) {
            this.f2244a = str;
        }

        public a a(long j) {
            this.b = j;
            return this;
        }

        public l a() {
            return new l(this.f2244a, this.b, this.c, this.d, this.e, this.f, this.g, this.h);
        }

        public a b(long j) {
            this.c = j;
            return this;
        }

        public a c(long j) {
            this.d = j;
            return this;
        }

        public a d(long j) {
            this.e = j;
            return this;
        }

        public a e(long j) {
            this.f = j;
            return this;
        }

        public a f(long j) {
            this.g = j;
            return this;
        }

        public a g(long j) {
            this.h = j;
            return this;
        }
    }

    private l(String str, long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        this.f2243a = str;
        this.b = j;
        this.c = j2;
        this.d = j3;
        this.e = j4;
        this.f = j5;
        this.g = j6;
        this.h = j7;
    }

    public Map<String, String> a() {
        HashMap hashMap = new HashMap(7);
        hashMap.put("initial_url", this.f2243a);
        hashMap.put("handler_time_ms", String.valueOf(this.b));
        hashMap.put("load_start_ms", String.valueOf(this.c));
        hashMap.put("response_end_ms", String.valueOf(this.d));
        hashMap.put("dom_content_loaded_ms", String.valueOf(this.e));
        hashMap.put("scroll_ready_ms", String.valueOf(this.f));
        hashMap.put("load_finish_ms", String.valueOf(this.g));
        hashMap.put("session_finish_ms", String.valueOf(this.h));
        return hashMap;
    }
}
