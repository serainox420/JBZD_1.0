package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.zze;
import com.google.android.gms.common.zzg;
import com.google.android.gms.internal.zzcq;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class AdvertisingIdClient {
    private final Context mContext;
    com.google.android.gms.common.zza zzsa;
    zzcq zzsb;
    boolean zzsc;
    Object zzsd;
    zza zzse;
    final long zzsf;

    /* loaded from: classes2.dex */
    public static final class Info {
        private final String zzsl;
        private final boolean zzsm;

        public Info(String str, boolean z) {
            this.zzsl = str;
            this.zzsm = z;
        }

        public String getId() {
            return this.zzsl;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.zzsm;
        }

        public String toString() {
            String str = this.zzsl;
            return new StringBuilder(String.valueOf(str).length() + 7).append("{").append(str).append("}").append(this.zzsm).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zza extends Thread {
        private WeakReference<AdvertisingIdClient> zzsh;
        private long zzsi;
        CountDownLatch zzsj = new CountDownLatch(1);
        boolean zzsk = false;

        public zza(AdvertisingIdClient advertisingIdClient, long j) {
            this.zzsh = new WeakReference<>(advertisingIdClient);
            this.zzsi = j;
            start();
        }

        private void disconnect() {
            AdvertisingIdClient advertisingIdClient = this.zzsh.get();
            if (advertisingIdClient != null) {
                advertisingIdClient.finish();
                this.zzsk = true;
            }
        }

        public void cancel() {
            this.zzsj.countDown();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                if (this.zzsj.await(this.zzsi, TimeUnit.MILLISECONDS)) {
                    return;
                }
                disconnect();
            } catch (InterruptedException e) {
                disconnect();
            }
        }

        public boolean zzbx() {
            return this.zzsk;
        }
    }

    public AdvertisingIdClient(Context context) {
        this(context, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, false);
    }

    public AdvertisingIdClient(Context context, long j, boolean z) {
        this.zzsd = new Object();
        zzac.zzw(context);
        if (z) {
            Context applicationContext = context.getApplicationContext();
            this.mContext = applicationContext != null ? applicationContext : context;
        } else {
            this.mContext = context;
        }
        this.zzsc = false;
        this.zzsf = j;
    }

    public static Info getAdvertisingIdInfo(Context context) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        float f = BitmapDescriptorFactory.HUE_RED;
        boolean z = false;
        try {
            Context remoteContext = zzg.getRemoteContext(context);
            if (remoteContext != null) {
                SharedPreferences sharedPreferences = remoteContext.getSharedPreferences("google_ads_flags", 1);
                z = sharedPreferences.getBoolean("gads:ad_id_app_context:enabled", false);
                f = sharedPreferences.getFloat("gads:ad_id_app_context:ping_ratio", BitmapDescriptorFactory.HUE_RED);
            }
        } catch (Exception e) {
            Log.w("AdvertisingIdClient", "Error while reading from SharedPreferences ", e);
        }
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, z);
        try {
            advertisingIdClient.zze(false);
            Info info = advertisingIdClient.getInfo();
            advertisingIdClient.zza(info, z, f, null);
            return info;
        } catch (Throwable th) {
            try {
                advertisingIdClient.zza(null, z, f, th);
                return null;
            } finally {
                advertisingIdClient.finish();
            }
        }
    }

    public static void setShouldSkipGmsCoreVersionCheck(boolean z) {
    }

    static zzcq zza(Context context, com.google.android.gms.common.zza zzaVar) throws IOException {
        try {
            return zzcq.zza.zzf(zzaVar.zza(NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS, TimeUnit.MILLISECONDS));
        } catch (InterruptedException e) {
            throw new IOException("Interrupted exception");
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.ads.identifier.AdvertisingIdClient$1] */
    private void zza(Info info, boolean z, float f, Throwable th) {
        if (Math.random() > f) {
            return;
        }
        final String uri = zza(info, z, th).toString();
        new Thread(this) { // from class: com.google.android.gms.ads.identifier.AdvertisingIdClient.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                new com.google.android.gms.ads.identifier.zza().zzu(uri);
            }
        }.start();
    }

    private void zzbw() {
        synchronized (this.zzsd) {
            if (this.zzse != null) {
                this.zzse.cancel();
                try {
                    this.zzse.join();
                } catch (InterruptedException e) {
                }
            }
            if (this.zzsf > 0) {
                this.zzse = new zza(this, this.zzsf);
            }
        }
    }

    static com.google.android.gms.common.zza zzf(Context context) throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            switch (zze.zzuY().isGooglePlayServicesAvailable(context)) {
                case 0:
                case 2:
                    com.google.android.gms.common.zza zzaVar = new com.google.android.gms.common.zza();
                    Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                    intent.setPackage("com.google.android.gms");
                    try {
                        if (!com.google.android.gms.common.stats.zza.zzyJ().zza(context, intent, zzaVar, 1)) {
                            throw new IOException("Connection failure");
                        }
                        return zzaVar;
                    } catch (Throwable th) {
                        throw new IOException(th);
                    }
                case 1:
                default:
                    throw new IOException("Google Play services not available");
            }
        } catch (PackageManager.NameNotFoundException e) {
            throw new GooglePlayServicesNotAvailableException(9);
        }
    }

    protected void finalize() throws Throwable {
        finish();
        super.finalize();
    }

    public void finish() {
        zzac.zzdk("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.mContext == null || this.zzsa == null) {
                return;
            }
            try {
                if (this.zzsc) {
                    com.google.android.gms.common.stats.zza.zzyJ().zza(this.mContext, this.zzsa);
                }
            } catch (IllegalArgumentException e) {
                Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", e);
            }
            this.zzsc = false;
            this.zzsb = null;
            this.zzsa = null;
        }
    }

    public Info getInfo() throws IOException {
        Info info;
        zzac.zzdk("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.zzsc) {
                synchronized (this.zzsd) {
                    if (this.zzse == null || !this.zzse.zzbx()) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    zze(false);
                    if (!this.zzsc) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            zzac.zzw(this.zzsa);
            zzac.zzw(this.zzsb);
            try {
                info = new Info(this.zzsb.getId(), this.zzsb.zzf(true));
            } catch (RemoteException e2) {
                Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                throw new IOException("Remote exception");
            }
        }
        zzbw();
        return info;
    }

    public void start() throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        zze(true);
    }

    Uri zza(Info info, boolean z, Throwable th) {
        Bundle bundle = new Bundle();
        bundle.putString("app_context", z ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        if (info != null) {
            bundle.putString("limit_ad_tracking", info.isLimitAdTrackingEnabled() ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        }
        if (info != null && info.getId() != null) {
            bundle.putString("ad_id_size", Integer.toString(info.getId().length()));
        }
        if (th != null) {
            bundle.putString("error", th.getClass().getName());
        }
        Uri.Builder buildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
        for (String str : bundle.keySet()) {
            buildUpon.appendQueryParameter(str, bundle.getString(str));
        }
        return buildUpon.build();
    }

    protected void zze(boolean z) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        zzac.zzdk("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.zzsc) {
                finish();
            }
            this.zzsa = zzf(this.mContext);
            this.zzsb = zza(this.mContext, this.zzsa);
            this.zzsc = true;
            if (z) {
                zzbw();
            }
        }
    }
}
