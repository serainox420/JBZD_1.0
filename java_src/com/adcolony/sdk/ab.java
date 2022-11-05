package com.adcolony.sdk;

import android.app.Activity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ab {
    boolean g;

    /* renamed from: a  reason: collision with root package name */
    ArrayList<ad> f1033a = new ArrayList<>();
    HashMap<Integer, ad> b = new HashMap<>();
    int c = 2;
    JSONArray e = s.b();
    int f = 1;
    HashMap<String, ArrayList<ac>> d = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, ac acVar) {
        ArrayList<ac> arrayList = this.d.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.d.put(str, arrayList);
        }
        arrayList.add(acVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str, ac acVar) {
        synchronized (this.d) {
            ArrayList<ac> arrayList = this.d.get(str);
            if (arrayList != null) {
                arrayList.remove(acVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (a.m != null && !a.m.E && !a.m.F && a.l != null) {
            final ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
            newSingleThreadExecutor.submit(new Runnable() { // from class: com.adcolony.sdk.ab.1
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObject = a.m.v.d;
                    s.a(jSONObject, "os_name", io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE);
                    Activity activity = a.l;
                    StringBuilder append = new StringBuilder().append(a.m.k.f1048a);
                    h hVar = a.m;
                    ab.this.a(new ADCVMModule(activity, 1, append.append("7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5").toString(), jSONObject, newSingleThreadExecutor));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad a(ad adVar) {
        synchronized (this.f1033a) {
            this.f1033a.add(adVar);
            this.b.put(Integer.valueOf(adVar.a()), adVar);
        }
        return adVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad a(int i) {
        ad adVar;
        synchronized (this.f1033a) {
            adVar = this.b.get(Integer.valueOf(i));
            if (adVar == null) {
                adVar = null;
            } else {
                this.f1033a.remove(adVar);
                this.b.remove(Integer.valueOf(i));
                adVar.b();
            }
        }
        return adVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void b() {
        JSONArray jSONArray;
        synchronized (this) {
            this.g = false;
            synchronized (this.f1033a) {
                for (int size = this.f1033a.size() - 1; size >= 0; size--) {
                    this.f1033a.get(size).c();
                }
            }
            if (this.e.length() <= 0) {
                jSONArray = null;
            } else {
                JSONArray jSONArray2 = this.e;
                this.e = s.b();
                jSONArray = jSONArray2;
            }
            if (jSONArray != null) {
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    try {
                        final JSONObject jSONObject = jSONArray.getJSONObject(i);
                        final String string = jSONObject.getString("m_type");
                        if (jSONObject.getInt("m_origin") >= 2) {
                            if (a.l != null) {
                                a.l.runOnUiThread(new Runnable() { // from class: com.adcolony.sdk.ab.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        ab.this.a(string, jSONObject);
                                    }
                                });
                            }
                        } else {
                            a(string, jSONObject);
                        }
                    } catch (JSONException e) {
                        u.h.a("JSON error from message dispatcher's update_modules(): ").b(e.toString());
                    }
                }
            }
        }
    }

    void a(String str, JSONObject jSONObject) {
        synchronized (this.d) {
            ArrayList<ac> arrayList = this.d.get(str);
            if (arrayList != null) {
                z zVar = new z(jSONObject);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    try {
                        arrayList.get(i).a(zVar);
                    } catch (RuntimeException e) {
                        u.h.b(e);
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(JSONObject jSONObject) {
        try {
            if (!jSONObject.has("m_id")) {
                int i = this.f;
                this.f = i + 1;
                jSONObject.put("m_id", i);
            }
            if (!jSONObject.has("m_origin")) {
                jSONObject.put("m_origin", 0);
            }
            int i2 = jSONObject.getInt("m_target");
            if (i2 == 0) {
                synchronized (this) {
                    this.e.put(jSONObject);
                }
                return;
            }
            ad adVar = this.b.get(Integer.valueOf(i2));
            if (adVar != null) {
                adVar.a(jSONObject);
            }
        } catch (JSONException e) {
            u.h.a("JSON error in ADCMessageDispatcher's send_message(): ").b(e.toString());
        }
    }
}
