package com.google.android.exoplayer2.source;

import com.facebook.common.time.Clock;
/* compiled from: CompositeSequenceableLoader.java */
/* loaded from: classes2.dex */
public final class b implements j {

    /* renamed from: a  reason: collision with root package name */
    private final j[] f3350a;

    public b(j[] jVarArr) {
        this.f3350a = jVarArr;
    }

    @Override // com.google.android.exoplayer2.source.j
    public long b_() {
        long j = Long.MAX_VALUE;
        for (j jVar : this.f3350a) {
            long b_ = jVar.b_();
            if (b_ != Long.MIN_VALUE) {
                j = Math.min(j, b_);
            }
        }
        if (j == Clock.MAX_TIME) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.j
    public boolean a(long j) {
        j[] jVarArr;
        boolean z;
        boolean z2 = false;
        do {
            long b_ = b_();
            if (b_ == Long.MIN_VALUE) {
                break;
            }
            z = false;
            for (j jVar : this.f3350a) {
                if (jVar.b_() == b_) {
                    z |= jVar.a(j);
                }
            }
            z2 |= z;
        } while (z);
        return z2;
    }
}
