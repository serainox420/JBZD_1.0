package com.facebook.ads.internal.i.a;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class p implements Map<String, String> {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f2179a = new HashMap();

    public p a(Map<? extends String, ? extends String> map) {
        putAll(map);
        return this;
    }

    public String a() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.f2179a.keySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(str);
            String str2 = this.f2179a.get(str);
            if (str2 != null) {
                sb.append("=");
                try {
                    sb.append(URLEncoder.encode(str2, "UTF-8"));
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
        }
        return sb.toString();
    }

    @Override // java.util.Map
    /* renamed from: a */
    public String get(Object obj) {
        return this.f2179a.get(obj);
    }

    @Override // java.util.Map
    /* renamed from: a */
    public String put(String str, String str2) {
        return this.f2179a.put(str, str2);
    }

    @Override // java.util.Map
    /* renamed from: b */
    public String remove(Object obj) {
        return this.f2179a.remove(obj);
    }

    public byte[] b() {
        try {
            return a().getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // java.util.Map
    public void clear() {
        this.f2179a.clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return this.f2179a.containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return this.f2179a.containsValue(obj);
    }

    @Override // java.util.Map
    public Set<Map.Entry<String, String>> entrySet() {
        return this.f2179a.entrySet();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.f2179a.isEmpty();
    }

    @Override // java.util.Map
    public Set<String> keySet() {
        return this.f2179a.keySet();
    }

    @Override // java.util.Map
    public void putAll(Map<? extends String, ? extends String> map) {
        this.f2179a.putAll(map);
    }

    @Override // java.util.Map
    public int size() {
        return this.f2179a.size();
    }

    @Override // java.util.Map
    public Collection<String> values() {
        return this.f2179a.values();
    }
}
