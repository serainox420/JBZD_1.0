package com.flurry.sdk;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private db f2591a;
    private final Map<String, String> b = new HashMap();
    private Map<String, String> c;
    private Integer d;
    private Integer e;
    private boolean f;
    private String g;

    public e copy() {
        e eVar = new e();
        if (this.b != null) {
            eVar.setUserCookies(new HashMap(this.b));
        }
        eVar.setEnableTestAds(this.f);
        return eVar;
    }

    @Deprecated
    public db getLocation() {
        return null;
    }

    @Deprecated
    public void setLocation(float f, float f2) {
    }

    @Deprecated
    public void clearLocation() {
        this.f2591a = null;
    }

    public Map<String, String> getUserCookies() {
        return this.b;
    }

    public void setUserCookies(Map<String, String> map) {
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getKey() != null && entry.getValue() != null) {
                    this.b.put(entry.getKey(), entry.getValue());
                }
            }
        }
    }

    public void clearUserCookies() {
        this.b.clear();
    }

    @Deprecated
    public Map<String, String> getKeywords() {
        return null;
    }

    @Deprecated
    public void setKeywords(Map<String, String> map) {
        this.c = null;
    }

    @Deprecated
    public void clearKeywords() {
        this.c = null;
    }

    @Deprecated
    public Integer getAge() {
        return -1;
    }

    @Deprecated
    public void setAge(int i) {
    }

    @Deprecated
    public void clearAge() {
        this.d = null;
    }

    @Deprecated
    public Integer getGender() {
        return -1;
    }

    @Deprecated
    public void setGender(int i) {
    }

    @Deprecated
    public void clearGender() {
        this.e = null;
    }

    public boolean getEnableTestAds() {
        return this.f;
    }

    public void setEnableTestAds(boolean z) {
        this.f = z;
    }

    public String getFixedAdId() {
        return this.g;
    }

    public void setFixedAdId(String str) {
        this.g = str;
    }

    public void clearFixedAdId() {
        this.g = null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.g == null ? eVar.g == null : this.g.equals(eVar.g);
    }

    public int hashCode() {
        if (this.g != null) {
            return this.g.hashCode();
        }
        return 0;
    }
}
