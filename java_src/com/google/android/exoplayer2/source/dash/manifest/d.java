package com.google.android.exoplayer2.source.dash.manifest;

import java.util.Collections;
import java.util.List;
/* compiled from: Period.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public final String f3396a;
    public final long b;
    public final List<a> c;

    public d(String str, long j, List<a> list) {
        this.f3396a = str;
        this.b = j;
        this.c = Collections.unmodifiableList(list);
    }

    public int a(int i) {
        int size = this.c.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.c.get(i2).b == i) {
                return i2;
            }
        }
        return -1;
    }
}
