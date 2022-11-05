package com.apprupt.sdk.mediation;

import android.app.Activity;
import org.json.JSONObject;
/* loaded from: classes.dex */
public interface Adapter {
    String a();

    void a(Activity activity);

    void a(JSONObject jSONObject);

    boolean a(Mediator mediator);

    boolean b();

    boolean b(Mediator mediator);

    void c(Mediator mediator);

    void d(Mediator mediator);

    /* loaded from: classes.dex */
    public enum Info {
        APPRUPT,
        ADCOLONY,
        ADMARVEL,
        MOPUB,
        ADMOB,
        DOUBLECLICK,
        CLIPKIT;

        @Override // java.lang.Enum
        public String toString() {
            return super.toString().toLowerCase();
        }

        public static String[] names() {
            Info[] values = values();
            String[] strArr = new String[values.length];
            int i = 0;
            for (Info info : values) {
                strArr[i] = info.toString();
                i++;
            }
            return strArr;
        }

        public Info fromString(String str) {
            Info[] values;
            for (Info info : values()) {
                if (info.toString().equals(str)) {
                    return info;
                }
            }
            return null;
        }

        public String toClassName() {
            switch (this) {
                case APPRUPT:
                    return "com.apprupt.sdk.CvAdapter";
                case ADCOLONY:
                    return "com.apprupt.sdk.AdColonyAdapter";
                case ADMARVEL:
                    return "com.apprupt.mediation.admarvel.AdMarvelAdapter";
                case MOPUB:
                    return "com.apprupt.mediation.mopub.Adapter";
                case ADMOB:
                    return "com.apprupt.mediation.google.AdMobAdapter";
                case DOUBLECLICK:
                    return "com.apprupt.mediation.google.DoubleclickAdapter";
                case CLIPKIT:
                    return "com.apprupt.mediation.clipkit.Adapter";
                default:
                    return null;
            }
        }

        public static String[] defaultOrder() {
            String[] strArr = new String[values().length];
            strArr[0] = ADCOLONY.toString();
            strArr[1] = APPRUPT.toString();
            strArr[2] = ADMOB.toString();
            strArr[3] = DOUBLECLICK.toString();
            strArr[4] = MOPUB.toString();
            strArr[5] = CLIPKIT.toString();
            return strArr;
        }
    }
}
