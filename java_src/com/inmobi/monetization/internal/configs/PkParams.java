package com.inmobi.monetization.internal.configs;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.Map;
/* loaded from: classes2.dex */
public class PkParams {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Boolean> f3884a;
    public static String SK_ALGORITHM = "";
    public static String SK_MODULUS = "";
    public static String SK_EXPONENT = "";
    public static String SK_VERSION = "";

    public String getExponent() {
        return SK_EXPONENT;
    }

    public String getModulus() {
        return SK_MODULUS;
    }

    public String getAlgorithm() {
        return SK_ALGORITHM;
    }

    public String getVersion() {
        return SK_VERSION;
    }

    public Map<String, Boolean> getDeviceIdMaskMap() {
        return this.f3884a;
    }

    public void setFromMap(Map<String, Object> map) {
        Map map2 = (Map) map.get(PkInitilaizer.PRODUCT_PK);
        SK_VERSION = InternalSDKUtil.getStringFromMap(map2, "ver");
        if (SK_VERSION.equals("")) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Key ver has illegal value");
            throw new IllegalArgumentException();
        }
        SK_ALGORITHM = InternalSDKUtil.getStringFromMap(map2, "alg");
        if (SK_ALGORITHM.equals("")) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Key alg has illegal value");
            throw new IllegalArgumentException();
        } else if (SK_ALGORITHM.equalsIgnoreCase("rsa")) {
            Map map3 = (Map) map2.get("val");
            SK_EXPONENT = InternalSDKUtil.getStringFromMap(map3, "e");
            SK_MODULUS = InternalSDKUtil.getStringFromMap(map3, "m");
            if (SK_MODULUS.equals("")) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Key m has illegal value");
                throw new IllegalArgumentException();
            } else if (SK_EXPONENT.equals("")) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Key e has illegal value");
                throw new IllegalArgumentException();
            } else if (!InternalSDKUtil.isHexString(SK_EXPONENT)) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Key e has illegal value");
                throw new IllegalArgumentException();
            } else if (!InternalSDKUtil.isHexString(SK_MODULUS)) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Key m has illegal value");
                throw new IllegalArgumentException();
            }
        }
    }
}
