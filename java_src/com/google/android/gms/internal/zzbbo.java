package com.google.android.gms.internal;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes2.dex */
class zzbbo extends Thread implements zzbbn {
    private static zzbbo zzbJJ;
    private volatile boolean mClosed;
    private final Context mContext;
    private volatile boolean zzNA;
    private final LinkedBlockingQueue<Runnable> zzbGp;
    private volatile zzbbp zzbJK;
    private final com.google.android.gms.common.util.zze zzuP;

    private zzbbo(Context context) {
        super("GAThread");
        this.zzbGp = new LinkedBlockingQueue<>();
        this.zzNA = false;
        this.mClosed = false;
        this.zzuP = com.google.android.gms.common.util.zzi.zzzc();
        if (context != null) {
            this.mContext = context.getApplicationContext();
        } else {
            this.mContext = context;
        }
        start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzbbo zzcf(Context context) {
        if (zzbJJ == null) {
            zzbJJ = new zzbbo(context);
        }
        return zzbJJ;
    }

    private String zzg(Throwable th) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        th.printStackTrace(printStream);
        printStream.flush();
        return new String(byteArrayOutputStream.toByteArray());
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (true) {
            boolean z = this.mClosed;
            try {
                try {
                    Runnable take = this.zzbGp.take();
                    if (!this.zzNA) {
                        take.run();
                    }
                } catch (InterruptedException e) {
                    zzbbu.zzbg(e.toString());
                }
            } catch (Throwable th) {
                String valueOf = String.valueOf(zzg(th));
                zzbbu.e(valueOf.length() != 0 ? "Error on Google TagManager Thread: ".concat(valueOf) : new String("Error on Google TagManager Thread: "));
                zzbbu.e("Google TagManager is shutting down.");
                this.zzNA = true;
            }
        }
    }

    void zza(final String str, final long j, final String str2, final String str3, final Map<String, String> map, final String str4) {
        zzp(new Runnable() { // from class: com.google.android.gms.internal.zzbbo.1
            @Override // java.lang.Runnable
            public void run() {
                if (zzbbo.this.zzbJK == null) {
                    zzbcg zzSr = zzbcg.zzSr();
                    zzSr.zza(zzbbo.this.mContext, this);
                    zzbbo.this.zzbJK = zzSr.zzSs();
                }
                zzbbo.this.zzbJK.zza(j, str, str2, str3, map, str4);
            }
        });
    }

    @Override // com.google.android.gms.internal.zzbbn
    public void zzb(String str, String str2, String str3, Map<String, String> map, String str4) {
        zza(str, this.zzuP.currentTimeMillis(), str2, str3, map, str4);
    }

    @Override // com.google.android.gms.internal.zzbbn
    public void zzp(Runnable runnable) {
        this.zzbGp.add(runnable);
    }
}
