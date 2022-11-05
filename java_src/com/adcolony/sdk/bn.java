package com.adcolony.sdk;

import android.util.SparseArray;
import com.adcolony.sdk.AdColonyPubServices;
import com.loopme.debugging.Params;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
class bn {
    static final int A = 6;
    static final int B = 7;
    static final int C = 8;
    static final int D = 9;
    static final int E = 0;
    static final int F = 1;
    static final int G = 2;
    static final int H = -1;
    static final int I = 0;
    static final int J = 1;
    static final int K = 2;
    static final int L = 3;
    static final int M = 4;
    static final int N = 5;
    static final int O = 0;
    static final int P = 1;
    static final int Q = 2;
    static final int R = 4;
    static final int S = 8;
    static final int T = 16;
    static final int U = 32;
    static final int V = 64;
    static final String Z = "op";
    static final String aN = "RescheduleDuringInit";
    static final String aO = "InternetAvailable";
    static final String aP = "InternetAvailableFromTimer";
    static final String aQ = "ConfigOutdated";
    static final String aR = "ResetDeviceId";
    static final String aS = "SetApiKey";
    static final String aT = "SetSessionToken";
    static final String aU = "SetProductionMode";
    static final String aV = "SetCustomDevServer";
    static final String aW = "SetDelegate";
    static final String aX = "SetDeviceToken";
    static final String aY = "GracePeriodExpired";
    static final String aZ = "InvisibleReinitAttempt";
    static final String aa = "stat";
    static final String ab = "stat_transaction_id";
    static final String ac = "time";
    static final String ae = "checksum";
    static final String ba = "SuperUserCommand";
    static final String bb = "NewPushToken";
    static final String bc = "AcquiredAdvertisingId";
    static final String bd = "error";
    static final String be = "invalidStatType";
    static final String bf = "invalidStatOperation";
    static final String bg = "unknownStat";
    static final int j = -1;
    static final int k = 0;
    static final int l = 1;
    static final int m = 2;
    static final int n = 0;
    static final int o = 1;
    static final int p = 2;
    static final int q = 4;
    static final int r = 8;
    static final int s = 16;
    static final int t = -1;
    static final int u = 0;
    static final int v = 1;
    static final int w = 2;
    static final int x = 3;
    static final int y = 4;
    static final int z = 5;
    String W = "YvolverInternalNotificationSendingStats";
    String X = "YvolverInternalNotificationDigitalRedemptionCompleted";
    String Y = "statsQueueKey";

    /* renamed from: a  reason: collision with root package name */
    static int f1205a = 14;
    static int b = 0;
    static int c = 1;
    static int d = 0;
    static int e = 1;
    static int f = 2;
    static int g = 0;
    static int h = 1;
    static int i = 2;
    static String ad = "client_time";
    static String af = Params.DEVICE_ID;
    static String ag = "error";
    static String ah = "error_id";
    static String ai = "notifications";
    static String aj = "non_consumables";
    static String ak = "stats";
    static String al = "user_info";
    static String am = "app_state";
    static String an = "status";
    static String ao = "config_version";
    static String ap = "config_outdated";
    static String aq = "reset_device_id";
    static String ar = "assets";
    static String as = "name";
    static String at = "type";
    static String au = "value";
    static String av = "ops";
    static String aw = com.intentsoftware.addapptr.w.PROMO_NAME;
    static String ax = "https://config-prod.yvolver.com/api/public/app/config";
    static String ay = "https://config-swap.yvolver.com/api/public/app/config";
    static String az = "https://config-alpha.yvolver.com/api/public/app/config";
    static String aA = "https://config-staging.yvolver.com/api/public/app/config";
    static String aB = "http://config-dev.yvolver.com/api/public/app/config";
    static String aC = "log";
    static String aD = Consts.CommandInit;
    static String aE = "reward_iap_android";
    static String aF = "reward_iap_amazon";
    static String aG = "reward_custom";
    static String aH = "redemption_start";
    static String aI = "redemption_finish";
    static String aJ = "update_stats";
    static String aK = "refresh_device";
    static String aL = "digital_grant";
    static String aM = "reward_server";
    private static Map<String, AdColonyPubServices.ServiceAvailability> bi = null;
    static final SparseArray<String> bh = new SparseArray<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum a {
        YVOLVER_ERROR_NONE,
        YVOLVER_ERROR_UNKNOWN,
        YVOLVER_ERROR_INVALID_SSL_DOMAIN,
        YVOLVER_ERROR_TIMEOUT,
        YVOLVER_ERROR_HOST_UNREACHABLE,
        YVOLVER_ERROR_WEB_ERROR,
        YVOLVER_ERROR_SERVER_MAINTENANCE,
        YVOLVER_ERROR_APP_DISABLED,
        YVOLVER_ERROR_APP_BANNED,
        YVOLVER_ERROR_SESSION_CONNECTED,
        YVOLVER_ERROR_SESSION_DISCONNECTED,
        YVOLVER_ERROR_MALFORMED_ERROR_ID,
        YVOLVER_ERROR_UNKNOWN_APP_STATE,
        YVOLVER_ERROR_MALFORMED_RESULTS,
        YVOLVER_ERROR_MISSING_PARAMETER,
        YVOLVER_ERROR_CLIENT_EXCEPTION,
        YVOLVER_ERROR_API_SUBMISSION,
        YVOLVER_ERROR_SERVER_TO_SERVER,
        YVOLVER_ERROR_SSL,
        YVOLVER_ERROR_JSON,
        YVOLVER_ERROR_NULL_VALUE,
        YVOLVER_ERROR_NULL_RESPONSE,
        YVOLVER_ERROR_IO_FAILURE,
        YVOLVER_ERROR_MISC,
        YVOLVER_ERROR_DB_REWARD,
        YVOLVER_ERROR_INVALIDCONSUMERKEY,
        YVOLVER_ERROR_INVALID_IAP_PAYLOAD_SIGNATURE,
        YVOLVER_ERROR_INSUFFICIENT_OS_VERSION,
        YVOLVER_ERROR_UNCAUGHT_EXCEPTION,
        YVOLVER_ERROR_NUM
    }

    /* loaded from: classes.dex */
    enum b {
        YVOLVER_SEVERITY_NONE,
        YVOLVER_SEVERITY_ERROR,
        YVOLVER_SEVERITY_WARNING,
        YVOLVER_SEVERITY_NOTICE,
        YVOLVER_SEVERITY_DEBUG
    }

    bn() {
    }

    static {
        bh.put(a.YVOLVER_ERROR_NONE.ordinal(), "None");
        bh.put(a.YVOLVER_ERROR_UNKNOWN.ordinal(), "Unknown error code");
        bh.put(a.YVOLVER_ERROR_INVALID_SSL_DOMAIN.ordinal(), "Invalid SSL parameters");
        bh.put(a.YVOLVER_ERROR_TIMEOUT.ordinal(), "A network timeout occurred");
        bh.put(a.YVOLVER_ERROR_HOST_UNREACHABLE.ordinal(), "The host is unreachable");
        bh.put(a.YVOLVER_ERROR_WEB_ERROR.ordinal(), "Web server error");
        bh.put(a.YVOLVER_ERROR_SERVER_MAINTENANCE.ordinal(), "The server is in maintenance mode");
        bh.put(a.YVOLVER_ERROR_APP_DISABLED.ordinal(), "The app has been disabled by the developer");
        bh.put(a.YVOLVER_ERROR_APP_BANNED.ordinal(), "The app has been banned");
        bh.put(a.YVOLVER_ERROR_SESSION_CONNECTED.ordinal(), "None");
        bh.put(a.YVOLVER_ERROR_SESSION_DISCONNECTED.ordinal(), "None");
        bh.put(a.YVOLVER_ERROR_MALFORMED_ERROR_ID.ordinal(), "Malformed error id");
        bh.put(a.YVOLVER_ERROR_UNKNOWN_APP_STATE.ordinal(), "None");
        bh.put(a.YVOLVER_ERROR_MALFORMED_RESULTS.ordinal(), "Malformed results");
        bh.put(a.YVOLVER_ERROR_MISSING_PARAMETER.ordinal(), "Missing parameter from server");
        bh.put(a.YVOLVER_ERROR_CLIENT_EXCEPTION.ordinal(), "Client exception");
        bh.put(a.YVOLVER_ERROR_API_SUBMISSION.ordinal(), "API submission error");
        bh.put(a.YVOLVER_ERROR_SERVER_TO_SERVER.ordinal(), "Server to server error");
        bh.put(a.YVOLVER_ERROR_SSL.ordinal(), "SSL error");
        bh.put(a.YVOLVER_ERROR_JSON.ordinal(), "JSON error");
        bh.put(a.YVOLVER_ERROR_NULL_VALUE.ordinal(), "A value returned null");
        bh.put(a.YVOLVER_ERROR_NULL_RESPONSE.ordinal(), "Server response was null");
        bh.put(a.YVOLVER_ERROR_IO_FAILURE.ordinal(), "An I/O error occurred.");
        bh.put(a.YVOLVER_ERROR_MISC.ordinal(), "");
        bh.put(a.YVOLVER_ERROR_DB_REWARD.ordinal(), "Error persisting purchase");
        bh.put(a.YVOLVER_ERROR_INVALIDCONSUMERKEY.ordinal(), "Please check your api key");
        bh.put(a.YVOLVER_ERROR_INVALID_IAP_PAYLOAD_SIGNATURE.ordinal(), "Please check your secret key");
        bh.put(a.YVOLVER_ERROR_INSUFFICIENT_OS_VERSION.ordinal(), "Insufficient OS Version");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2) {
        if (i2 == a.YVOLVER_ERROR_NONE.ordinal()) {
            return 0;
        }
        return 1 << (i2 - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final Map<String, AdColonyPubServices.ServiceAvailability> a() {
        if (bi == null) {
            bi = new HashMap();
            bi.put("unavailable", AdColonyPubServices.ServiceAvailability.SERVICE_UNAVAILABLE);
            bi.put("connecting", AdColonyPubServices.ServiceAvailability.SERVICE_CONNECTING);
            bi.put("enabledApp", AdColonyPubServices.ServiceAvailability.SERVICE_AVAILABLE);
            bi.put("invisibleApp", AdColonyPubServices.ServiceAvailability.SERVICE_INVISIBLE);
            bi.put("serverMaintenance", AdColonyPubServices.ServiceAvailability.SERVICE_MAINTENANCE);
            bi.put("disabledApp", AdColonyPubServices.ServiceAvailability.SERVICE_DISABLED);
            bi.put("bannedApp", AdColonyPubServices.ServiceAvailability.SERVICE_BANNED);
        }
        return bi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AdColonyPubServices.ServiceAvailability a(String str) {
        AdColonyPubServices.ServiceAvailability serviceAvailability = AdColonyPubServices.ServiceAvailability.SERVICE_UNKNOWN;
        if (a().containsKey(str)) {
            return a().get(str);
        }
        return serviceAvailability;
    }
}
