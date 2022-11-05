package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import java.util.Collection;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j extends bw {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinAdServiceImpl f1661a;
    private final AppLovinAdSize b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public j(AppLovinAdServiceImpl appLovinAdServiceImpl, AppLovinAdSize appLovinAdSize) {
        super("UpdateAdTask", r1);
        AppLovinSdkImpl appLovinSdkImpl;
        this.f1661a = appLovinAdServiceImpl;
        appLovinSdkImpl = appLovinAdServiceImpl.f1575a;
        this.b = appLovinAdSize;
    }

    @Override // java.lang.Runnable
    public void run() {
        Map map;
        boolean a2;
        boolean a3;
        Collection collection;
        boolean z = true;
        map = this.f1661a.d;
        i iVar = (i) ((Map) map.get(AppLovinAdType.REGULAR)).get(this.b);
        synchronized (iVar.b) {
            a2 = this.f1661a.a(this.b);
            a3 = this.f1661a.a();
            collection = iVar.f;
            boolean z2 = !collection.isEmpty();
            if (System.currentTimeMillis() <= iVar.d) {
                z = false;
            }
            if (a2 && z2 && z && a3 && !iVar.e) {
                iVar.e = true;
                this.f1661a.a(this.b, AppLovinAdType.REGULAR, new h(this.f1661a, iVar, null));
            }
        }
    }
}
