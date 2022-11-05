package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private AppLovinAdSize f1626a;
    private AppLovinAdType b;

    public c(AppLovinAd appLovinAd) {
        this.f1626a = appLovinAd.getSize();
        this.b = appLovinAd.getType();
    }

    public c(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType) {
        this.f1626a = appLovinAdSize;
        this.b = appLovinAdType;
    }

    public AppLovinAdSize a() {
        return this.f1626a;
    }

    public AppLovinAdType b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f1626a == null ? cVar.f1626a == null : this.f1626a.equals(cVar.f1626a)) {
            if (this.b != null) {
                if (this.b.equals(cVar.b)) {
                    return true;
                }
            } else if (cVar.b == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = (this.f1626a != null ? this.f1626a.hashCode() : 0) * 31;
        if (this.b != null) {
            i = this.b.hashCode();
        }
        return hashCode + i;
    }

    public String toString() {
        return "AdSpec{size=" + this.f1626a + ", type=" + this.b + '}';
    }
}
