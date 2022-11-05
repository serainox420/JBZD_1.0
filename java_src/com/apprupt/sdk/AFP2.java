package com.apprupt.sdk;

import android.content.Context;
import com.apprupt.sdk.CvAppsList;
import com.apprupt.sdk.Logger;
import com.apprupt.sdk.URLRequest;
import io.fabric.sdk.android.services.b.b;
import java.util.Collection;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class AFP2 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static long f1677a = 0;
    private final Context b;
    private final Logger.log c = Logger.a("AFP2");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context) {
        long currentTimeMillis = System.currentTimeMillis();
        if (f1677a > currentTimeMillis) {
            Logger.a("AFP2").a("AFP2 call to early");
            return;
        }
        Logger.a("AFP2").a("AFP2 start..");
        f1677a = currentTimeMillis + 300000;
        new Thread(new AFP2(context)).start();
    }

    private AFP2(Context context) {
        this.b = context.getApplicationContext();
    }

    @Override // java.lang.Runnable
    public void run() {
        CvAppInfo.a().f1732a.b(new CvAppsList.MultiListener() { // from class: com.apprupt.sdk.AFP2.1
            @Override // com.apprupt.sdk.CvAppsList.MultiListener
            public void a(final Set<String> set) {
                CvAppInfo.a().f1732a.a(new CvAppsList.MultiAppInfoListener() { // from class: com.apprupt.sdk.AFP2.1.1
                    @Override // com.apprupt.sdk.CvAppsList.MultiAppInfoListener
                    public void a(Collection<JSONObject> collection) {
                        AFP2.this.a(set, collection);
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Set<String> set, Collection<JSONObject> collection) {
        JSONArray jSONArray = new JSONArray();
        if (jSONArray != null && jSONArray.length() > 0) {
            for (String str : set) {
                if (str != null) {
                    jSONArray.put(str);
                }
            }
        }
        JSONArray jSONArray2 = new JSONArray();
        for (JSONObject jSONObject : collection) {
            jSONArray2.put(jSONObject);
        }
        this.c.a("packages collected", set, jSONArray2);
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("uid", CvAppInfo.a().m());
            jSONObject2.put("processes", set);
            jSONObject2.put("packages", jSONArray2);
            this.c.a("request data ready");
            URLRequest.b(CvUrl.a("/afp2")).a(new URLRequest.Listener() { // from class: com.apprupt.sdk.AFP2.2
                @Override // com.apprupt.sdk.URLRequest.Listener
                public void a(URLRequest.URLResponse uRLResponse) {
                    synchronized (AFP2.this) {
                        if (uRLResponse.d || uRLResponse.f1987a != 200) {
                            AFP2.this.c.d("afp2 failed with code:", Integer.valueOf(uRLResponse.f1987a), "and error", uRLResponse.e);
                            long unused = AFP2.f1677a = System.currentTimeMillis() + 300000;
                        } else {
                            AFP2.this.c.b("afp2 done");
                            long unused2 = AFP2.f1677a = System.currentTimeMillis() + 43200000;
                        }
                    }
                }
            }).a(b.ROLL_OVER_FILE_NAME_SEPARATOR, (Object) CvCrypto.a(jSONObject2.toString().getBytes())).b();
            this.c.a("request sent");
        } catch (JSONException e) {
            this.c.d("Error while building request (" + e.getClass().getName() + "): " + e.getMessage());
        }
    }
}
