package com.google.android.gms.common;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.aj;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import com.google.android.gms.R;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzi;
import com.google.android.gms.common.util.zzj;
import com.google.android.gms.common.util.zzt;
import com.google.android.gms.internal.zzaaz;
import com.google.android.gms.internal.zzabf;
import com.google.android.gms.internal.zzabj;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.loopme.debugging.Params;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
/* loaded from: classes.dex */
public class GoogleApiAvailability extends zze {
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    private static final GoogleApiAvailability zzaym = new GoogleApiAvailability();
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = zze.GOOGLE_PLAY_SERVICES_VERSION_CODE;

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes2.dex */
    public class zza extends Handler {
        private final Context zzwi;

        public zza(Context context) {
            super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
            this.zzwi = context.getApplicationContext();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    int isGooglePlayServicesAvailable = GoogleApiAvailability.this.isGooglePlayServicesAvailable(this.zzwi);
                    if (!GoogleApiAvailability.this.isUserResolvableError(isGooglePlayServicesAvailable)) {
                        return;
                    }
                    GoogleApiAvailability.this.showErrorNotification(this.zzwi, isGooglePlayServicesAvailable);
                    return;
                default:
                    Log.w("GoogleApiAvailability", new StringBuilder(50).append("Don't know how to handle this message: ").append(message.what).toString());
                    return;
            }
        }
    }

    GoogleApiAvailability() {
    }

    public static GoogleApiAvailability getInstance() {
        return zzaym;
    }

    public Dialog getErrorDialog(Activity activity, int i, int i2) {
        return getErrorDialog(activity, i, i2, null);
    }

    public Dialog getErrorDialog(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return zza(activity, i, zzi.zza(activity, zzb(activity, i, PhoenixConstants.DEBUG_PARAM), i2), onCancelListener);
    }

    @Override // com.google.android.gms.common.zze
    public PendingIntent getErrorResolutionPendingIntent(Context context, int i, int i2) {
        return super.getErrorResolutionPendingIntent(context, i, i2);
    }

    public PendingIntent getErrorResolutionPendingIntent(Context context, ConnectionResult connectionResult) {
        return connectionResult.hasResolution() ? connectionResult.getResolution() : getErrorResolutionPendingIntent(context, connectionResult.getErrorCode(), 0);
    }

    @Override // com.google.android.gms.common.zze
    public final String getErrorString(int i) {
        return super.getErrorString(i);
    }

    @Override // com.google.android.gms.common.zze
    public String getOpenSourceSoftwareLicenseInfo(Context context) {
        return super.getOpenSourceSoftwareLicenseInfo(context);
    }

    @Override // com.google.android.gms.common.zze
    public int isGooglePlayServicesAvailable(Context context) {
        return super.isGooglePlayServicesAvailable(context);
    }

    @Override // com.google.android.gms.common.zze
    public final boolean isUserResolvableError(int i) {
        return super.isUserResolvableError(i);
    }

    public Task<Void> makeGooglePlayServicesAvailable(Activity activity) {
        zzac.zzdj("makeGooglePlayServicesAvailable must be called from the main thread");
        int isGooglePlayServicesAvailable = isGooglePlayServicesAvailable(activity);
        if (isGooglePlayServicesAvailable == 0) {
            return Tasks.forResult(null);
        }
        zzabj zzu = zzabj.zzu(activity);
        zzu.zzk(new ConnectionResult(isGooglePlayServicesAvailable, null));
        return zzu.getTask();
    }

    public boolean showErrorDialogFragment(Activity activity, int i, int i2) {
        return showErrorDialogFragment(activity, i, i2, null);
    }

    public boolean showErrorDialogFragment(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog errorDialog = getErrorDialog(activity, i, i2, onCancelListener);
        if (errorDialog == null) {
            return false;
        }
        zza(activity, errorDialog, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    public void showErrorNotification(Context context, int i) {
        zza(context, i, (String) null);
    }

    public void showErrorNotification(Context context, ConnectionResult connectionResult) {
        zza(context, connectionResult.getErrorCode(), (String) null, getErrorResolutionPendingIntent(context, connectionResult));
    }

    public Dialog zza(Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, 16842874);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(com.google.android.gms.common.internal.zzh.zzi(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        zza(activity, create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Dialog zza(Context context, int i, zzi zziVar, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog.Builder builder = null;
        if (i == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16843529, typedValue, true);
        if ("Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId))) {
            builder = new AlertDialog.Builder(context, 5);
        }
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(com.google.android.gms.common.internal.zzh.zzi(context, i));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String zzk = com.google.android.gms.common.internal.zzh.zzk(context, i);
        if (zzk != null) {
            builder.setPositiveButton(zzk, zziVar);
        }
        String zzg = com.google.android.gms.common.internal.zzh.zzg(context, i);
        if (zzg != null) {
            builder.setTitle(zzg);
        }
        return builder.create();
    }

    @Override // com.google.android.gms.common.zze
    public PendingIntent zza(Context context, int i, int i2, String str) {
        return super.zza(context, i, i2, str);
    }

    public zzaaz zza(Context context, zzaaz.zza zzaVar) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme(Params.PACKAGE_ID);
        zzaaz zzaazVar = new zzaaz(zzaVar);
        context.registerReceiver(zzaazVar, intentFilter);
        zzaazVar.setContext(context);
        if (!zzz(context, "com.google.android.gms")) {
            zzaVar.zzvE();
            zzaazVar.unregister();
            return null;
        }
        return zzaazVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        boolean z;
        try {
            z = activity instanceof FragmentActivity;
        } catch (NoClassDefFoundError e) {
            z = false;
        }
        if (z) {
            SupportErrorDialogFragment.newInstance(dialog, onCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), str);
            return;
        }
        ErrorDialogFragment.newInstance(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    public void zza(Context context, int i, String str) {
        zza(context, i, str, zza(context, i, 0, "n"));
    }

    @TargetApi(20)
    void zza(Context context, int i, String str, PendingIntent pendingIntent) {
        Notification a2;
        int i2;
        if (i == 18) {
            zzaD(context);
        } else if (pendingIntent == null) {
            if (i != 6) {
                return;
            }
            Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
        } else {
            String zzh = com.google.android.gms.common.internal.zzh.zzh(context, i);
            String zzj = com.google.android.gms.common.internal.zzh.zzj(context, i);
            Resources resources = context.getResources();
            if (zzj.zzba(context)) {
                zzac.zzaw(zzt.zzzm());
                a2 = new Notification.Builder(context).setSmallIcon(context.getApplicationInfo().icon).setPriority(2).setAutoCancel(true).setContentTitle(zzh).setStyle(new Notification.BigTextStyle().bigText(zzj)).addAction(R.drawable.common_full_open_on_phone, resources.getString(R.string.common_open_on_phone), pendingIntent).build();
            } else {
                a2 = new aj.d(context).a(17301642).c(resources.getString(R.string.common_google_play_services_notification_ticker)).a(System.currentTimeMillis()).c(true).a(pendingIntent).a((CharSequence) zzh).b(zzj).d(true).a(new aj.c().a(zzj)).a();
            }
            switch (i) {
                case 1:
                case 2:
                case 3:
                    zzg.zzayB.set(false);
                    i2 = 10436;
                    break;
                default:
                    i2 = 39789;
                    break;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (str == null) {
                notificationManager.notify(i2, a2);
            } else {
                notificationManager.notify(str, i2, a2);
            }
        }
    }

    public boolean zza(Activity activity, zzabf zzabfVar, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog zza2 = zza(activity, i, zzi.zza(zzabfVar, zzb(activity, i, PhoenixConstants.DEBUG_PARAM), i2), onCancelListener);
        if (zza2 == null) {
            return false;
        }
        zza(activity, zza2, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    public boolean zza(Context context, ConnectionResult connectionResult, int i) {
        PendingIntent errorResolutionPendingIntent = getErrorResolutionPendingIntent(context, connectionResult);
        if (errorResolutionPendingIntent != null) {
            zza(context, connectionResult.getErrorCode(), (String) null, GoogleApiActivity.zza(context, errorResolutionPendingIntent, i));
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.common.zze
    public int zzaC(Context context) {
        return super.zzaC(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzaD(Context context) {
        new zza(context).sendEmptyMessageDelayed(1, 120000L);
    }

    @Override // com.google.android.gms.common.zze
    public Intent zzb(Context context, int i, String str) {
        return super.zzb(context, i, str);
    }

    @Override // com.google.android.gms.common.zze
    @Deprecated
    public Intent zzcw(int i) {
        return super.zzcw(i);
    }

    @Override // com.google.android.gms.common.zze
    public boolean zzd(Context context, int i) {
        return super.zzd(context, i);
    }
}
