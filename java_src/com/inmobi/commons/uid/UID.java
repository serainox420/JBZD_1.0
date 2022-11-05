package com.inmobi.commons.uid;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class UID {
    public static final String KEY_AID = "AID";
    public static final String KEY_APPENDED_ID = "AIDL";
    public static final String KEY_FACEBOOK_ID = "FBA";
    public static final String KEY_GPID = "GPID";
    public static final String KEY_IMID = "IMID";
    public static final String KEY_LOGIN_ID = "LID";
    public static final String KEY_LTVID = "LTVID";
    public static final String KEY_ODIN1 = "O1";
    public static final String KEY_SESSION_ID = "SID";
    public static final String KEY_TIMESTAMP = "timestamp";
    public static final String KEY_UM5_ID = "UM5";

    /* renamed from: a  reason: collision with root package name */
    private static UID f3827a;
    private Map<String, Boolean> b;
    private Map<String, Boolean> c;
    private String e;
    private String f = null;
    private Map<String, Boolean> d = new HashMap();

    private UID() {
        this.d.put(KEY_FACEBOOK_ID, false);
        this.d.put(KEY_GPID, true);
        this.d.put(KEY_LOGIN_ID, true);
        this.d.put(KEY_LTVID, true);
        this.d.put(KEY_ODIN1, true);
        this.d.put(KEY_SESSION_ID, true);
        this.d.put(KEY_UM5_ID, true);
        this.d.put(KEY_IMID, true);
        this.d.put(KEY_APPENDED_ID, true);
    }

    public static UID getInstance() {
        if (f3827a == null) {
            f3827a = new UID();
        }
        return f3827a;
    }

    public void init() {
        a.g();
        printPublisherTestId();
        a.a(InternalSDKUtil.getContext());
    }

    public void refresh() {
        a.g();
    }

    public void setPublisherDeviceIdMaskMap(int i) {
        this.b = a(i);
    }

    public void setCommonsDeviceIdMaskMap(Map<String, Boolean> map) {
        this.c = map;
    }

    public Map<String, String> getRawUidMap(Map<String, Boolean> map) {
        return getUidMap(map, null, false);
    }

    public String getEncryptedJSON(Map<String, Boolean> map) {
        return new JSONObject(InternalSDKUtil.getEncodedMap(getMapForEncryption(map))).toString();
    }

    public Map<String, String> getMapForEncryption(Map<String, Boolean> map) {
        String num = Integer.toString(new Random().nextInt());
        String encryptRSA = InternalSDKUtil.encryptRSA(new JSONObject(getUidMap(map, num, true)).toString());
        HashMap hashMap = new HashMap();
        hashMap.put(AdTrackerConstants.UIDMAP, encryptRSA);
        hashMap.put(AdTrackerConstants.UIDKEY, num);
        hashMap.put(AdTrackerConstants.UKEYVER, a.a());
        return hashMap;
    }

    public String getEncodedJSON(Map<String, Boolean> map) {
        Map<String, String> uidMap = getUidMap(map, null, false);
        InternalSDKUtil.getEncodedMap(uidMap);
        return new JSONObject(uidMap).toString();
    }

    private Map<String, Boolean> a(int i) {
        HashMap hashMap = new HashMap();
        if ((i & 4) == 4 || i == 0) {
            hashMap.put(KEY_FACEBOOK_ID, false);
        }
        if ((i & 2) == 2 || i == 0) {
            hashMap.put(KEY_ODIN1, false);
        }
        if ((i & 8) == 8 || i == 0) {
            hashMap.put(KEY_UM5_ID, false);
        }
        return hashMap;
    }

    private Map<String, Boolean> a(Map<String, Boolean> map) {
        HashMap hashMap = new HashMap(this.d);
        if (map == null && this.c == null && this.b == null) {
            return hashMap;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        if (this.c == null) {
            this.c = new HashMap();
        }
        if (this.b == null) {
            this.b = new HashMap();
        }
        for (String str : this.c.keySet()) {
            hashMap.put(str, Boolean.valueOf(Boolean.valueOf(map.get(str) == null ? true : map.get(str).booleanValue()).booleanValue() & Boolean.valueOf(this.c.get(str) == null ? true : this.c.get(str).booleanValue()).booleanValue() & Boolean.valueOf(this.b.get(str) == null ? true : this.b.get(str).booleanValue()).booleanValue()));
        }
        return hashMap;
    }

    public String getJSON(Map<String, Boolean> map) {
        return new JSONObject(getRawUidMap(map)).toString();
    }

    public void setLtvId(String str) {
        this.e = str;
    }

    private String a() {
        return this.e;
    }

    public Map<String, String> getUidMap(Map<String, Boolean> map, String str, boolean z) {
        String c;
        String b;
        AdvertisingId f;
        String adId;
        String a2;
        String b2;
        String c2;
        String d;
        Map<String, Boolean> a3 = a(map);
        HashMap hashMap = new HashMap();
        if (this.f == null) {
            this.f = a.e();
        }
        if (a3.get(KEY_ODIN1).booleanValue() && !a.h()) {
            String a4 = a.a(this.f);
            if (z) {
                a4 = InternalSDKUtil.xorWithKey(a4, str);
            }
            hashMap.put(KEY_ODIN1, a4);
        }
        if (a3.get(KEY_FACEBOOK_ID).booleanValue() && (d = a.d()) != null) {
            if (z) {
                d = InternalSDKUtil.xorWithKey(d, str);
            }
            hashMap.put(KEY_FACEBOOK_ID, d);
        }
        if (a3.get(KEY_UM5_ID).booleanValue() && !a.h()) {
            String b3 = a.b(this.f);
            if (z) {
                b3 = InternalSDKUtil.xorWithKey(b3, str);
            }
            hashMap.put(KEY_UM5_ID, b3);
        }
        if (a3.get(KEY_LOGIN_ID).booleanValue() && (c2 = a.c()) != null) {
            if (z) {
                c2 = InternalSDKUtil.xorWithKey(c2, str);
            }
            hashMap.put(KEY_LOGIN_ID, c2);
        }
        if (a3.get(KEY_SESSION_ID).booleanValue() && (b2 = a.b()) != null) {
            if (z) {
                b2 = InternalSDKUtil.xorWithKey(b2, str);
            }
            hashMap.put(KEY_SESSION_ID, b2);
        }
        if (a3.get(KEY_LTVID).booleanValue() && (a2 = a()) != null) {
            if (z) {
                a2 = InternalSDKUtil.xorWithKey(a2, str);
            }
            hashMap.put(KEY_LTVID, a2);
        }
        if (a3.get(KEY_GPID).booleanValue() && (f = a.f()) != null && (adId = f.getAdId()) != null) {
            if (z) {
                adId = InternalSDKUtil.xorWithKey(adId, str);
            }
            hashMap.put(KEY_GPID, adId);
        }
        if (a3.get(KEY_IMID).booleanValue() && (b = a.b(InternalSDKUtil.getContext())) != null) {
            if (z) {
                b = InternalSDKUtil.xorWithKey(b, str);
            }
            hashMap.put(KEY_IMID, b);
        }
        if (a3.get(KEY_APPENDED_ID).booleanValue() && (c = a.c(InternalSDKUtil.getContext())) != null) {
            if (z) {
                c = InternalSDKUtil.xorWithKey(c, str);
            }
            hashMap.put(KEY_APPENDED_ID, c);
        }
        return hashMap;
    }

    public void printPublisherTestId() {
        String adId;
        try {
            if (a.h()) {
                AdvertisingId f = a.f();
                if (f != null && (adId = f.getAdId()) != null) {
                    Log.debug(InternalSDKUtil.LOGGING_TAG, "Publisher device Id is " + adId);
                }
            } else {
                Log.debug(InternalSDKUtil.LOGGING_TAG, "Publisher device Id is " + a.a(a.e()));
            }
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get publisher device id", e);
        }
    }

    public boolean isLimitAdTrackingEnabled() {
        return a.i();
    }
}
