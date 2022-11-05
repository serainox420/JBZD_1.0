package com.loopme.request;

import android.text.TextUtils;
import com.adcolony.sdk.AdColonyUserMetadata;
import com.loopme.common.Logging;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
/* loaded from: classes2.dex */
public class AdTargetingData {
    private static final String LOG_TAG = AdTargetingData.class.getSimpleName();
    private List<CustomRequestParameter> mCustomParams = new ArrayList();
    private String mGender;
    private String mKeywords;
    private int mYearOfBirth;

    public void clear() {
        this.mKeywords = null;
        this.mYearOfBirth = 0;
        this.mGender = null;
        this.mCustomParams.clear();
    }

    public void setKeywords(String str) {
        this.mKeywords = str;
    }

    public String getKeywords() {
        return this.mKeywords;
    }

    public void setYob(int i) {
        int i2 = Calendar.getInstance().get(1);
        if (i >= 1900 && i <= i2) {
            this.mYearOfBirth = i;
        }
    }

    public int getYob() {
        return this.mYearOfBirth;
    }

    public List<CustomRequestParameter> getCustomParameters() {
        return this.mCustomParams;
    }

    public void setCustomParameters(String str, String str2) {
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
            this.mCustomParams.add(new CustomRequestParameter(str, str2));
        }
    }

    public void setGender(String str) {
        if (str != null) {
            if (str.equalsIgnoreCase("f") || str.equalsIgnoreCase("m") || str.equalsIgnoreCase(AdColonyUserMetadata.USER_FEMALE) || str.equalsIgnoreCase(AdColonyUserMetadata.USER_MALE)) {
                this.mGender = str;
            } else {
                Logging.out(LOG_TAG, "Wrong gender value");
            }
        }
    }

    public String getGender() {
        return this.mGender;
    }
}
