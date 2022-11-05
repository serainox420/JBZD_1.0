package com.google.android.exoplayer2.text.a;

import android.text.Layout;
/* compiled from: Cea708Cue.java */
/* loaded from: classes2.dex */
final class b extends com.google.android.exoplayer2.text.b implements Comparable<b> {
    public final int l;

    public b(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4, int i5) {
        super(charSequence, alignment, f, i, i2, f2, i3, f3, z, i4);
        this.l = i5;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(b bVar) {
        if (bVar.l < this.l) {
            return -1;
        }
        if (bVar.l > this.l) {
            return 1;
        }
        return 0;
    }
}
