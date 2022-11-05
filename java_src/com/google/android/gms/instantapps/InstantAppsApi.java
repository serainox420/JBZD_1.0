package com.google.android.gms.instantapps;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
/* loaded from: classes.dex */
public interface InstantAppsApi {
    public static final String EXTRA_DO_NOT_LAUNCH_INSTANT_APP = "com.google.android.gms.instantapps.DO_NOT_LAUNCH_INSTANT_APP";
    public static final String EXTRA_IS_REFERRER_TRUSTED = "com.google.android.gms.instantapps.IS_REFERRER_TRUSTED";
    public static final String EXTRA_IS_USER_CONFIRMED_LAUNCH = "com.google.android.gms.instantapps.IS_USER_CONFIRMED_LAUNCH";
    public static final String EXTRA_TRUSTED_REFERRER_PKG = "com.google.android.gms.instantapps.TRUSTED_REFERRER_PKG";

    /* loaded from: classes2.dex */
    public interface LaunchDataResult extends Result {
        LaunchData getLaunchData();
    }

    Intent getInstantAppIntent(Context context, String str, Intent intent);

    PendingResult<LaunchDataResult> getInstantAppLaunchData(GoogleApiClient googleApiClient, String str);

    @Deprecated
    PendingResult<LaunchDataResult> getInstantAppLaunchData(GoogleApiClient googleApiClient, String str, LaunchSettings launchSettings);

    boolean initializeIntentClient(Context context);
}
