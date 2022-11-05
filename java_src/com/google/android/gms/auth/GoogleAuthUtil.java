package com.google.android.gms.auth;

import android.accounts.Account;
import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzac;
import java.io.IOException;
import java.util.List;
/* loaded from: classes.dex */
public final class GoogleAuthUtil extends zze {
    public static final int CHANGE_TYPE_ACCOUNT_ADDED = 1;
    public static final int CHANGE_TYPE_ACCOUNT_REMOVED = 2;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_FROM = 3;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_TO = 4;
    public static final String GOOGLE_ACCOUNT_TYPE = "com.google";
    public static final String KEY_SUPPRESS_PROGRESS_SCREEN = "suppressProgressScreen";
    public static final String WORK_ACCOUNT_TYPE = "com.google.work";
    public static final String KEY_CALLER_UID = zze.KEY_CALLER_UID;
    public static final String KEY_ANDROID_PACKAGE_NAME = zze.KEY_ANDROID_PACKAGE_NAME;

    private GoogleAuthUtil() {
    }

    public static void clearToken(Context context, String str) throws GooglePlayServicesAvailabilityException, GoogleAuthException, IOException {
        zze.clearToken(context, str);
    }

    public static List<AccountChangeEvent> getAccountChangeEvents(Context context, int i, String str) throws GoogleAuthException, IOException {
        return zze.getAccountChangeEvents(context, i, str);
    }

    public static String getAccountId(Context context, String str) throws GoogleAuthException, IOException {
        return zze.getAccountId(context, str);
    }

    public static String getToken(Context context, Account account, String str) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return zze.getToken(context, account, str);
    }

    public static String getToken(Context context, Account account, String str, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return zze.getToken(context, account, str, bundle);
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return zze.getToken(context, str, str2);
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return zze.getToken(context, str, str2, bundle);
    }

    public static String getTokenWithNotification(Context context, Account account, String str, Bundle bundle) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        return zza(context, account, str, bundle).getToken();
    }

    public static String getTokenWithNotification(Context context, Account account, String str, Bundle bundle, Intent intent) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        zzi(intent);
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putParcelable("callback_intent", intent);
        bundle.putBoolean("handle_notification", true);
        return zzb(context, account, str, bundle).getToken();
    }

    public static String getTokenWithNotification(Context context, Account account, String str, Bundle bundle, String str2, Bundle bundle2) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        zzac.zzh(str2, "Authority cannot be empty or null.");
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (bundle2 == null) {
            bundle2 = new Bundle();
        }
        ContentResolver.validateSyncExtrasBundle(bundle2);
        bundle.putString("authority", str2);
        bundle.putBundle("sync_extras", bundle2);
        bundle.putBoolean("handle_notification", true);
        return zzb(context, account, str, bundle).getToken();
    }

    @Deprecated
    public static String getTokenWithNotification(Context context, String str, String str2, Bundle bundle) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        return getTokenWithNotification(context, new Account(str, "com.google"), str2, bundle);
    }

    @Deprecated
    public static String getTokenWithNotification(Context context, String str, String str2, Bundle bundle, Intent intent) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        return getTokenWithNotification(context, new Account(str, "com.google"), str2, bundle, intent);
    }

    @Deprecated
    public static String getTokenWithNotification(Context context, String str, String str2, Bundle bundle, String str3, Bundle bundle2) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        return getTokenWithNotification(context, new Account(str, "com.google"), str2, bundle, str3, bundle2);
    }

    @Deprecated
    public static void invalidateToken(Context context, String str) {
        zze.invalidateToken(context, str);
    }

    @TargetApi(23)
    public static Bundle removeAccount(Context context, Account account) throws GoogleAuthException, IOException {
        return zze.removeAccount(context, account);
    }

    public static TokenData zza(Context context, Account account, String str, Bundle bundle) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putBoolean("handle_notification", true);
        return zzb(context, account, str, bundle);
    }

    private static TokenData zzb(Context context, Account account, String str, Bundle bundle) throws IOException, GoogleAuthException {
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            TokenData zzc = zzc(context, account, str, bundle);
            GooglePlayServicesUtil.zzaF(context);
            return zzc;
        } catch (GooglePlayServicesAvailabilityException e) {
            GooglePlayServicesUtil.showErrorNotification(e.getConnectionStatusCode(), context);
            Log.w("GoogleAuthUtil", "Error when getting token", e);
            throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
        } catch (UserRecoverableAuthException e2) {
            GooglePlayServicesUtil.zzaF(context);
            Log.w("GoogleAuthUtil", "Error when getting token", e2);
            throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
        }
    }

    public static TokenData zzc(Context context, Account account, String str, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return zze.zzc(context, account, str, bundle);
    }
}
