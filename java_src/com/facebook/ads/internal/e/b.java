package com.facebook.ads.internal.e;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public final int f2132a;
    public final String b;
    public final String c;

    public b(int i, String str, String str2) {
        this.f2132a = i;
        this.b = str;
        this.c = str2;
    }

    public String a() {
        return this.b + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.c;
    }
}
