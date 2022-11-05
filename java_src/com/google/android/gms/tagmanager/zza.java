package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Process;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* loaded from: classes2.dex */
public class zza {
    private static Object zzbEI = new Object();
    private static zza zzbEJ;
    private volatile boolean mClosed;
    private final Context mContext;
    private final Thread zzXh;
    private volatile AdvertisingIdClient.Info zzadB;
    private volatile long zzbEC;
    private volatile long zzbED;
    private volatile long zzbEE;
    private volatile long zzbEF;
    private final Object zzbEG;
    private InterfaceC0484zza zzbEH;
    private final com.google.android.gms.common.util.zze zzuP;

    /* renamed from: com.google.android.gms.tagmanager.zza$zza  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0484zza {
        AdvertisingIdClient.Info zzQa();
    }

    private zza(Context context) {
        this(context, null, com.google.android.gms.common.util.zzi.zzzc());
    }

    public zza(Context context, InterfaceC0484zza interfaceC0484zza, com.google.android.gms.common.util.zze zzeVar) {
        this.zzbEC = 900000L;
        this.zzbED = NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS;
        this.mClosed = false;
        this.zzbEG = new Object();
        this.zzbEH = new InterfaceC0484zza() { // from class: com.google.android.gms.tagmanager.zza.1
            @Override // com.google.android.gms.tagmanager.zza.InterfaceC0484zza
            public AdvertisingIdClient.Info zzQa() {
                try {
                    return AdvertisingIdClient.getAdvertisingIdInfo(zza.this.mContext);
                } catch (GooglePlayServicesNotAvailableException e) {
                    zzbo.zzc("GooglePlayServicesNotAvailableException getting Advertising Id Info", e);
                    return null;
                } catch (GooglePlayServicesRepairableException e2) {
                    zzbo.zzc("GooglePlayServicesRepairableException getting Advertising Id Info", e2);
                    return null;
                } catch (IOException e3) {
                    zzbo.zzc("IOException getting Ad Id Info", e3);
                    return null;
                } catch (IllegalStateException e4) {
                    zzbo.zzc("IllegalStateException getting Advertising Id Info", e4);
                    return null;
                } catch (Exception e5) {
                    zzbo.zzc("Unknown exception. Could not get the Advertising Id Info.", e5);
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
        if (interfaceC0484zza != null) {
            this.zzbEH = interfaceC0484zza;
        }
        this.zzbEE = this.zzuP.currentTimeMillis();
        this.zzXh = new Thread(new Runnable() { // from class: com.google.android.gms.tagmanager.zza.2
            @Override // java.lang.Runnable
            public void run() {
                zza.this.zzPZ();
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
            AdvertisingIdClient.Info zzQa = this.zzbEH.zzQa();
            if (zzQa != null) {
                this.zzadB = zzQa;
                this.zzbEF = this.zzuP.currentTimeMillis();
                zzbo.zzbg("Obtained fresh AdvertisingId info from GmsCore.");
            }
            synchronized (this) {
                notifyAll();
            }
            try {
                synchronized (this.zzbEG) {
                    this.zzbEG.wait(this.zzbEC);
                }
            } catch (InterruptedException e) {
                zzbo.zzbg("sleep interrupted in AdvertiserDataPoller thread; continuing");
            }
        }
    }

    public static zza zzbS(Context context) {
        if (zzbEJ == null) {
            synchronized (zzbEI) {
                if (zzbEJ == null) {
                    zzbEJ = new zza(context);
                    zzbEJ.start();
                }
            }
        }
        return zzbEJ;
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
