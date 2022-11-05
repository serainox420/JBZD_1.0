package com.facebook.appevents;

import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.internal.Constants;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashSet;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppEvent implements Serializable {
    private static final long serialVersionUID = 1;
    private static final HashSet<String> validatedIdentifiers = new HashSet<>();
    private final String checksum;
    private final boolean isImplicit;
    private final JSONObject jsonObject;
    private final String name;

    public AppEvent(String str, String str2, Double d, Bundle bundle, boolean z, UUID uuid) throws JSONException, FacebookException {
        this.jsonObject = getJSONObjectForAppEvent(str, str2, d, bundle, z, uuid);
        this.isImplicit = z;
        this.name = str2;
        this.checksum = calculateChecksum();
    }

    public String getName() {
        return this.name;
    }

    private AppEvent(String str, boolean z, String str2) throws JSONException {
        this.jsonObject = new JSONObject(str);
        this.isImplicit = z;
        this.name = this.jsonObject.optString(Constants.EVENT_NAME_EVENT_KEY);
        this.checksum = str2;
    }

    public boolean getIsImplicit() {
        return this.isImplicit;
    }

    public JSONObject getJSONObject() {
        return this.jsonObject;
    }

    public boolean isChecksumValid() {
        if (this.checksum == null) {
            return true;
        }
        return calculateChecksum().equals(this.checksum);
    }

    private static void validateIdentifier(String str) throws FacebookException {
        boolean contains;
        if (str == null || str.length() == 0 || str.length() > 40) {
            if (str == null) {
                str = "<None Provided>";
            }
            throw new FacebookException(String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", str, 40));
        }
        synchronized (validatedIdentifiers) {
            contains = validatedIdentifiers.contains(str);
        }
        if (!contains) {
            if (str.matches("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$")) {
                synchronized (validatedIdentifiers) {
                    validatedIdentifiers.add(str);
                }
                return;
            }
            throw new FacebookException(String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", str));
        }
    }

    private static JSONObject getJSONObjectForAppEvent(String str, String str2, Double d, Bundle bundle, boolean z, UUID uuid) throws FacebookException, JSONException {
        validateIdentifier(str2);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(Constants.EVENT_NAME_EVENT_KEY, str2);
        jSONObject.put(Constants.LOG_TIME_APP_EVENT_KEY, System.currentTimeMillis() / 1000);
        jSONObject.put("_ui", str);
        if (uuid != null) {
            jSONObject.put("_session_id", uuid);
        }
        if (d != null) {
            jSONObject.put("_valueToSum", d.doubleValue());
        }
        if (z) {
            jSONObject.put("_implicitlyLogged", "1");
        }
        String userID = AppEventsLogger.getUserID();
        if (userID != null) {
            jSONObject.put("_app_user_id", userID);
        }
        if (bundle != null) {
            for (String str3 : bundle.keySet()) {
                validateIdentifier(str3);
                Object obj = bundle.get(str3);
                if (!(obj instanceof String) && !(obj instanceof Number)) {
                    throw new FacebookException(String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", obj, str3));
                }
                jSONObject.put(str3, obj.toString());
            }
        }
        if (!z) {
            Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "Created app event '%s'", jSONObject.toString());
        }
        return jSONObject;
    }

    /* loaded from: classes.dex */
    static class SerializationProxyV1 implements Serializable {
        private static final long serialVersionUID = -2488473066578201069L;
        private final boolean isImplicit;
        private final String jsonString;

        private SerializationProxyV1(String str, boolean z) {
            this.jsonString = str;
            this.isImplicit = z;
        }

        private Object readResolve() throws JSONException {
            return new AppEvent(this.jsonString, this.isImplicit, null);
        }
    }

    /* loaded from: classes.dex */
    static class SerializationProxyV2 implements Serializable {
        private static final long serialVersionUID = 20160803001L;
        private final String checksum;
        private final boolean isImplicit;
        private final String jsonString;

        private SerializationProxyV2(String str, boolean z, String str2) {
            this.jsonString = str;
            this.isImplicit = z;
            this.checksum = str2;
        }

        private Object readResolve() throws JSONException {
            return new AppEvent(this.jsonString, this.isImplicit, this.checksum);
        }
    }

    private Object writeReplace() {
        return new SerializationProxyV2(this.jsonObject.toString(), this.isImplicit, this.checksum);
    }

    public String toString() {
        return String.format("\"%s\", implicit: %b, json: %s", this.jsonObject.optString(Constants.EVENT_NAME_EVENT_KEY), Boolean.valueOf(this.isImplicit), this.jsonObject.toString());
    }

    private String calculateChecksum() {
        return md5Checksum(this.jsonObject.toString());
    }

    private static String md5Checksum(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bytes = str.getBytes("UTF-8");
            messageDigest.update(bytes, 0, bytes.length);
            return bytesToHex(messageDigest.digest());
        } catch (UnsupportedEncodingException e) {
            Utility.logd("Failed to generate checksum: ", e);
            return "1";
        } catch (NoSuchAlgorithmException e2) {
            Utility.logd("Failed to generate checksum: ", e2);
            return AppEventsConstants.EVENT_PARAM_VALUE_NO;
        }
    }

    private static String bytesToHex(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(bArr[i])));
        }
        return stringBuffer.toString();
    }
}
