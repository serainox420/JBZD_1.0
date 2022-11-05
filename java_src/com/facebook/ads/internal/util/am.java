package com.facebook.ads.internal.util;

import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public abstract class am<T> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<T> f2231a;

    public am(T t) {
        this.f2231a = new WeakReference<>(t);
    }

    public T a() {
        return this.f2231a.get();
    }
}
