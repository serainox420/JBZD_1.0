package com.google.android.exoplayer2.source.dash.manifest;

import java.util.Collections;
import java.util.List;
/* compiled from: AdaptationSet.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public final int f3392a;
    public final int b;
    public final List<f> c;
    public final List<g> d;

    public a(int i, int i2, List<f> list, List<g> list2) {
        List<g> unmodifiableList;
        this.f3392a = i;
        this.b = i2;
        this.c = Collections.unmodifiableList(list);
        if (list2 == null) {
            unmodifiableList = Collections.emptyList();
        } else {
            unmodifiableList = Collections.unmodifiableList(list2);
        }
        this.d = unmodifiableList;
    }
}
