package com.flurry.sdk;

import java.util.Comparator;
/* loaded from: classes2.dex */
public class kj implements Comparator<Runnable> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2964a = kj.class.getSimpleName();

    @Override // java.util.Comparator
    public /* synthetic */ int compare(Runnable runnable, Runnable runnable2) {
        int a2 = a(runnable);
        int a3 = a(runnable2);
        if (a2 < a3) {
            return -1;
        }
        if (a2 > a3) {
            return 1;
        }
        return 0;
    }

    private static int a(Runnable runnable) {
        int i;
        if (runnable == null) {
            return Integer.MAX_VALUE;
        }
        if (runnable instanceof kk) {
            mb mbVar = (mb) ((kk) runnable).a();
            if (mbVar == null) {
                i = Integer.MAX_VALUE;
            } else {
                i = mbVar.w;
            }
            return i;
        } else if (!(runnable instanceof mb)) {
            km.a(6, f2964a, "Unknown runnable class: " + runnable.getClass().getName());
            return Integer.MAX_VALUE;
        } else {
            return ((mb) runnable).w;
        }
    }
}
