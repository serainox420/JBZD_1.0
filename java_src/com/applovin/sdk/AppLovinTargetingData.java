package com.applovin.sdk;

import android.location.Location;
/* loaded from: classes.dex */
public interface AppLovinTargetingData {
    public static final char GENDER_FEMALE = 'f';
    public static final char GENDER_MALE = 'm';

    void clearData();

    void putExtra(String str, String str2);

    void setBirthYear(int i);

    void setCarrier(String str);

    void setCountry(String str);

    void setGender(char c);

    void setInterests(String... strArr);

    void setKeywords(String... strArr);

    void setLanguage(String str);

    void setLocation(Location location);
}
