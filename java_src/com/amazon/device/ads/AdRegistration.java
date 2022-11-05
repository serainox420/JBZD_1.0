package com.amazon.device.ads;

import android.content.Context;
/* loaded from: classes.dex */
public class AdRegistration {
    private static final String LOGTAG = AdRegistration.class.getSimpleName();
    private static final AdRegistrationExecutor amazonAdRegistration = new AdRegistrationExecutor(LOGTAG);

    private AdRegistration() {
    }

    public static final void setAppKey(String str) throws IllegalArgumentException {
        amazonAdRegistration.setAppKey(str);
    }

    public static final void enableLogging(boolean z) {
        amazonAdRegistration.enableLogging(z);
    }

    public static final void enableTesting(boolean z) {
        amazonAdRegistration.enableTesting(z);
    }

    public static final String getVersion() {
        return amazonAdRegistration.getVersion();
    }

    public static final void registerApp(Context context) {
        amazonAdRegistration.registerApp(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AdRegistrationExecutor getAmazonAdRegistrationExecutor() {
        return amazonAdRegistration;
    }
}
