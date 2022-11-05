package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import java.util.Collection;
import java.util.HashSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    final AppLovinAdSize f1660a;
    final Object b;
    AppLovinAd c;
    long d;
    boolean e;
    private final Collection f;
    private final Collection g;

    private i(AppLovinAdSize appLovinAdSize) {
        this.f = new HashSet();
        this.g = new HashSet();
        this.f1660a = appLovinAdSize;
        this.b = new Object();
        this.c = null;
        this.d = 0L;
        this.e = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ i(AppLovinAdSize appLovinAdSize, e eVar) {
        this(appLovinAdSize);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Collection a(i iVar) {
        return iVar.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Collection b(i iVar) {
        return iVar.f;
    }
}
