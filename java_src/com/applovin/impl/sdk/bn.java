package com.applovin.impl.sdk;

import android.content.SharedPreferences;
import com.applovin.sdk.AppLovinLogger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class bn {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinSdkImpl f1616a;
    private final AppLovinLogger b;
    private ArrayList c;
    private ArrayList d;
    private final Object e;
    private final SharedPreferences f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bn(AppLovinSdkImpl appLovinSdkImpl) {
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f1616a = appLovinSdkImpl;
        this.b = appLovinSdkImpl.getLogger();
        this.f = appLovinSdkImpl.getApplicationContext().getSharedPreferences("com.applovin.sdk.impl.postbackQueue.domain", 0);
        this.e = new Object();
        this.c = c();
        this.d = new ArrayList();
    }

    private bp a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new bp(this, jSONObject.getString("targetUrl"), ay.a(jSONObject.getJSONObject("requestBody")), jSONObject.getInt("attemptNumber"));
        } catch (Exception e) {
            this.b.w("PersistentPostbackManager", "Unable to inflate postback request from JSON.", e);
            return null;
        }
    }

    private void a(bp bpVar) {
        synchronized (this.e) {
            b(bpVar);
            c(bpVar);
        }
    }

    private void b(bp bpVar) {
        synchronized (this.e) {
            if (this.c.size() < ((Integer) this.f1616a.a(bx.ba)).intValue()) {
                this.c.add(bpVar);
                d();
                this.b.d("PersistentPostbackManager", "Enqueued postback: " + bpVar);
            } else {
                this.b.w("PersistentPostbackManager", "Persistent queue has reached maximum size; postback retried in memory only." + bpVar);
            }
        }
    }

    private ArrayList c() {
        if (!n.b()) {
            this.b.d("PersistentPostbackManager", "Loading new postback queue due to old Android version...");
            return new ArrayList();
        }
        Set<String> stringSet = this.f.getStringSet("com.applovin.sdk.impl.postbackQueue.key", new LinkedHashSet(0));
        ArrayList arrayList = new ArrayList(Math.max(1, stringSet.size()));
        int intValue = ((Integer) this.f1616a.a(bx.bb)).intValue();
        this.b.d("PersistentPostbackManager", "Deserializing " + stringSet.size() + " postback(s).");
        for (String str : stringSet) {
            bp a2 = a(str);
            if (a2 == null) {
                this.b.e("PersistentPostbackManager", "Unable to deserialize postback json: " + str);
            } else if (a2.a() > intValue) {
                arrayList.add(a2);
            } else {
                this.b.d("PersistentPostbackManager", "Skipping deserialization because maximum attempt count exceeded for postback: " + a2);
            }
        }
        this.b.d("PersistentPostbackManager", "Successfully loaded postback queue with " + arrayList.size() + " postback(s).");
        return arrayList;
    }

    private void c(bp bpVar) {
        this.b.d("PersistentPostbackManager", "Preparing to submit postback..." + bpVar);
        synchronized (this.e) {
            bpVar.a(bpVar.a() + 1);
            d();
        }
        int intValue = ((Integer) this.f1616a.a(bx.bb)).intValue();
        if (bpVar.a() <= intValue) {
            this.f1616a.mo34getPostbackService().dispatchPostbackAsync(bpVar.b(), bpVar.c(), new bo(this, bpVar));
            return;
        }
        this.b.w("PersistentPostbackManager", "Exceeded maximum persisted attempt count of " + intValue + ". Dequeuing postback: " + bpVar);
        d(bpVar);
    }

    private void d() {
        if (!n.b()) {
            this.b.d("PersistentPostbackManager", "Skipping writing postback queue to disk due to old Android version...");
            return;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(this.c.size());
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            String f = f((bp) it.next());
            if (f != null) {
                linkedHashSet.add(f);
            }
        }
        this.f.edit().putStringSet("com.applovin.sdk.impl.postbackQueue.key", linkedHashSet).commit();
        this.b.d("PersistentPostbackManager", "Wrote updated postback queue to disk.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(bp bpVar) {
        synchronized (this.e) {
            this.c.remove(bpVar);
            d();
        }
        this.b.d("PersistentPostbackManager", "Dequeued successfully transmitted postback: " + bpVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(bp bpVar) {
        synchronized (this.e) {
            this.d.add(bpVar);
        }
    }

    private String f(bp bpVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("attemptNumber", bpVar.a()).put("targetUrl", bpVar.b());
            Map c = bpVar.c();
            if (c != null) {
                jSONObject.put("requestBody", new JSONObject(c));
            }
            return jSONObject.toString();
        } catch (Exception e) {
            this.b.w("PersistentPostbackManager", "Unable to serialize postback request to JSON.", e);
            return null;
        }
    }

    public void a() {
        synchronized (this.e) {
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                c((bp) it.next());
            }
        }
    }

    public void a(String str, Map map) {
        a(new bp(this, str, map));
    }

    public void b() {
        synchronized (this.e) {
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                c((bp) it.next());
            }
            this.d.clear();
        }
    }
}
