package com.millennialmedia;

import android.app.Activity;
import android.app.Application;
import android.text.TextUtils;
import com.millennialmedia.clientmediation.MediationAdapter;
import com.millennialmedia.internal.ActivityListenerManager;
import com.millennialmedia.internal.AdPlacementReporter;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.adadapters.AdAdapter;
import com.millennialmedia.internal.adcontrollers.AdController;
import com.millennialmedia.internal.playlistserver.PlayListServer;
import com.millennialmedia.internal.playlistserver.PlayListServerAdapter;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class MMSDK {
    public static final String VERSION = "6.3.1-4006cb2";
    private static UserData c;
    private static AppInfo d;
    private static TestInfo e;
    private static final String b = MMSDK.class.getSimpleName();
    public static final Map<String, String> registeredPlugins = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    static boolean f4018a = false;
    public static boolean locationEnabled = true;

    public static void initialize(Application application) throws MMException {
        if (application == null) {
            throw new MMInitializationException("Unable to initialize SDK. Please provide a valid Application instance.");
        }
        if (f4018a) {
            MMLog.i(b, "Millennial Media SDK already initialized");
            return;
        }
        ThreadUtils.initialize();
        EnvironmentUtils.init(application);
        Handshake.initialize();
        ActivityListenerManager.init();
        PlayListServerAdapter.registerPackagedAdapters();
        AdAdapter.registerPackagedAdapters();
        AdController.registerPackagedControllers();
        a();
        Handshake.request(true);
        AdPlacementReporter.init();
        f4018a = true;
    }

    private static void a() {
        a("com.millennialmedia.clientmediation.AdMobMediationAdapter");
        a("com.millennialmedia.clientmediation.ConversentMediationAdapter");
        a("com.millennialmedia.clientmediation.InMobiMediationAdapter");
        a("com.millennialmedia.clientmediation.AdColonyMediationAdapter");
        a("com.millennialmedia.clientmediation.ChartboostMediationAdapter");
        a("com.millennialmedia.clientmediation.FacebookMediationAdapter");
        a("com.millennialmedia.clientmediation.MoPubMediationAdapter");
        a("com.millennialmedia.clientmediation.VungleMediationAdapter");
        a("com.millennialmedia.clientmediation.YahooMediationAdapter");
        a("com.millennialmedia.clientmediation.TapjoyMediationAdapter");
    }

    @Deprecated
    public static void initialize(Activity activity) {
        if (activity == null) {
            throw new IllegalStateException("Unable to initialize SDK, specified activity is null");
        }
        try {
            initialize(activity.getApplication());
        } catch (MMException e2) {
            throw new IllegalStateException(e2);
        }
    }

    @Deprecated
    public static void initialize(Activity activity, ActivityListenerManager.LifecycleState lifecycleState) {
        initialize(activity);
        ActivityListenerManager.setInitialStateForUnknownActivity(activity.hashCode(), lifecycleState);
    }

    public static boolean isInitialized() {
        return f4018a;
    }

    public static void registerPlayListServerAdapter(PlayListServerAdapter playListServerAdapter) {
        PlayListServerAdapter.registerAdapter(playListServerAdapter);
    }

    public static void setActiveAdServerAdapter(Class<? extends PlayListServerAdapter> cls) {
        PlayListServer.setActivePlayListServerAdapter(cls);
    }

    public static void registerAdAdapter(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        AdAdapter.registerAdapter(cls, cls2, cls3);
    }

    public static void registerAdController(AdController adController) {
        AdController.registerController(adController);
    }

    private static void a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (!MediationAdapter.class.isAssignableFrom(cls)) {
                MMLog.e(b, "Unable to register mediation adapter, specified class is not an instance of MediationAdapter");
            } else {
                ((MediationAdapter) cls.newInstance()).register();
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(b, "Registering client mediation adapter: " + cls.getName());
                }
            }
        } catch (ClassNotFoundException e2) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(b, "No class found for mediation adapter <" + str + ">");
            }
        } catch (Exception e3) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(b, "Unable to create new instance of mediation adapter", e3);
            }
        }
    }

    public static void registerMediatedAdAdapter(String str, Class<?> cls, Class<?> cls2) {
        AdAdapter.registerMediatedAdapter(str, cls, cls2);
    }

    public static boolean registerPlugin(String str, String str2) throws MMException {
        if (!f4018a) {
            throw new MMInitializationException("Unable to register plugin, SDK must be initialized first");
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            MMLog.e(b, "Unable to register plugin, neither id or version can be null or empty");
            return false;
        }
        registeredPlugins.put(str, str2);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(b, "Registered plugin with ID <" + str + "> and version <" + str2 + ">");
        }
        return true;
    }

    public static void setUserData(UserData userData) throws MMException {
        if (!f4018a) {
            throw new MMInitializationException("Unable to set user data, SDK must be initialized first");
        }
        c = userData;
    }

    public static UserData getUserData() {
        return c;
    }

    public static void setAppInfo(AppInfo appInfo) throws MMException {
        if (!f4018a) {
            throw new MMInitializationException("Unable to set app info, SDK must be initialized first");
        }
        d = appInfo;
    }

    public static AppInfo getAppInfo() {
        return d;
    }

    public static void setLocationEnabled(boolean z) throws MMException {
        if (!f4018a) {
            throw new MMInitializationException("Unable to set location state, SDK must be initialized first");
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.d(b, "Setting location enabled: " + z);
        }
        locationEnabled = z;
    }

    public static void setTestInfo(TestInfo testInfo) throws MMException {
        if (!f4018a) {
            throw new MMInitializationException("Unable to set test info, SDK must be initialized first");
        }
        e = testInfo;
    }

    public static TestInfo getTestInfo() {
        return e;
    }
}
