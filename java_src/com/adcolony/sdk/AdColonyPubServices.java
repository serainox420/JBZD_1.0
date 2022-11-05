package com.adcolony.sdk;

import android.app.Activity;
import android.os.Build;
import com.adcolony.sdk.bn;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class AdColonyPubServices {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f983a = false;

    /* loaded from: classes.dex */
    public enum LogLevel {
        LOG_LEVEL_ERROR,
        LOG_LEVEL_WARN,
        LOG_LEVEL_INFO,
        LOG_LEVEL_DEBUG,
        LOG_LEVEL_VERBOSE
    }

    /* loaded from: classes.dex */
    public enum NotificationType {
        NONE,
        TOAST,
        MODAL
    }

    /* loaded from: classes.dex */
    public enum ServiceAvailability {
        SERVICE_UNKNOWN,
        SERVICE_UNAVAILABLE,
        SERVICE_CONNECTING,
        SERVICE_AVAILABLE,
        SERVICE_INVISIBLE,
        SERVICE_MAINTENANCE,
        SERVICE_DISABLED,
        SERVICE_BANNED
    }

    private static String a() {
        return "AdColonyPubServices";
    }

    public static void configure(Activity activity, Map<String, Object> map) {
        if (Build.VERSION.SDK_INT < bn.f1205a) {
            bz.aK().a(bn.a.YVOLVER_ERROR_INSUFFICIENT_OS_VERSION, "Adcolony requires a higher OS Version in config", true, ServiceAvailability.SERVICE_UNAVAILABLE);
        } else if (activity == null) {
            bz.aK().a(bn.a.YVOLVER_ERROR_CLIENT_EXCEPTION, "AdColony requires a valid activity in config. It cannot be null.", false, ServiceAvailability.SERVICE_UNAVAILABLE);
        } else {
            String appID = AdColony.getAppOptions().getAppID();
            if (appID == null) {
                appID = "";
            }
            if (map == null) {
                map = new HashMap<>();
                map.put("yv_apikey", appID);
            } else if (!map.keySet().contains("yv_apikey")) {
                map.put("yv_apikey", appID);
            }
            try {
                bz.aK().an();
                bz.aK().b(activity);
                bz.aK().b(map);
                f983a = true;
            } catch (Exception e) {
                bz.aK().a(e, "AdColonyPubServices.configure");
            }
        }
    }

    public static void addListener(AdColonyPubServicesCallbacks adColonyPubServicesCallbacks) {
        try {
            bz.aK().a(adColonyPubServicesCallbacks);
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.addListener");
        }
    }

    public static void removeListener(AdColonyPubServicesCallbacks adColonyPubServicesCallbacks) {
        try {
            bz.aK().b(adColonyPubServicesCallbacks);
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.removeListener");
        }
    }

    public static void onAdOpened() {
        if (f983a) {
            bz.aK().n();
        }
    }

    public static void onAdClosed() {
        if (f983a) {
            bz.aK().o();
        }
    }

    public static void grantRewardFromInAppPurchaseGoogle(String str, String str2, String str3, long j, int i) {
        try {
            bz.aK().a(str, str2, str3, j, i);
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.grantRewardFromInAppPurchaseGoogle");
        }
    }

    public static void grantRewardFromInAppPurchaseAmazon(String str, String str2, String str3, String str4, int i) {
        try {
            bz.aK().a(str, str2, str3, str4, i);
        } catch (Exception e) {
            bz.aK().a(e, "grantRewardFromInAppPurchaseAmazon()");
        }
    }

    public static void setNotificationsAllowed(EnumSet<NotificationType> enumSet) {
        try {
            bz.aK().a(enumSet);
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.setNotificationsAllowed");
        }
    }

    public static void showOverlay() {
        try {
            cp.b().a("", false, false);
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.showOverlay");
        }
    }

    public static void closeOverlay() {
        try {
            cp.b().d();
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.closeOverlay");
        }
    }

    public static boolean isOverlayVisible() {
        try {
            return cp.b().e();
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.isOverlayVisible");
            return false;
        }
    }

    public static boolean isServiceAvailable() {
        try {
            return bz.aK().w();
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.isServiceAvailable");
            return false;
        }
    }

    public static Map<String, Object> getExperiments() {
        try {
            return bz.aK().aa();
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.getExperiments");
            return null;
        }
    }

    public static Object getExperimentValue(String str) {
        try {
            return bz.aK().r(str);
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.getExperimentValue");
            return null;
        }
    }

    public static long getStatValue(String str) throws Exception {
        try {
            return bz.aK().o(str);
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.getStatValue");
            return 0L;
        }
    }

    public static ArrayList<HashMap<String, Object>> getStats() {
        try {
            return bz.aK().L();
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.getStats");
            return null;
        }
    }

    public static boolean setStat(String str, long j) {
        try {
            return bz.aK().a(str, j);
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.setStat");
            return false;
        }
    }

    public static boolean incrementStat(String str, long j) {
        try {
            return bz.aK().b(str, j);
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.incrementStat");
            return false;
        }
    }

    public static void refreshStats() {
        try {
            bz.aK().C();
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.refreshStats");
        }
    }

    public static void markStartRound() {
        try {
            bz.aK().M();
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.markStartRound");
        }
    }

    public static void markEndRound() {
        try {
            bz.aK().N();
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.markEndRound");
        }
    }

    public static AdColonyPubServicesVIPInformation getVIPInformation() {
        try {
            return bz.aK().Z();
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.getVIPInformation");
            return null;
        }
    }

    public static void registerForPushNotifications(String str) {
        try {
            bz.aK().s(str);
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.registerForPushNotifications");
        }
    }

    public static void unregisterForPushNotifications() {
        try {
            bz.aK().ae();
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.unregisterForPushNotifications");
        }
    }

    static void a(String str) {
        try {
            bz.aK().i(str);
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.setDeviceToken");
        }
    }

    static void b(String str) {
        try {
            bz.aK().j(str);
        } catch (Exception e) {
            bz.aK().a(e, "AdColonyPubServices.setAdvertisingId");
        }
    }
}
