package com.flurry.sdk;

import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class ao<K> extends ArrayList<K> {

    /* renamed from: a  reason: collision with root package name */
    private int f2450a = 2;

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(K k) {
        if (contains(k)) {
            remove(k);
        }
        boolean add = super.add(k);
        if (size() > this.f2450a) {
            removeRange(0, (size() - this.f2450a) - 1);
        }
        return add;
    }
}
