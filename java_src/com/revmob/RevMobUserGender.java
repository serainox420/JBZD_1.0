package com.revmob;

import com.adcolony.sdk.AdColonyUserMetadata;
/* loaded from: classes3.dex */
public enum RevMobUserGender {
    MALE(AdColonyUserMetadata.USER_MALE),
    FEMALE(AdColonyUserMetadata.USER_FEMALE),
    UNDEFINED(null);
    
    private String value;

    RevMobUserGender(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
