package com.flurry.sdk;
/* loaded from: classes2.dex */
public interface mj {
    String a();

    String b();

    String c();

    String d();

    /* loaded from: classes2.dex */
    public enum a {
        SDK_NAME("sdk_name"),
        SDK_VERSION("sdk_ver"),
        APP_ID("ym_src"),
        API_KEY("ym_key"),
        AD_TYPE("ym_atype"),
        CREATIVE_TYPE("ym_cc"),
        AD_ID("ym_adid"),
        ADUNIT_ID("ym_adu"),
        STATUS_CODE("ym_code"),
        STATUS_VALUE("ym_value"),
        URL("ym_url"),
        REQUEST_ID("ym_rid"),
        AD_TEMPLATE("ym_tmpl"),
        AD_UNIT_DISPLAY_TYPE("ym_audt"),
        AD_INVENTORY_SOURCE_ID("ym_ivsrc"),
        AD_MEDIA_TYPE("ym_mtype");
        
        public final String q;

        a(String str) {
            this.q = str;
        }
    }

    /* loaded from: classes2.dex */
    public enum b {
        BEACON_ERROR_CODE("beaconErrorCode"),
        DELTA_ON_CLICK("deltaOnClick"),
        DIALER_URL("dialerUrl"),
        URL("url");
        
        public final String e;

        b(String str) {
            this.e = str;
        }
    }
}
