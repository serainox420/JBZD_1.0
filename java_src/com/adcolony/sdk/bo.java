package com.adcolony.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import com.adcolony.sdk.AdColonyPubServices;
import com.adcolony.sdk.bn;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.mopub.common.GpsHelper;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.io.File;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Currency;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bo {
    private Context c;
    private Map<String, Object> b = new HashMap();
    private String d = "fuzz.tmp";

    /* renamed from: a  reason: collision with root package name */
    boolean f1208a = false;

    private bo() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public bo(Context context) {
        this.c = context;
    }

    private String s() {
        return "AdColonyPubServices";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return (this.b == null || !this.b.containsKey("appVersion") || this.b.get("appVersion") == null) ? "" : (String) this.b.get("appVersion");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        return (this.b == null || !this.b.containsKey("androidVersion") || this.b.get("androidVersion") == null) ? "" : (String) this.b.get("androidVersion");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        if (this.b == null || !this.b.containsKey("androidSdkVersion") || this.b.get("androidSdkVersion") == null) {
            return 0;
        }
        return ((Integer) this.b.get("androidSdkVersion")).intValue();
    }

    String d() {
        return (this.b == null || !this.b.containsKey("manufacturer") || this.b.get("manufacturer") == null) ? "" : (String) this.b.get("manufacturer");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e() {
        return (this.b == null || !this.b.containsKey(PubMaticConstants.MODEL_PARAM) || this.b.get(PubMaticConstants.MODEL_PARAM) == null) ? "" : (String) this.b.get(PubMaticConstants.MODEL_PARAM);
    }

    String f() {
        return (this.b == null || !this.b.containsKey(PubMaticConstants.COUNTRY_PARAM) || this.b.get(PubMaticConstants.COUNTRY_PARAM) == null) ? "" : (String) this.b.get(PubMaticConstants.COUNTRY_PARAM);
    }

    String g() {
        return (this.b == null || !this.b.containsKey("countryCode") || this.b.get("countryCode") == null) ? "" : (String) this.b.get("countryCode");
    }

    String h() {
        return (this.b == null || !this.b.containsKey(AnalyticsSQLiteHelper.TRANSACTION_ITEM_CURRENCY_CODE) || this.b.get(AnalyticsSQLiteHelper.TRANSACTION_ITEM_CURRENCY_CODE) == null) ? "" : (String) this.b.get(AnalyticsSQLiteHelper.TRANSACTION_ITEM_CURRENCY_CODE);
    }

    String i() {
        return (this.b == null || !this.b.containsKey("platform") || this.b.get("platform") == null) ? "" : (String) this.b.get("platform");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String j() {
        return u();
    }

    String k() {
        return (this.b == null || !this.b.containsKey("realDeviceId") || this.b.get("realDeviceId") == null) ? "" : (String) this.b.get("realDeviceId");
    }

    String l() {
        return (this.b == null || !this.b.containsKey("sdkVersion") || this.b.get("sdkVersion") == null) ? "" : (String) this.b.get("sdkVersion");
    }

    float m() {
        if (this.b == null || !this.b.containsKey("contentScale") || this.b.get("contentScale") == null) {
            return 2.0f;
        }
        return ((Float) this.b.get("contentScale")).floatValue();
    }

    Map<String, Object> n() {
        if (this.b == null || !this.b.containsKey("applicationCapabilities") || this.b.get("applicationCapabilities") == null) {
            return null;
        }
        return (Map) this.b.get("applicationCapabilities");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String o() {
        return new JSONObject(new TreeMap(this.b)).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p() {
        try {
            this.b.clear();
            this.c = bz.aK().l();
            if (this.c != null) {
                String packageName = bz.aK().l().getPackageName();
                try {
                    PackageInfo packageInfo = bz.aK().l().getPackageManager().getPackageInfo(packageName, 0);
                    int i = packageInfo.versionCode;
                    String str = packageInfo.versionName;
                    long j = packageInfo.firstInstallTime;
                    long j2 = packageInfo.lastUpdateTime;
                    String b = co.b(j);
                    String b2 = co.b(j2);
                    this.b.put("appInstallTime", b);
                    this.b.put("appUpdateTime", b2);
                    this.b.put("appVersionCode", Integer.valueOf(i));
                    this.b.put("appVersion", str);
                } catch (Exception e) {
                    cb.a(s(), "Caught exception in device data update: " + e.getMessage(), e);
                }
                String ah = bz.aK().ah();
                if (ah == null) {
                    ah = "";
                }
                String e2 = AdColony.e();
                String d = AdColony.d();
                String str2 = Build.VERSION.RELEASE;
                String userID = AdColony.getAppOptions().getUserID();
                cb.b(s(), "advertisingID set in deviceData=" + d, true);
                cb.b(s(), "pushToken set in deviceData=" + ah, true);
                this.b.put("userId", userID);
                this.b.put("deviceIdAlt", e2);
                this.b.put("pushDeviceToken", ah);
                this.b.put(GpsHelper.ADVERTISING_ID_KEY, d);
                this.b.put("osVersion", str2);
                this.b.put("bundleId", packageName);
                this.b.put("androidVersion", Build.VERSION.RELEASE);
                this.b.put("androidSdkVersion", Integer.valueOf(Build.VERSION.SDK_INT));
                this.b.put("manufacturer", Build.MANUFACTURER);
                this.b.put(PubMaticConstants.MODEL_PARAM, Build.MODEL);
                this.b.put("locale", Locale.getDefault().toString());
                this.b.put("countryCode", Locale.getDefault().getCountry().toString());
                this.b.put(AnalyticsSQLiteHelper.TRANSACTION_ITEM_CURRENCY_CODE, Currency.getInstance(Locale.getDefault()).getCurrencyCode());
                this.b.put("languageCode", Locale.getDefault().getDisplayLanguage());
                this.b.put("platform", io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE);
                this.b.put("deviceId", u());
                this.b.put("contentScale", Float.valueOf(co.a()));
                this.b.put("applicationCapabilities", bz.aK().X());
                this.b.put("sdkVersion", bm.H());
                this.b.put("initParams", bz.aK().aF());
                this.b.put("screenHeight", Integer.valueOf(co.b()));
                this.b.put("screenWidth", Integer.valueOf(co.c()));
                TimeZone timeZone = TimeZone.getDefault();
                long minutes = TimeUnit.MILLISECONDS.toMinutes(TimeZone.getDefault().getRawOffset());
                boolean inDaylightTime = timeZone.inDaylightTime(new Date(System.currentTimeMillis()));
                this.b.put("timeZone", timeZone.getDisplayName());
                this.b.put("timeZoneGmtOffsetMinutes", Long.valueOf(minutes));
                this.b.put("timeZoneIsDst", Boolean.valueOf(inDaylightTime));
            }
            if (!t()) {
                bz.aK().a(bn.a.YVOLVER_ERROR_MISC, "Invalid device data", true, AdColonyPubServices.ServiceAvailability.SERVICE_UNAVAILABLE);
            }
        } catch (Exception e3) {
            cb.a(s(), "Unable to update deviceData due to exception:", e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q() {
        cb.b(s(), "reset deviceID", true);
        String v = v();
        if (v != null && !b(v)) {
            bz.aK().a(bn.a.YVOLVER_ERROR_MISC, "Failed to reset deviceID", false, AdColonyPubServices.ServiceAvailability.SERVICE_UNAVAILABLE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r() {
        File fileStreamPath = this.c.getFileStreamPath(this.d);
        if (fileStreamPath != null && fileStreamPath.exists()) {
            fileStreamPath.delete();
        }
    }

    private boolean t() {
        return (this.b == null || this.b.isEmpty() || a() == null || j() == null) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0041, code lost:
        if (b(r0) != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String u() {
        String str;
        String str2;
        String str3 = null;
        try {
            if (!this.c.getFileStreamPath(this.d).exists()) {
                str2 = null;
            } else {
                ObjectInputStream objectInputStream = new ObjectInputStream(this.c.openFileInput(this.d));
                str2 = (String) objectInputStream.readObject();
                try {
                    objectInputStream.close();
                } catch (Exception e) {
                    str3 = str2;
                }
            }
            str3 = str2;
        } catch (Exception e2) {
        }
        if (str3 == null) {
            cb.b(s(), "Problem getting deviceID. generating a new one.", true);
            str = v();
            if (str != null) {
            }
        }
        str = str3;
        if (str != null) {
            StringBuilder sb = new StringBuilder();
            char charAt = str.charAt(0);
            char charAt2 = str.charAt(19);
            char charAt3 = str.charAt(39);
            String substring = str.substring(1, 19);
            String substring2 = str.substring(21, 39);
            sb.append(charAt3);
            sb.append(charAt2);
            sb.append(charAt);
            sb.append("-");
            sb.append(substring);
            sb.append(substring2);
            str = sb.toString();
            if (str.charAt(0) != 'A' || str.charAt(1) != 'N' || str.charAt(2) != 'D') {
                cb.b(s(), "invalid deviceID", true);
            }
            cb.b(s(), "deviceID: " + str, true);
        } else {
            cb.b(s(), "Could not get deviceID", true);
        }
        return str;
    }

    private String v() {
        cb.b(s(), "generateDeviceID()", true);
        String uuid = UUID.randomUUID().toString();
        cb.b(s(), "generated deviceID=" + uuid, true);
        StringBuilder sb = new StringBuilder();
        String substring = uuid.substring(0, 18);
        String substring2 = uuid.substring(18, 36);
        sb.append(substring);
        sb.append(substring2);
        sb.insert(0, 'D');
        sb.insert(19, 'N');
        sb.insert(20, '$');
        sb.append('A');
        String sb2 = sb.toString();
        cb.b(s(), "fuzzified: " + sb2, true);
        return sb2;
    }

    private boolean b(String str) {
        cb.b(s(), "saveDeviceID()", true);
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(this.c.openFileOutput(this.d, 0));
            objectOutputStream.writeObject(str);
            objectOutputStream.flush();
            objectOutputStream.close();
            return true;
        } catch (Exception e) {
            cb.b(s(), "couldn't save " + this.d, true);
            return false;
        }
    }

    boolean a(String str) {
        if (str != null) {
            StringBuilder sb = new StringBuilder();
            String substring = str.substring(0, 18);
            String substring2 = str.substring(18, 36);
            sb.append(substring);
            sb.append(substring2);
            sb.insert(0, 'D');
            sb.insert(19, 'N');
            sb.insert(20, '$');
            sb.append('A');
            String sb2 = sb.toString();
            cb.b(s(), "fuzzified: " + sb2, true);
            return b(sb2);
        }
        return false;
    }
}
