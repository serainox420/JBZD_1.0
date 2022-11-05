package com.inmobi.monetization.internal;

import java.util.HashMap;
/* loaded from: classes2.dex */
public class LtvpRulesObject {

    /* renamed from: a  reason: collision with root package name */
    private String f3859a;
    private long b;
    private HashMap<String, Integer> c;
    private long d;
    private long e;

    public String getRuleId() {
        return this.f3859a;
    }

    public void setRuleId(String str) {
        this.f3859a = str;
    }

    public long getTimeStamp() {
        return this.b;
    }

    public void setTimeStamp(long j) {
        this.b = j;
    }

    public HashMap<String, Integer> getRules() {
        return this.c;
    }

    public void setRules(HashMap<String, Integer> hashMap) {
        this.c = hashMap;
    }

    public long getSoftExpiry() {
        return this.d;
    }

    public void setSoftExpiry(long j) {
        this.d = j;
    }

    public long getHardExpiry() {
        return this.e;
    }

    public void setHardExpiry(long j) {
        this.e = j;
    }
}
