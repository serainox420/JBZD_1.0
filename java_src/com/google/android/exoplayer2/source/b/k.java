package com.google.android.exoplayer2.source.b;

import android.util.SparseArray;
import com.facebook.common.time.Clock;
import com.google.android.exoplayer2.util.s;
/* compiled from: TimestampAdjusterProvider.java */
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private final SparseArray<s> f3369a = new SparseArray<>();

    public s a(int i) {
        s sVar = this.f3369a.get(i);
        if (sVar == null) {
            s sVar2 = new s(Clock.MAX_TIME);
            this.f3369a.put(i, sVar2);
            return sVar2;
        }
        return sVar;
    }

    public void a() {
        this.f3369a.clear();
    }
}
