package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzag;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class zzaqg {

    /* loaded from: classes2.dex */
    static class zza implements zzf.zzb, zzf.zzc {
        private final String packageName;
        protected zzaqh zzbgf;
        private final String zzbgg;
        private final LinkedBlockingQueue<zzag.zza> zzbgh;
        private final HandlerThread zzbgi = new HandlerThread("GassClient");

        public zza(Context context, String str, String str2) {
            this.packageName = str;
            this.zzbgg = str2;
            this.zzbgi.start();
            this.zzbgf = new zzaqh(context, this.zzbgi.getLooper(), this, this);
            this.zzbgh = new LinkedBlockingQueue<>();
            connect();
        }

        protected void connect() {
            this.zzbgf.zzxz();
        }

        @Override // com.google.android.gms.common.internal.zzf.zzb
        public void onConnected(Bundle bundle) {
            zzaqm zzGK = zzGK();
            if (zzGK != null) {
                try {
                    this.zzbgh.put(zzGK.zza(new zzaqi(this.packageName, this.zzbgg)).zzGN());
                    zzjn();
                    this.zzbgi.quit();
                } catch (Throwable th) {
                    zzjn();
                    this.zzbgi.quit();
                }
            }
        }

        @Override // com.google.android.gms.common.internal.zzf.zzc
        public void onConnectionFailed(ConnectionResult connectionResult) {
            try {
                this.zzbgh.put(new zzag.zza());
            } catch (InterruptedException e) {
            }
        }

        @Override // com.google.android.gms.common.internal.zzf.zzb
        public void onConnectionSuspended(int i) {
            try {
                this.zzbgh.put(new zzag.zza());
            } catch (InterruptedException e) {
            }
        }

        protected zzaqm zzGK() {
            try {
                return this.zzbgf.zzGL();
            } catch (DeadObjectException | IllegalStateException e) {
                return null;
            }
        }

        public zzag.zza zzaR() {
            return zzjx(5000);
        }

        public void zzjn() {
            if (this.zzbgf != null) {
                if (!this.zzbgf.isConnected() && !this.zzbgf.isConnecting()) {
                    return;
                }
                this.zzbgf.disconnect();
            }
        }

        public zzag.zza zzjx(int i) {
            zzag.zza zzaVar;
            try {
                zzaVar = this.zzbgh.poll(i, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                zzaVar = null;
            }
            return zzaVar == null ? new zzag.zza() : zzaVar;
        }
    }

    public static zzag.zza zzq(Context context, String str, String str2) {
        return new zza(context, str, str2).zzaR();
    }
}
