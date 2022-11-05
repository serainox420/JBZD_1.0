package com.applovin.impl.sdk;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class dc {

    /* renamed from: a  reason: collision with root package name */
    private static final dc f1651a = new dc();
    private final Map c = new HashMap(2);
    private final Object b = new Object();

    private dc() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static dc a() {
        return f1651a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public de a(String str) {
        de deVar;
        synchronized (this.b) {
            deVar = (de) this.c.remove(str);
        }
        return deVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, long j, String str2, boolean z) {
        de deVar = new de(this, str2, j, z);
        synchronized (this.b) {
            this.c.put(str, deVar);
        }
    }
}
