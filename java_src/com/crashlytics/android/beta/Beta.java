package com.crashlytics.android.beta;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.h;
import io.fabric.sdk.android.services.a.b;
import io.fabric.sdk.android.services.c.d;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.i;
import io.fabric.sdk.android.services.common.l;
import io.fabric.sdk.android.services.common.q;
import io.fabric.sdk.android.services.settings.f;
import io.fabric.sdk.android.services.settings.s;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class Beta extends h<Boolean> implements l {
    private static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    private static final String CRASHLYTICS_BUILD_PROPERTIES = "crashlytics-build.properties";
    static final String NO_DEVICE_TOKEN = "";
    public static final String TAG = "Beta";
    private final b<String> deviceTokenCache = new b<>();
    private final DeviceTokenLoader deviceTokenLoader = new DeviceTokenLoader();
    private UpdatesController updatesController;

    public static Beta getInstance() {
        return (Beta) c.a(Beta.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.h
    @TargetApi(14)
    public boolean onPreExecute() {
        this.updatesController = createUpdatesController(Build.VERSION.SDK_INT, (Application) getContext().getApplicationContext());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.fabric.sdk.android.h
    /* renamed from: doInBackground */
    public Boolean mo38doInBackground() {
        c.h().a(TAG, "Beta kit initializing...");
        Context context = getContext();
        IdManager idManager = getIdManager();
        if (TextUtils.isEmpty(getBetaDeviceToken(context, idManager.j()))) {
            c.h().a(TAG, "A Beta device token was not found for this app");
            return false;
        }
        c.h().a(TAG, "Beta device token is present, checking for app updates.");
        f betaSettingsData = getBetaSettingsData();
        BuildProperties loadBuildProperties = loadBuildProperties(context);
        if (canCheckForUpdates(betaSettingsData, loadBuildProperties)) {
            this.updatesController.initialize(context, this, idManager, betaSettingsData, loadBuildProperties, new d(this), new q(), new io.fabric.sdk.android.services.network.b(c.h()));
        }
        return true;
    }

    @TargetApi(14)
    UpdatesController createUpdatesController(int i, Application application) {
        return i >= 14 ? new ActivityLifecycleCheckForUpdatesController(getFabric().e(), getFabric().f()) : new ImmediateCheckForUpdatesController();
    }

    @Override // io.fabric.sdk.android.services.common.l
    public Map<IdManager.DeviceIdentifierType, String> getDeviceIdentifiers() {
        String betaDeviceToken = getBetaDeviceToken(getContext(), getIdManager().j());
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(betaDeviceToken)) {
            hashMap.put(IdManager.DeviceIdentifierType.FONT_TOKEN, betaDeviceToken);
        }
        return hashMap;
    }

    @Override // io.fabric.sdk.android.h
    public String getIdentifier() {
        return "com.crashlytics.sdk.android:beta";
    }

    @Override // io.fabric.sdk.android.h
    public String getVersion() {
        return "1.2.4.dev";
    }

    boolean canCheckForUpdates(f fVar, BuildProperties buildProperties) {
        return (fVar == null || TextUtils.isEmpty(fVar.f5716a) || buildProperties == null) ? false : true;
    }

    private String getBetaDeviceToken(Context context, String str) {
        String str2;
        try {
            str2 = this.deviceTokenCache.a(context, this.deviceTokenLoader);
            if ("".equals(str2)) {
                str2 = null;
            }
        } catch (Exception e) {
            c.h().e(TAG, "Failed to load the Beta device token", e);
            str2 = null;
        }
        c.h().a(TAG, "Beta device token present: " + (!TextUtils.isEmpty(str2)));
        return str2;
    }

    private f getBetaSettingsData() {
        s b = io.fabric.sdk.android.services.settings.q.a().b();
        if (b != null) {
            return b.f;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0088 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private BuildProperties loadBuildProperties(Context context) {
        InputStream inputStream;
        Exception exc;
        BuildProperties buildProperties;
        try {
            inputStream = context.getAssets().open(CRASHLYTICS_BUILD_PROPERTIES);
            if (inputStream != null) {
                try {
                    try {
                        BuildProperties fromPropertiesStream = BuildProperties.fromPropertiesStream(inputStream);
                        try {
                            c.h().a(TAG, fromPropertiesStream.packageName + " build properties: " + fromPropertiesStream.versionName + " (" + fromPropertiesStream.versionCode + ") - " + fromPropertiesStream.buildId);
                            buildProperties = fromPropertiesStream;
                        } catch (Exception e) {
                            buildProperties = fromPropertiesStream;
                            exc = e;
                            c.h().e(TAG, "Error reading Beta build properties", exc);
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e2) {
                                    c.h().e(TAG, "Error closing Beta build properties asset", e2);
                                }
                            }
                            return buildProperties;
                        }
                    } catch (Exception e3) {
                        buildProperties = null;
                        exc = e3;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e4) {
                            c.h().e(TAG, "Error closing Beta build properties asset", e4);
                        }
                    }
                    throw th;
                }
            } else {
                buildProperties = null;
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e5) {
                    c.h().e(TAG, "Error closing Beta build properties asset", e5);
                }
            }
        } catch (Exception e6) {
            inputStream = null;
            exc = e6;
            buildProperties = null;
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
            if (inputStream != null) {
            }
            throw th;
        }
        return buildProperties;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getOverridenSpiEndpoint() {
        return i.b(getContext(), CRASHLYTICS_API_ENDPOINT);
    }
}
