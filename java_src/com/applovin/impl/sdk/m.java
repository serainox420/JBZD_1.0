package com.applovin.impl.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinTargetingData;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m implements AppLovinTargetingData {

    /* renamed from: a  reason: collision with root package name */
    private final Context f1663a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(AppLovinSdkImpl appLovinSdkImpl) {
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f1663a = appLovinSdkImpl.getApplicationContext();
    }

    private static String a(String[] strArr) {
        if (strArr == null || strArr.length <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            if (AppLovinSdkUtils.isValidString(str)) {
                sb.append(di.c(str));
                sb.append(",");
            }
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    private void a(String str, String str2) {
        if (AppLovinSdkUtils.isValidString(str)) {
            SharedPreferences.Editor edit = this.f1663a.getSharedPreferences("applovin.sdk.targeting", 0).edit();
            edit.putString(str, di.c(str2));
            edit.commit();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map a() {
        HashMap hashMap = new HashMap();
        Map<String, ?> all = this.f1663a.getSharedPreferences("applovin.sdk.targeting", 0).getAll();
        if (all != null && all.size() > 0) {
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                hashMap.put(entry.getKey(), String.valueOf(entry.getValue()));
            }
        }
        return hashMap;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void clearData() {
        SharedPreferences.Editor edit = this.f1663a.getSharedPreferences("applovin.sdk.targeting", 0).edit();
        edit.clear();
        edit.commit();
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void putExtra(String str, String str2) {
        if (!AppLovinSdkUtils.isValidString(str) || !AppLovinSdkUtils.isValidString(str2)) {
            return;
        }
        a("ex_" + str, str2);
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setBirthYear(int i) {
        if (i >= 9999 || i <= 1900) {
            return;
        }
        a(PubMaticConstants.YOB_PARAM, Integer.toString(i));
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setCarrier(String str) {
        if (AppLovinSdkUtils.isValidString(str)) {
            a("carrier", str);
        }
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setCountry(String str) {
        if (!AppLovinSdkUtils.isValidString(str) || str.length() != 2) {
            return;
        }
        a(PubMaticConstants.COUNTRY_PARAM, str.toUpperCase(Locale.ENGLISH));
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setGender(char c) {
        a("gender", c == 'm' ? "m" : c == 'f' ? "f" : "u");
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setInterests(String... strArr) {
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        a("interests", a(strArr));
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setKeywords(String... strArr) {
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        a("keywords", a(strArr));
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setLanguage(String str) {
        if (AppLovinSdkUtils.isValidString(str)) {
            a("language", str.toLowerCase(Locale.ENGLISH));
        }
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setLocation(Location location) {
        if (location != null) {
            a("lat", Double.toString(location.getLatitude()));
            a(PhoenixConstants.LONGITUDE_PARAM, Double.toString(location.getLongitude()));
        }
    }
}
