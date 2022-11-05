package com.google.gson;

import com.google.gson.internal.LinkedTreeMap;
import java.util.Map;
import java.util.Set;
/* compiled from: JsonObject.java */
/* loaded from: classes2.dex */
public final class k extends i {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedTreeMap<String, i> f3690a = new LinkedTreeMap<>();

    public void a(String str, i iVar) {
        if (iVar == null) {
            iVar = j.f3689a;
        }
        this.f3690a.put(str, iVar);
    }

    public Set<Map.Entry<String, i>> o() {
        return this.f3690a.entrySet();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof k) && ((k) obj).f3690a.equals(this.f3690a));
    }

    public int hashCode() {
        return this.f3690a.hashCode();
    }
}
