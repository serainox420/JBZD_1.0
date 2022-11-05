package com.google.android.gms.tagmanager;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes2.dex */
class zzav extends Thread implements zzau {
    private static zzav zzbGq;
    private volatile boolean mClosed;
    private final Context mContext;
    private volatile boolean zzNA;
    private final LinkedBlockingQueue<Runnable> zzbGp;
    private volatile zzaw zzbGr;

    private zzav(Context context) {
        super("GAThread");
        this.zzbGp = new LinkedBlockingQueue<>();
        this.zzNA = false;
        this.mClosed = false;
        if (context != null) {
            this.mContext = context.getApplicationContext();
        } else {
            this.mContext = context;
        }
        start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzav zzca(Context context) {
        if (zzbGq == null) {
            zzbGq = new zzav(context);
        }
        return zzbGq;
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
                    zzbo.zzbg(e.toString());
                }
            } catch (Throwable th) {
                String valueOf = String.valueOf(zzg(th));
                zzbo.e(valueOf.length() != 0 ? "Error on Google TagManager Thread: ".concat(valueOf) : new String("Error on Google TagManager Thread: "));
                zzbo.e("Google TagManager is shutting down.");
                this.zzNA = true;
            }
        }
    }

    @Override // com.google.android.gms.tagmanager.zzau
    public void zzhj(String str) {
        zzp(str, System.currentTimeMillis());
    }

    @Override // com.google.android.gms.tagmanager.zzau
    public void zzp(Runnable runnable) {
        this.zzbGp.add(runnable);
    }

    void zzp(final String str, final long j) {
        zzp(new Runnable() { // from class: com.google.android.gms.tagmanager.zzav.1
            @Override // java.lang.Runnable
            public void run() {
                if (zzav.this.zzbGr == null) {
                    zzdc zzRy = zzdc.zzRy();
                    zzRy.zza(zzav.this.mContext, this);
                    zzav.this.zzbGr = zzRy.zzRB();
                }
                zzav.this.zzbGr.zzg(j, str);
            }
        });
    }
}
