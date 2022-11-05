package com.apprupt.sdk;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.loopme.debugging.Params;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class CvAppsList {
    private final Context d;

    /* renamed from: a  reason: collision with root package name */
    private final Set<String> f1735a = new HashSet();
    private final Set<String> b = new HashSet();
    private final Map<String, JSONObject> c = new HashMap();
    private long e = 0;
    private long f = 0;

    /* loaded from: classes.dex */
    interface AppInfoListener {
        void a(JSONObject jSONObject);
    }

    /* loaded from: classes.dex */
    interface MultiAppInfoListener {
        void a(Collection<JSONObject> collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface MultiListener {
        void a(Set<String> set);
    }

    /* loaded from: classes.dex */
    interface SingleListener {
        void a(State state);
    }

    /* loaded from: classes.dex */
    enum State {
        YES,
        NO,
        UNKNOWN
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CvAppsList(Context context) {
        this.d = context.getApplicationContext();
    }

    public void a(final String str, final SingleListener singleListener) {
        a(new MultiListener() { // from class: com.apprupt.sdk.CvAppsList.1
            @Override // com.apprupt.sdk.CvAppsList.MultiListener
            public void a(Set<String> set) {
                if (set.size() > 0) {
                    singleListener.a(set.contains(str) ? State.YES : State.NO);
                } else {
                    singleListener.a(State.UNKNOWN);
                }
            }
        });
    }

    public void a(final MultiListener multiListener) {
        new Thread(new Runnable() { // from class: com.apprupt.sdk.CvAppsList.2
            @Override // java.lang.Runnable
            public void run() {
                CvAppsList.this.a();
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.apprupt.sdk.CvAppsList.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (CvAppsList.this.b) {
                            multiListener.a(CvAppsList.this.b);
                        }
                    }
                });
            }
        }).start();
    }

    public void a(final MultiAppInfoListener multiAppInfoListener) {
        new Thread(new Runnable() { // from class: com.apprupt.sdk.CvAppsList.3
            @Override // java.lang.Runnable
            public void run() {
                CvAppsList.this.a();
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.apprupt.sdk.CvAppsList.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (CvAppsList.this.b) {
                            multiAppInfoListener.a(CvAppsList.this.c.values());
                        }
                    }
                });
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        synchronized (this.b) {
            if (this.e <= System.currentTimeMillis()) {
                this.e = System.currentTimeMillis() + 43200000;
                this.b.clear();
                this.c.clear();
                PackageManager packageManager = this.d.getPackageManager();
                for (ApplicationInfo applicationInfo : packageManager.getInstalledApplications(128)) {
                    this.b.add(applicationInfo.packageName);
                    JSONObject jSONObject = new JSONObject();
                    try {
                        try {
                            try {
                                PackageInfo packageInfo = packageManager.getPackageInfo(applicationInfo.packageName, 0);
                                jSONObject.put(Params.PACKAGE_ID, applicationInfo.packageName);
                                jSONObject.put("name", applicationInfo.name == null ? applicationInfo.loadLabel(packageManager).toString() : applicationInfo.name);
                                jSONObject.put("version", packageInfo.versionName);
                                jSONObject.put("versionCode", packageInfo.versionCode);
                                this.c.put(applicationInfo.packageName, jSONObject);
                            } catch (Exception e) {
                                Logger.a("AppsList").c(e, "Error building info for", applicationInfo.packageName);
                            }
                        } catch (PackageManager.NameNotFoundException e2) {
                            Logger.a("AppsList").c(e2, "Cannot get package info for", applicationInfo.packageName);
                        }
                    } catch (JSONException e3) {
                        Logger.a("AppsList").c(e3, "Cannot build app info json for", applicationInfo.packageName);
                    }
                }
            }
        }
    }

    public void b(final String str, final SingleListener singleListener) {
        b(new MultiListener() { // from class: com.apprupt.sdk.CvAppsList.4
            @Override // com.apprupt.sdk.CvAppsList.MultiListener
            public void a(Set<String> set) {
                if (set == null || set.size() == 0) {
                    singleListener.a(State.UNKNOWN);
                } else {
                    singleListener.a(set.contains(str) ? State.YES : State.NO);
                }
            }
        });
    }

    public void b(final MultiListener multiListener) {
        new Thread(new Runnable() { // from class: com.apprupt.sdk.CvAppsList.5
            @Override // java.lang.Runnable
            public void run() {
                CvAppsList.this.b();
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.apprupt.sdk.CvAppsList.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        multiListener.a(CvAppsList.this.f1735a);
                    }
                });
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        synchronized (this.f1735a) {
            if (this.f <= System.currentTimeMillis()) {
                if (Build.VERSION.SDK_INT < 21) {
                    this.f = System.currentTimeMillis() + 1800000;
                    this.f1735a.clear();
                    if (this.d.checkCallingOrSelfPermission("android.permission.GET_TASKS") != -1) {
                        for (ActivityManager.RunningTaskInfo runningTaskInfo : ((ActivityManager) this.d.getSystemService("activity")).getRunningTasks(Integer.MAX_VALUE)) {
                            this.f1735a.add(runningTaskInfo.baseActivity.getPackageName());
                        }
                    }
                }
            }
        }
    }

    public void a(final String str, final AppInfoListener appInfoListener) {
        a(new MultiListener() { // from class: com.apprupt.sdk.CvAppsList.6
            @Override // com.apprupt.sdk.CvAppsList.MultiListener
            public void a(Set<String> set) {
                if (CvAppsList.this.c.size() > 0 && CvAppsList.this.c.containsKey(str)) {
                    appInfoListener.a((JSONObject) CvAppsList.this.c.get(str));
                } else {
                    appInfoListener.a(null);
                }
            }
        });
    }
}
