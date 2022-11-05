package com.apprupt.sdk;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import org.json.JSONObject;
/* loaded from: classes.dex */
class Connectivity {

    /* renamed from: a  reason: collision with root package name */
    private final NetworkInfo f1713a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Connectivity(Context context) {
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1) {
            this.f1713a = null;
        } else {
            this.f1713a = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        }
    }

    public boolean a() {
        return this.f1713a != null && this.f1713a.isConnected();
    }

    public boolean b() {
        return this.f1713a != null && this.f1713a.isConnected() && this.f1713a.getType() == 0;
    }

    public boolean c() {
        return this.f1713a != null && this.f1713a.isConnected() && a(this.f1713a.getType(), this.f1713a.getSubtype());
    }

    public String d() {
        if (this.f1713a == null) {
            return "";
        }
        int type = this.f1713a.getType();
        if (type == 1) {
            return "WIFI";
        }
        if (type == 0) {
            switch (this.f1713a.getSubtype()) {
                case 1:
                    return "GPRS";
                case 2:
                    return "EDGE";
                case 3:
                    return "UMTS";
                case 4:
                    return "CDMA";
                case 5:
                    return "EVDO_0";
                case 6:
                    return "EVDO_A";
                case 7:
                    return "1xRTT";
                case 8:
                    return "HSDPA";
                case 9:
                    return "HSUPA";
                case 10:
                    return "HSPA";
                case 11:
                    return "IDEN";
                case 12:
                    return "EVDO_B";
                case 13:
                    return "LTE";
                case 14:
                    return "EHRPD";
                case 15:
                    return "HSPAP";
                default:
                    return "UNKNOWN";
            }
        }
        return "NONE";
    }

    public JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.f1713a == null) {
                jSONObject.put("error", "Cannot retrieve connection info");
                jSONObject.put("isConnected", JSONObject.NULL);
                jSONObject.put("isMobile", JSONObject.NULL);
                jSONObject.put("type", "");
                jSONObject.put("isFast", JSONObject.NULL);
            } else {
                jSONObject.put("error", false);
                jSONObject.put("isConnected", a());
                jSONObject.put("isMobile", b());
                jSONObject.put("type", d());
                jSONObject.put("isFast", c());
            }
        } catch (Exception e) {
            Logger.a().c(e, "Cannot create JSON!");
        }
        return jSONObject;
    }

    public static boolean a(int i, int i2) {
        if (i == 1) {
            return true;
        }
        if (i != 0) {
            return false;
        }
        switch (i2) {
            case 1:
                return false;
            case 2:
                return false;
            case 3:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
            case 14:
            case 15:
                return true;
            case 4:
                return false;
            case 5:
                return false;
            case 6:
                return false;
            case 7:
                return false;
            case 11:
                return false;
            default:
                return false;
        }
    }
}
