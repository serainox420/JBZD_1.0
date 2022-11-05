package com.google.android.gms.auth;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzn;
import com.google.android.gms.common.zzg;
import com.google.android.gms.internal.zzacm;
import com.google.android.gms.internal.zzcb;
import com.google.android.gms.internal.zzvv;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.List;
/* loaded from: classes.dex */
public class zze {
    public static final int CHANGE_TYPE_ACCOUNT_ADDED = 1;
    public static final int CHANGE_TYPE_ACCOUNT_REMOVED = 2;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_FROM = 3;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_TO = 4;
    public static final String GOOGLE_ACCOUNT_TYPE = "com.google";
    @SuppressLint({"InlinedApi"})
    public static final String KEY_ANDROID_PACKAGE_NAME;
    @SuppressLint({"InlinedApi"})
    public static final String KEY_CALLER_UID;
    public static final String KEY_SUPPRESS_PROGRESS_SCREEN = "suppressProgressScreen";
    public static final String WORK_ACCOUNT_TYPE = "com.google.work";
    private static final zzacm zzaiA;
    private static final String[] zzaiy = {"com.google", "com.google.work", "cn.google"};
    private static final ComponentName zzaiz;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface zza<T> {
        T zzau(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException;
    }

    static {
        int i = Build.VERSION.SDK_INT;
        KEY_CALLER_UID = "callerUid";
        int i2 = Build.VERSION.SDK_INT;
        KEY_ANDROID_PACKAGE_NAME = "androidPackageName";
        zzaiz = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
        zzaiA = zzd.zzb("GoogleAuthUtil");
    }

    public static void clearToken(Context context, final String str) throws GooglePlayServicesAvailabilityException, GoogleAuthException, IOException {
        zzac.zzdk("Calling this from your main thread can lead to deadlock");
        zzaq(context);
        final Bundle bundle = new Bundle();
        String str2 = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", str2);
        if (!bundle.containsKey(KEY_ANDROID_PACKAGE_NAME)) {
            bundle.putString(KEY_ANDROID_PACKAGE_NAME, str2);
        }
        zza(context, zzaiz, new zza<Void>() { // from class: com.google.android.gms.auth.zze.2
            @Override // com.google.android.gms.auth.zze.zza
            /* renamed from: zzav */
            public Void zzau(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
                Bundle bundle2 = (Bundle) zze.zzn(zzcb.zza.zza(iBinder).zza(str, bundle));
                String string = bundle2.getString("Error");
                if (!bundle2.getBoolean("booleanResult")) {
                    throw new GoogleAuthException(string);
                }
                return null;
            }
        });
    }

    public static List<AccountChangeEvent> getAccountChangeEvents(Context context, final int i, final String str) throws GoogleAuthException, IOException {
        zzac.zzh(str, "accountName must be provided");
        zzac.zzdk("Calling this from your main thread can lead to deadlock");
        zzaq(context);
        return (List) zza(context, zzaiz, new zza<List<AccountChangeEvent>>() { // from class: com.google.android.gms.auth.zze.3
            @Override // com.google.android.gms.auth.zze.zza
            /* renamed from: zzaw */
            public List<AccountChangeEvent> zzau(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
                return ((AccountChangeEventsResponse) zze.zzn(zzcb.zza.zza(iBinder).zza(new AccountChangeEventsRequest().setAccountName(str).setEventIndex(i)))).getEvents();
            }
        });
    }

    public static String getAccountId(Context context, String str) throws GoogleAuthException, IOException {
        zzac.zzh(str, "accountName must be provided");
        zzac.zzdk("Calling this from your main thread can lead to deadlock");
        zzaq(context);
        return getToken(context, str, "^^_account_id_^^", new Bundle());
    }

    public static String getToken(Context context, Account account, String str) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return getToken(context, account, str, new Bundle());
    }

    public static String getToken(Context context, Account account, String str, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        zzc(account);
        return zzc(context, account, str, bundle).getToken();
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return getToken(context, new Account(str, "com.google"), str2);
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return getToken(context, new Account(str, "com.google"), str2, bundle);
    }

    @Deprecated
    public static void invalidateToken(Context context, String str) {
        AccountManager.get(context).invalidateAuthToken("com.google", str);
    }

    @TargetApi(23)
    public static Bundle removeAccount(Context context, final Account account) throws GoogleAuthException, IOException {
        zzac.zzw(context);
        zzc(account);
        zzaq(context);
        return (Bundle) zza(context, zzaiz, new zza<Bundle>() { // from class: com.google.android.gms.auth.zze.4
            @Override // com.google.android.gms.auth.zze.zza
            /* renamed from: zzax */
            public Bundle zzau(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
                return (Bundle) zze.zzn(zzcb.zza.zza(iBinder).zza(account));
            }
        });
    }

    private static <T> T zza(Context context, ComponentName componentName, zza<T> zzaVar) throws IOException, GoogleAuthException {
        com.google.android.gms.common.zza zzaVar2 = new com.google.android.gms.common.zza();
        zzn zzaU = zzn.zzaU(context);
        try {
            if (!zzaU.zza(componentName, zzaVar2, "GoogleAuthUtil")) {
                throw new IOException("Could not bind to service.");
            }
            try {
                return zzaVar.zzau(zzaVar2.zzuX());
            } catch (RemoteException | InterruptedException e) {
                zzaiA.zze("GoogleAuthUtil", "Error on service connection.", e);
                throw new IOException("Error on service connection.", e);
            }
        } finally {
            zzaU.zzb(componentName, zzaVar2, "GoogleAuthUtil");
        }
    }

    private static void zzaq(Context context) throws GoogleAuthException {
        try {
            zzg.zzaq(context.getApplicationContext());
        } catch (GooglePlayServicesNotAvailableException e) {
            throw new GoogleAuthException(e.getMessage());
        } catch (GooglePlayServicesRepairableException e2) {
            throw new GooglePlayServicesAvailabilityException(e2.getConnectionStatusCode(), e2.getMessage(), e2.getIntent());
        }
    }

    public static TokenData zzc(Context context, final Account account, final String str, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        zzac.zzdk("Calling this from your main thread can lead to deadlock");
        zzac.zzh(str, "Scope cannot be empty or null.");
        zzc(account);
        zzaq(context);
        final Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        String str2 = context.getApplicationInfo().packageName;
        bundle2.putString("clientPackageName", str2);
        if (TextUtils.isEmpty(bundle2.getString(KEY_ANDROID_PACKAGE_NAME))) {
            bundle2.putString(KEY_ANDROID_PACKAGE_NAME, str2);
        }
        bundle2.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
        return (TokenData) zza(context, zzaiz, new zza<TokenData>() { // from class: com.google.android.gms.auth.zze.1
            @Override // com.google.android.gms.auth.zze.zza
            /* renamed from: zzat */
            public TokenData zzau(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
                Bundle bundle3 = (Bundle) zze.zzn(zzcb.zza.zza(iBinder).zza(account, str, bundle2));
                TokenData zzd = TokenData.zzd(bundle3, "tokenDetails");
                if (zzd != null) {
                    return zzd;
                }
                String string = bundle3.getString("Error");
                Intent intent = (Intent) bundle3.getParcelable("userRecoveryIntent");
                zzvv zzcE = zzvv.zzcE(string);
                if (!zzvv.zza(zzcE)) {
                    if (!zzvv.zzb(zzcE)) {
                        throw new GoogleAuthException(string);
                    }
                    throw new IOException(string);
                }
                zzacm zzacmVar = zze.zzaiA;
                String valueOf = String.valueOf(zzcE);
                zzacmVar.zzf("GoogleAuthUtil", new StringBuilder(String.valueOf(valueOf).length() + 31).append("isUserRecoverableError status: ").append(valueOf).toString());
                throw new UserRecoverableAuthException(string, intent);
            }
        });
    }

    private static void zzc(Account account) {
        if (account == null) {
            throw new IllegalArgumentException("Account cannot be null");
        }
        if (TextUtils.isEmpty(account.name)) {
            throw new IllegalArgumentException("Account name cannot be empty!");
        }
        for (String str : zzaiy) {
            if (str.equals(account.type)) {
                return;
            }
        }
        throw new IllegalArgumentException("Account type not supported");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzi(Intent intent) {
        if (intent == null) {
            throw new IllegalArgumentException("Callback cannot be null.");
        }
        try {
            Intent.parseUri(intent.toUri(1), 1);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("Parameter callback contains invalid data. It must be serializable using toUri() and parseUri().");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T zzn(T t) throws IOException {
        if (t == null) {
            zzaiA.zzf("GoogleAuthUtil", "Binder call returned null.");
            throw new IOException("Service unavailable.");
        }
        return t;
    }
}
