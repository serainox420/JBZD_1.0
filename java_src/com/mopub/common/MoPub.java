package com.mopub.common;

import android.app.Activity;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Reflection;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class MoPub {
    public static final String SDK_VERSION = "4.11.0";

    /* renamed from: a  reason: collision with root package name */
    private static volatile LocationAwareness f4343a = LocationAwareness.NORMAL;
    private static volatile int b = 6;
    private static boolean c = false;
    private static Method d;

    /* loaded from: classes3.dex */
    public enum LocationAwareness {
        NORMAL,
        TRUNCATED,
        DISABLED
    }

    public static LocationAwareness getLocationAwareness() {
        return f4343a;
    }

    public static void setLocationAwareness(LocationAwareness locationAwareness) {
        f4343a = locationAwareness;
    }

    public static int getLocationPrecision() {
        return b;
    }

    public static void setLocationPrecision(int i) {
        b = Math.min(Math.max(0, i), 6);
    }

    public static void onCreate(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onCreate(activity);
        a(activity);
    }

    public static void onStart(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onStart(activity);
        a(activity);
    }

    public static void onPause(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onPause(activity);
    }

    public static void onResume(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onResume(activity);
        a(activity);
    }

    public static void onRestart(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onRestart(activity);
        a(activity);
    }

    public static void onStop(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onStop(activity);
    }

    public static void onDestroy(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onDestroy(activity);
    }

    public static void onBackPressed(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onBackPressed(activity);
    }

    @Deprecated
    public static void initializeRewardedVideo(Activity activity, MediationSettings... mediationSettingsArr) {
        try {
            new Reflection.MethodBuilder(null, "initializeRewardedVideo").setStatic(Class.forName("com.mopub.mobileads.MoPubRewardedVideos")).addParam(Activity.class, activity).addParam(MediationSettings[].class, mediationSettingsArr).execute();
        } catch (ClassNotFoundException e) {
            MoPubLog.w("initializeRewardedVideo was called without the rewarded video module");
        } catch (NoSuchMethodException e2) {
            MoPubLog.w("initializeRewardedVideo was called without the rewarded video module");
        } catch (Exception e3) {
            MoPubLog.e("Error while initializing rewarded video", e3);
        }
    }

    @VisibleForTesting
    static void a(Activity activity) {
        if (!c) {
            c = true;
            try {
                d = Reflection.getDeclaredMethodWithTraversal(Class.forName("com.mopub.mobileads.MoPubRewardedVideoManager"), "updateActivity", Activity.class);
            } catch (ClassNotFoundException e) {
            } catch (NoSuchMethodException e2) {
            }
        }
        if (d != null) {
            try {
                d.invoke(null, activity);
            } catch (IllegalAccessException e3) {
                MoPubLog.e("Error while attempting to access the update activity method - this should not have happened", e3);
            } catch (InvocationTargetException e4) {
                MoPubLog.e("Error while attempting to access the update activity method - this should not have happened", e4);
            }
        }
    }

    @Deprecated
    public static void setRewardedVideoListener(Object obj) {
        try {
            new Reflection.MethodBuilder(null, "setRewardedVideoListener").setStatic(Class.forName("com.mopub.mobileads.MoPubRewardedVideos")).addParam(Class.forName("com.mopub.mobileads.MoPubRewardedVideoListener"), obj).execute();
        } catch (ClassNotFoundException e) {
            MoPubLog.w("setRewardedVideoListener was called without the rewarded video module");
        } catch (NoSuchMethodException e2) {
            MoPubLog.w("setRewardedVideoListener was called without the rewarded video module");
        } catch (Exception e3) {
            MoPubLog.e("Error while setting rewarded video listener", e3);
        }
    }

    @Deprecated
    public static void loadRewardedVideo(String str, MediationSettings... mediationSettingsArr) {
        loadRewardedVideo(str, null, mediationSettingsArr);
    }

    @Deprecated
    public static void loadRewardedVideo(String str, Object obj, MediationSettings... mediationSettingsArr) {
        try {
            new Reflection.MethodBuilder(null, "loadRewardedVideo").setStatic(Class.forName("com.mopub.mobileads.MoPubRewardedVideos")).addParam(String.class, str).addParam(Class.forName("com.mopub.mobileads.MoPubRewardedVideoManager$RequestParameters"), obj).addParam(MediationSettings[].class, mediationSettingsArr).execute();
        } catch (ClassNotFoundException e) {
            MoPubLog.w("loadRewardedVideo was called without the rewarded video module");
        } catch (NoSuchMethodException e2) {
            MoPubLog.w("loadRewardedVideo was called without the rewarded video module");
        } catch (Exception e3) {
            MoPubLog.e("Error while loading rewarded video", e3);
        }
    }

    @Deprecated
    public static boolean hasRewardedVideo(String str) {
        try {
            return ((Boolean) new Reflection.MethodBuilder(null, "hasRewardedVideo").setStatic(Class.forName("com.mopub.mobileads.MoPubRewardedVideos")).addParam(String.class, str).execute()).booleanValue();
        } catch (ClassNotFoundException e) {
            MoPubLog.w("hasRewardedVideo was called without the rewarded video module");
            return false;
        } catch (NoSuchMethodException e2) {
            MoPubLog.w("hasRewardedVideo was called without the rewarded video module");
            return false;
        } catch (Exception e3) {
            MoPubLog.e("Error while checking rewarded video", e3);
            return false;
        }
    }

    @Deprecated
    public static void showRewardedVideo(String str) {
        try {
            new Reflection.MethodBuilder(null, "showRewardedVideo").setStatic(Class.forName("com.mopub.mobileads.MoPubRewardedVideos")).addParam(String.class, str).execute();
        } catch (ClassNotFoundException e) {
            MoPubLog.w("showRewardedVideo was called without the rewarded video module");
        } catch (NoSuchMethodException e2) {
            MoPubLog.w("showRewardedVideo was called without the rewarded video module");
        } catch (Exception e3) {
            MoPubLog.e("Error while showing rewarded video", e3);
        }
    }
}
