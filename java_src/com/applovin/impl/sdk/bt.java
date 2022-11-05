package com.applovin.impl.sdk;

import java.util.Map;
/* loaded from: classes.dex */
public class bt {

    /* renamed from: a  reason: collision with root package name */
    private final String f1622a;
    private final Map b;
    private final long c;
    private final String d;

    public bt(String str, Map map, long j, String str2) {
        this.f1622a = str;
        this.b = map;
        this.c = j;
        this.d = str2;
    }

    public String a() {
        return this.f1622a;
    }

    public Map b() {
        return this.b;
    }

    public long c() {
        return this.c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        bt btVar = (bt) obj;
        if (this.c != btVar.c) {
            return false;
        }
        if (this.f1622a != null) {
            if (!this.f1622a.equals(btVar.f1622a)) {
                return false;
            }
        } else if (btVar.f1622a != null) {
            return false;
        }
        if (this.b != null) {
            if (!this.b.equals(btVar.b)) {
                return false;
            }
        } else if (btVar.b != null) {
            return false;
        }
        if (this.d == null ? btVar.d != null : !this.d.equals(btVar.d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((((this.b != null ? this.b.hashCode() : 0) + ((this.f1622a != null ? this.f1622a.hashCode() : 0) * 31)) * 31) + ((int) (this.c ^ (this.c >>> 32)))) * 31;
        if (this.d != null) {
            i = this.d.hashCode();
        }
        return hashCode + i;
    }

    public String toString() {
        return "SdkEvent{eventType='" + this.f1622a + "', parameters=" + this.b + ", creationTsMillis=" + this.c + ", uniqueIdentifier='" + this.d + "'}";
    }
}
