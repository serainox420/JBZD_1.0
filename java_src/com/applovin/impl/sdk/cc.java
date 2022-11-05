package com.applovin.impl.sdk;

import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cc {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinSdkImpl f1629a;
    private final Map b = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public cc(AppLovinSdkImpl appLovinSdkImpl) {
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f1629a = appLovinSdkImpl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        synchronized (this.b) {
            this.b.clear();
        }
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        a(str, 1L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, long j) {
        synchronized (this.b) {
            Long l = (Long) this.b.get(str);
            if (l == null) {
                l = 0L;
            }
            this.b.put(str, Long.valueOf(l.longValue() + j));
        }
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long b(String str) {
        long longValue;
        synchronized (this.b) {
            Long l = (Long) this.b.get(str);
            if (l == null) {
                l = 0L;
            }
            longValue = l.longValue();
        }
        return longValue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject b() {
        JSONObject jSONObject;
        synchronized (this.b) {
            jSONObject = new JSONObject();
            for (Map.Entry entry : this.b.entrySet()) {
                jSONObject.put((String) entry.getKey(), entry.getValue());
            }
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str, long j) {
        synchronized (this.b) {
            this.b.put(str, Long.valueOf(j));
        }
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        try {
            JSONObject jSONObject = new JSONObject(this.f1629a.getSettingsManager().a().getString("stats", "{}"));
            synchronized (this.b) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    try {
                        String next = keys.next();
                        this.b.put(next, Long.valueOf(jSONObject.getLong(next)));
                    } catch (JSONException e) {
                    }
                }
            }
        } catch (Throwable th) {
            this.f1629a.getLogger().e("StatsManager", "Unable to load stats", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(String str) {
        synchronized (this.b) {
            this.b.remove(str);
        }
        d();
    }

    void d() {
        try {
            SharedPreferences.Editor edit = this.f1629a.getSettingsManager().a().edit();
            edit.putString("stats", b().toString());
            edit.commit();
        } catch (JSONException e) {
            this.f1629a.getLogger().e("StatsManager", "Unable to save stats", e);
        }
    }
}
