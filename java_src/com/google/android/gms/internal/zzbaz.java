package com.google.android.gms.internal;

import android.content.Context;
import android.os.Process;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* loaded from: classes2.dex */
public class zzbaz {
    private static Object zzbEI = new Object();
    private static zzbaz zzbJd;
    private volatile boolean mClosed;
    private final Context mContext;
    private final Thread zzXh;
    private volatile AdvertisingIdClient.Info zzadB;
    private volatile long zzbEC;
    private volatile long zzbED;
    private volatile long zzbEE;
    private volatile long zzbEF;
    private final Object zzbEG;
    private volatile boolean zzbJb;
    private zza zzbJc;
    private final com.google.android.gms.common.util.zze zzuP;

    /* loaded from: classes2.dex */
    public interface zza {
        AdvertisingIdClient.Info zzQa();
    }

    private zzbaz(Context context) {
        this(context, null, com.google.android.gms.common.util.zzi.zzzc());
    }

    public zzbaz(Context context, zza zzaVar, com.google.android.gms.common.util.zze zzeVar) {
        this.zzbEC = 900000L;
        this.zzbED = NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS;
        this.zzbJb = true;
        this.mClosed = false;
        this.zzbEG = new Object();
        this.zzbJc = new zza() { // from class: com.google.android.gms.internal.zzbaz.1
            @Override // com.google.android.gms.internal.zzbaz.zza
            public AdvertisingIdClient.Info zzQa() {
                try {
                    return AdvertisingIdClient.getAdvertisingIdInfo(zzbaz.this.mContext);
                } catch (GooglePlayServicesNotAvailableException e) {
                    zzbaz.this.zzbJb = false;
                    zzbbu.zzc("GooglePlayServicesNotAvailableException getting Advertising Id Info", e);
                    return null;
                } catch (GooglePlayServicesRepairableException e2) {
                    zzbbu.zzc("GooglePlayServicesRepairableException getting Advertising Id Info", e2);
                    return null;
                } catch (IOException e3) {
                    zzbbu.zzc("IOException getting Ad Id Info", e3);
                    return null;
                } catch (IllegalStateException e4) {
                    zzbbu.zzc("IllegalStateException getting Advertising Id Info", e4);
                    return null;
                } catch (Exception e5) {
                    zzbbu.zzc("Unknown exception. Could not get the Advertising Id Info.", e5);
                    return null;
                }
            }
        };
        this.zzuP = zzeVar;
        if (context != null) {
            this.mContext = context.getApplicationContext();
        } else {
            this.mContext = context;
        }
        if (zzaVar != null) {
            this.zzbJc = zzaVar;
        }
        this.zzbEE = this.zzuP.currentTimeMillis();
        this.zzXh = new Thread(new Runnable() { // from class: com.google.android.gms.internal.zzbaz.2
            @Override // java.lang.Runnable
            public void run() {
                zzbaz.this.zzPZ();
            }
        });
    }

    private void zzPW() {
        synchronized (this) {
            try {
                zzPX();
                wait(500L);
            } catch (InterruptedException e) {
            }
        }
    }

    private void zzPX() {
        if (this.zzuP.currentTimeMillis() - this.zzbEE > this.zzbED) {
            synchronized (this.zzbEG) {
                this.zzbEG.notify();
            }
            this.zzbEE = this.zzuP.currentTimeMillis();
        }
    }

    private void zzPY() {
        if (this.zzuP.currentTimeMillis() - this.zzbEF > 3600000) {
            this.zzadB = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzPZ() {
        Process.setThreadPriority(10);
        while (true) {
            boolean z = this.mClosed;
            AdvertisingIdClient.Info info = null;
            if (this.zzbJb) {
                info = this.zzbJc.zzQa();
            }
            if (info != null) {
                this.zzadB = info;
                this.zzbEF = this.zzuP.currentTimeMillis();
                zzbbu.zzbg("Obtained fresh AdvertisingId info from GmsCore.");
            }
            synchronized (this) {
                notifyAll();
            }
            try {
                synchronized (this.zzbEG) {
                    this.zzbEG.wait(this.zzbEC);
                }
            } catch (InterruptedException e) {
                zzbbu.zzbg("sleep interrupted in AdvertiserDataPoller thread; continuing");
            }
        }
    }

    public static zzbaz zzcd(Context context) {
        if (zzbJd == null) {
            synchronized (zzbEI) {
                if (zzbJd == null) {
                    zzbJd = new zzbaz(context);
                    zzbJd.start();
                }
            }
        }
        return zzbJd;
    }

    public boolean isLimitAdTrackingEnabled() {
        if (this.zzadB == null) {
            zzPW();
        } else {
            zzPX();
        }
        zzPY();
        if (this.zzadB == null) {
            return true;
        }
        return this.zzadB.isLimitAdTrackingEnabled();
    }

    public void start() {
        this.zzXh.start();
    }

    public String zzPV() {
        if (this.zzadB == null) {
            zzPW();
        } else {
            zzPX();
        }
        zzPY();
        if (this.zzadB == null) {
            return null;
        }
        return this.zzadB.getId();
    }
}
