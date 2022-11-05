package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.support.v4.content.a;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzabq;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class zzb extends a<Void> implements zzabq {
    private Semaphore zzaku;
    private Set<GoogleApiClient> zzakv;

    public zzb(Context context, Set<GoogleApiClient> set) {
        super(context);
        this.zzaku = new Semaphore(0);
        this.zzakv = set;
    }

    @Override // android.support.v4.content.k
    protected void onStartLoading() {
        this.zzaku.drainPermits();
        forceLoad();
    }

    @Override // android.support.v4.content.a
    /* renamed from: zzrp */
    public Void loadInBackground() {
        int i = 0;
        Iterator<GoogleApiClient> it = this.zzakv.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                try {
                    this.zzaku.tryAcquire(i2, 5L, TimeUnit.SECONDS);
                    return null;
                } catch (InterruptedException e) {
                    Log.i("GACSignInLoader", "Unexpected InterruptedException", e);
                    Thread.currentThread().interrupt();
                    return null;
                }
            }
            i = it.next().zza(this) ? i2 + 1 : i2;
        }
    }

    @Override // com.google.android.gms.internal.zzabq
    public void zzrq() {
        this.zzaku.release();
    }
}
