package com.facebook.ads.internal.view.hscroll;

import android.util.SparseArray;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final SparseArray<int[]> f2335a = new SparseArray<>();

    public void a(int i, int[] iArr) {
        this.f2335a.put(i, iArr);
    }

    public int[] a(int i) {
        return this.f2335a.get(i);
    }

    public boolean b(int i) {
        return this.f2335a.indexOfKey(i) >= 0;
    }
}
