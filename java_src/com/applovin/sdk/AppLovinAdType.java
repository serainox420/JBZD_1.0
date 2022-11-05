package com.applovin.sdk;

import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes.dex */
public class AppLovinAdType {

    /* renamed from: a  reason: collision with root package name */
    private final String f1674a;
    public static final AppLovinAdType REGULAR = new AppLovinAdType("REGULAR");
    public static final AppLovinAdType INCENTIVIZED = new AppLovinAdType("VIDEOA");

    public AppLovinAdType(String str) {
        this.f1674a = str;
    }

    public static Set allTypes() {
        HashSet hashSet = new HashSet(2);
        hashSet.add(REGULAR);
        hashSet.add(INCENTIVIZED);
        return hashSet;
    }

    public static AppLovinAdType fromString(String str) {
        return str.toUpperCase(Locale.ENGLISH).equals(INCENTIVIZED.getLabel()) ? INCENTIVIZED : REGULAR;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AppLovinAdType appLovinAdType = (AppLovinAdType) obj;
        if (this.f1674a != null) {
            if (this.f1674a.equals(appLovinAdType.f1674a)) {
                return true;
            }
        } else if (appLovinAdType.f1674a == null) {
            return true;
        }
        return false;
    }

    public String getLabel() {
        return this.f1674a.toUpperCase(Locale.ENGLISH);
    }

    public int hashCode() {
        if (this.f1674a != null) {
            return this.f1674a.hashCode();
        }
        return 0;
    }

    public String toString() {
        return getLabel();
    }
}
