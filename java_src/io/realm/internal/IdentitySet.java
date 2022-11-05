package io.realm.internal;

import java.util.IdentityHashMap;
/* loaded from: classes3.dex */
public class IdentitySet<K> extends IdentityHashMap<K, Integer> {

    /* renamed from: a  reason: collision with root package name */
    private static final Integer f5770a = 0;

    public void add(K k) {
        put(k, f5770a);
    }
}
