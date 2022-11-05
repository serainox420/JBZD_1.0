package com.flurry.sdk;

import android.util.SparseArray;
import com.flurry.android.tumblr.Post;
/* loaded from: classes2.dex */
public final class mg {
    private static mg b = null;

    /* renamed from: a  reason: collision with root package name */
    public SparseArray<Post> f3059a = new SparseArray<>();

    private mg() {
    }

    public static mg a() {
        if (b == null) {
            b = new mg();
        }
        return b;
    }

    public final void a(int i) {
        this.f3059a.remove(i);
    }
}
