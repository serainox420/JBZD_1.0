package com.applovin.impl.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.preference.PreferenceManager;
import android.util.Log;
import com.applovin.nativeAds.AppLovinNativeAdService;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinEventService;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinTargetingData;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
/* loaded from: classes.dex */
public class AppLovinSdkImpl extends AppLovinSdk {

    /* renamed from: a  reason: collision with root package name */
    private String f1576a;
    private AppLovinSdkSettings b;
    private Context c;
    private AppLovinLogger d;
    private cr e;
    private ca f;
    private o g;
    private cc h;
    private z i;
    private b j;
    private bc k;
    private r l;
    private m m;
    private AppLovinAdServiceImpl n;
    private be o;
    private PostbackServiceImpl p;
    private EventServiceImpl q;
    private bn r;
    private boolean s = true;
    private boolean t = false;
    private boolean u = false;
    private boolean v = false;
    private boolean w = false;
    private boolean x = false;

    private void a(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        try {
            if (defaultSharedPreferences.getInt("com.applovin.sdk.impl.lastKnownVersionCode", 0) < 624) {
                Log.i("AppLovinSdkImpl", "SDK has been updated since last run. Continuing...");
                getSettingsManager().d();
                getSettingsManager().b();
            } else {
                Log.d("AppLovinSdkImpl", "SDK has not been updated since last run. Continuing...");
            }
        } catch (Exception e) {
            getLogger().e("AppLovinSdkImpl", "Unable to check for SDK update", e);
        } finally {
            defaultSharedPreferences.edit().putInt("com.applovin.sdk.impl.lastKnownVersionCode", AppLovinSdk.VERSION_CODE).apply();
        }
    }

    private static boolean i() {
        return !Build.VERSION.RELEASE.startsWith("1.") && !Build.VERSION.RELEASE.startsWith("2.0") && !Build.VERSION.RELEASE.startsWith("2.1");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public cr a() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object a(bz bzVar) {
        return this.f.a(bzVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.s = false;
        this.t = z;
        this.u = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public cc b() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b c() {
        return this.j;
    }

    public boolean checkCorrectInitialization(Context context) {
        try {
            getLogger().d(AppLovinLogger.SDK_TAG, "Checking if sdk is initialized in main activity...");
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setPackage(context.getPackageName());
            String stackTraceString = Log.getStackTraceString(new Throwable());
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
            if (queryIntentActivities != null) {
                getLogger().d(AppLovinLogger.SDK_TAG, "Found " + queryIntentActivities.size() + " main activities for this application");
                for (ResolveInfo resolveInfo : queryIntentActivities) {
                    if (stackTraceString.contains(resolveInfo.activityInfo.name)) {
                        return true;
                    }
                }
            }
            getLogger().w(AppLovinLogger.SDK_TAG, "AppLovin SDK was initialized too late in session; SDK should always be initialized within main activity and/or any relevant entry points");
            getLogger().w(AppLovinLogger.SDK_TAG, "Initialization instead happened from: " + stackTraceString);
        } catch (Throwable th) {
            getLogger().e(AppLovinLogger.SDK_TAG, "Error checking if sdk is initialized in main activity...", th);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public bc d() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        return this.s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return this.u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        this.s = true;
        this.e.a(new cq(this), 0L);
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public AppLovinAdService getAdService() {
        return this.n;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public Context getApplicationContext() {
        return this.c;
    }

    public o getConnectionManager() {
        return this.g;
    }

    public r getDataCollector() {
        return this.l;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public AppLovinEventService getEventService() {
        return this.q;
    }

    public z getFileManager() {
        return this.i;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public AppLovinLogger getLogger() {
        return this.d;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public AppLovinNativeAdService getNativeAdService() {
        return this.o;
    }

    public bn getPersistentPostbackManager() {
        return this.r;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    /* renamed from: getPostbackService */
    public PostbackServiceImpl mo34getPostbackService() {
        return this.p;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public String getSdkKey() {
        return this.f1576a;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public AppLovinSdkSettings getSettings() {
        return this.b;
    }

    public ca getSettingsManager() {
        return this.f;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public AppLovinTargetingData getTargetingData() {
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        this.f.d();
        this.f.b();
        this.h.a();
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public boolean hasCriticalErrors() {
        return this.v || this.w;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public void initialize(String str, AppLovinSdkSettings appLovinSdkSettings, Context context) {
        this.f1576a = str;
        this.b = appLovinSdkSettings;
        this.c = context;
        try {
            k kVar = new k();
            this.d = kVar;
            this.f = new ca(this);
            this.e = new cr(this);
            this.g = new o(this);
            this.h = new cc(this);
            this.i = new z(this);
            this.l = new r(this);
            this.n = new AppLovinAdServiceImpl(this);
            this.o = new be(this);
            this.p = new PostbackServiceImpl(this);
            this.q = new EventServiceImpl(this);
            this.r = new bn(this);
            this.j = new b(this);
            this.k = new bc(this);
            this.m = new m(this);
            if (!i()) {
                this.v = true;
                Log.e(AppLovinLogger.SDK_TAG, "Unable to initalize AppLovin SDK: Android SDK version has to be at least level 8");
            }
            if (str == null || str.length() < 1) {
                this.w = true;
                Log.e(AppLovinLogger.SDK_TAG, "Unable to find AppLovin SDK key. Please add     meta-data android:name=\"applovin.sdk.key\" android:value=\"YOUR_SDK_KEY_HERE\" into AndroidManifest.xml.");
                StringWriter stringWriter = new StringWriter();
                new Throwable("").printStackTrace(new PrintWriter(stringWriter));
                Log.e(AppLovinLogger.SDK_TAG, "Called with an invalid SDK key from: " + stringWriter.toString());
            }
            if (hasCriticalErrors()) {
                a(false);
                return;
            }
            kVar.a(this.f);
            if (appLovinSdkSettings instanceof ax) {
                kVar.a(((ax) appLovinSdkSettings).a());
            }
            a(context);
            this.f.c();
            if (((Boolean) this.f.a(bx.b)).booleanValue()) {
                this.f.a(appLovinSdkSettings);
                this.f.b();
            }
            g();
        } catch (Throwable th) {
            Log.e(AppLovinLogger.SDK_TAG, "Failed to load AppLovin SDK, ad serving will be disabled", th);
            a(false);
        }
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public void initializeSdk() {
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public boolean isEnabled() {
        return this.t;
    }

    public boolean isInitializedInMainActivity() {
        return this.x;
    }

    public void setInitializedInMainActivity(boolean z) {
        this.x = z;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public void setPluginVersion(String str) {
        if (str == null) {
            throw new IllegalArgumentException("No version specified");
        }
        this.f.a(bx.z, str);
        this.f.b();
    }
}
