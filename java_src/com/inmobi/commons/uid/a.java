package com.inmobi.commons.uid;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.inmobi.commons.IMIDType;
import com.inmobi.commons.data.DemogInfo;
import com.inmobi.commons.data.DeviceInfo;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.mopub.common.GpsHelper;
import java.util.Date;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UIDHelper.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Uri f3829a = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    private static AdvertisingId b = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a() {
        return "1";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        return InternalSDKUtil.getDigested(str, "SHA-1");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b() {
        return DemogInfo.getIDType(IMIDType.ID_SESSION);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c() {
        return DemogInfo.getIDType(IMIDType.ID_LOGIN);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(String str) {
        return InternalSDKUtil.getDigested(str, "MD5");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d() {
        try {
            Cursor query = InternalSDKUtil.getContext().getContentResolver().query(f3829a, new String[]{"aid"}, null, null, null);
            if (query == null || !query.moveToFirst()) {
                return null;
            }
            String string = query.getString(query.getColumnIndex("aid"));
            if (string != null) {
                if (string.length() != 0) {
                    return string;
                }
            }
            return null;
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to retrieve Facebook attrib id: " + e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e() {
        try {
            return (String) Class.forName("com.inmobi.commons.uid.PlatformId").getDeclaredMethod("getAndroidId", Context.class).invoke(null, InternalSDKUtil.getContext());
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AdvertisingId f() {
        return b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g() {
        b = new AdvertisingId();
        b.a(FileOperations.getPreferences(InternalSDKUtil.getContext(), InternalSDKUtil.IM_PREF, "gpid"));
        b.a(FileOperations.getBooleanPreferences(InternalSDKUtil.getContext(), InternalSDKUtil.IM_PREF, "limitadtrck"));
        new Thread(new Runnable() { // from class: com.inmobi.commons.uid.a.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Class<?> cls = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
                    Class<?> cls2 = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
                    Object invoke = cls.getDeclaredMethod("getAdvertisingIdInfo", Context.class).invoke(null, InternalSDKUtil.getContext());
                    String str = (String) cls2.getDeclaredMethod("getId", null).invoke(invoke, null);
                    a.b.a(str);
                    FileOperations.setPreferences(InternalSDKUtil.getContext(), InternalSDKUtil.IM_PREF, "gpid", str);
                    Boolean bool = (Boolean) cls2.getDeclaredMethod(GpsHelper.IS_LIMIT_AD_TRACKING_ENABLED_KEY, null).invoke(invoke, null);
                    a.b.a(bool.booleanValue());
                    FileOperations.setPreferences(InternalSDKUtil.getContext(), InternalSDKUtil.IM_PREF, "limitadtrck", bool.booleanValue());
                } catch (Exception e) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception getting advertiser id", e);
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean h() {
        try {
            return GooglePlayServicesUtil.isGooglePlayServicesAvailable(InternalSDKUtil.getContext()) == 0;
        } catch (NoClassDefFoundError e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean i() {
        AdvertisingId f = f();
        if (f != null) {
            return f.isLimitAdTracking();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(Context context) {
        String preferences = FileOperations.getPreferences(context, InternalSDKUtil.IM_PREF, UID.KEY_IMID);
        long longPreferences = FileOperations.getLongPreferences(context, InternalSDKUtil.IM_PREF, "timestamp");
        if (preferences == null) {
            preferences = UUID.randomUUID().toString();
            FileOperations.setPreferences(context, InternalSDKUtil.IM_PREF, UID.KEY_IMID, preferences);
            FileOperations.setPreferences(context, InternalSDKUtil.IM_PREF, UID.KEY_AID, DeviceInfo.getAid());
            FileOperations.setPreferences(context, InternalSDKUtil.IM_PREF, UID.KEY_APPENDED_ID, DeviceInfo.getAid());
        }
        if (longPreferences == 0) {
            FileOperations.setPreferences(context, InternalSDKUtil.IM_PREF, "timestamp", new Date().getTime());
        }
        Intent intent = new Intent();
        intent.setAction(InternalSDKUtil.ACTION_SHARE_INMID);
        intent.putExtra(UID.KEY_IMID, preferences);
        intent.putExtra(UID.KEY_APPENDED_ID, FileOperations.getPreferences(context, InternalSDKUtil.IM_PREF, UID.KEY_APPENDED_ID));
        intent.putExtra("timestamp", FileOperations.getLongPreferences(context, InternalSDKUtil.IM_PREF, "timestamp"));
        intent.putExtra(UID.KEY_AID, DeviceInfo.getAid());
        context.sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(Context context) {
        return FileOperations.getPreferences(context, InternalSDKUtil.IM_PREF, UID.KEY_IMID);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(Context context) {
        try {
            JSONObject jSONObject = new JSONObject();
            String preferences = FileOperations.getPreferences(context, InternalSDKUtil.IM_PREF, UID.KEY_AID);
            if (preferences != null) {
                jSONObject.put("p", preferences);
            }
            String preferences2 = FileOperations.getPreferences(context, InternalSDKUtil.IM_PREF, UID.KEY_APPENDED_ID);
            if (preferences2 != null && preferences2.contains(preferences)) {
                preferences2 = preferences2.replace(preferences, "");
            }
            if (preferences2 != null && preferences2.trim() != "") {
                if (preferences2.charAt(0) == ',') {
                    preferences2 = preferences2.substring(1);
                }
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(preferences2);
                jSONObject.put("s", jSONArray);
            }
            return jSONObject.toString();
        } catch (Exception e) {
            return null;
        }
    }
}
