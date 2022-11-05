package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
/* loaded from: classes2.dex */
public abstract class zzn {
    private static final Object zzaGb = new Object();
    private static zzn zzaGc;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static final class zza {
        private final String zzaGd;
        private final ComponentName zzaGe;
        private final String zzadb;

        public zza(ComponentName componentName) {
            this.zzadb = null;
            this.zzaGd = null;
            this.zzaGe = (ComponentName) zzac.zzw(componentName);
        }

        public zza(String str, String str2) {
            this.zzadb = zzac.zzdr(str);
            this.zzaGd = zzac.zzdr(str2);
            this.zzaGe = null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return zzaa.equal(this.zzadb, zzaVar.zzadb) && zzaa.equal(this.zzaGe, zzaVar.zzaGe);
        }

        public ComponentName getComponentName() {
            return this.zzaGe;
        }

        public String getPackage() {
            return this.zzaGd;
        }

        public int hashCode() {
            return zzaa.hashCode(this.zzadb, this.zzaGe);
        }

        public String toString() {
            return this.zzadb == null ? this.zzaGe.flattenToString() : this.zzadb;
        }

        public Intent zzxZ() {
            return this.zzadb != null ? new Intent(this.zzadb).setPackage(this.zzaGd) : new Intent().setComponent(this.zzaGe);
        }
    }

    public static zzn zzaU(Context context) {
        synchronized (zzaGb) {
            if (zzaGc == null) {
                zzaGc = new zzo(context.getApplicationContext());
            }
        }
        return zzaGc;
    }

    public boolean zza(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        return zza(new zza(componentName), serviceConnection, str);
    }

    protected abstract boolean zza(zza zzaVar, ServiceConnection serviceConnection, String str);

    public boolean zza(String str, String str2, ServiceConnection serviceConnection, String str3) {
        return zza(new zza(str, str2), serviceConnection, str3);
    }

    public void zzb(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        zzb(new zza(componentName), serviceConnection, str);
    }

    protected abstract void zzb(zza zzaVar, ServiceConnection serviceConnection, String str);

    public void zzb(String str, String str2, ServiceConnection serviceConnection, String str3) {
        zzb(new zza(str, str2), serviceConnection, str3);
    }
}
