package com.google.android.exoplayer2.b;

import com.google.android.exoplayer2.l;
import com.google.android.exoplayer2.source.m;
import com.google.android.exoplayer2.util.v;
/* compiled from: TrackSelectorResult.java */
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public final m f3180a;
    public final g b;
    public final Object c;
    public final l[] d;

    public i(m mVar, g gVar, Object obj, l[] lVarArr) {
        this.f3180a = mVar;
        this.b = gVar;
        this.c = obj;
        this.d = lVarArr;
    }

    public boolean a(i iVar) {
        if (iVar == null) {
            return false;
        }
        for (int i = 0; i < this.b.f3178a; i++) {
            if (!a(iVar, i)) {
                return false;
            }
        }
        return true;
    }

    public boolean a(i iVar, int i) {
        return iVar != null && v.a(this.b.a(i), iVar.b.a(i)) && v.a(this.d[i], iVar.d[i]);
    }
}
