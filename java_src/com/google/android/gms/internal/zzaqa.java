package com.google.android.gms.internal;

import android.os.RemoteException;
/* loaded from: classes.dex */
public abstract class zzaqa<T> {
    private final int zzAW;
    private final String zzAX;
    private final T zzAY;

    /* loaded from: classes2.dex */
    public static class zza extends zzaqa<Boolean> {
        public zza(int i, String str, Boolean bool) {
            super(i, str, bool);
        }

        @Override // com.google.android.gms.internal.zzaqa
        /* renamed from: zzb */
        public Boolean zza(zzaqd zzaqdVar) {
            try {
                return Boolean.valueOf(zzaqdVar.getBooleanFlagValue(getKey(), zzfr().booleanValue(), getSource()));
            } catch (RemoteException e) {
                return zzfr();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb extends zzaqa<Integer> {
        public zzb(int i, String str, Integer num) {
            super(i, str, num);
        }

        @Override // com.google.android.gms.internal.zzaqa
        /* renamed from: zzc */
        public Integer zza(zzaqd zzaqdVar) {
            try {
                return Integer.valueOf(zzaqdVar.getIntFlagValue(getKey(), zzfr().intValue(), getSource()));
            } catch (RemoteException e) {
                return zzfr();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class zzc extends zzaqa<Long> {
        public zzc(int i, String str, Long l) {
            super(i, str, l);
        }

        @Override // com.google.android.gms.internal.zzaqa
        /* renamed from: zzd */
        public Long zza(zzaqd zzaqdVar) {
            try {
                return Long.valueOf(zzaqdVar.getLongFlagValue(getKey(), zzfr().longValue(), getSource()));
            } catch (RemoteException e) {
                return zzfr();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class zzd extends zzaqa<String> {
        public zzd(int i, String str, String str2) {
            super(i, str, str2);
        }

        @Override // com.google.android.gms.internal.zzaqa
        /* renamed from: zze */
        public String zza(zzaqd zzaqdVar) {
            try {
                return zzaqdVar.getStringFlagValue(getKey(), zzfr(), getSource());
            } catch (RemoteException e) {
                return zzfr();
            }
        }
    }

    private zzaqa(int i, String str, T t) {
        this.zzAW = i;
        this.zzAX = str;
        this.zzAY = t;
        zzaqe.zzDE().zza(this);
    }

    public static zza zzb(int i, String str, Boolean bool) {
        return new zza(i, str, bool);
    }

    public static zzb zzb(int i, String str, int i2) {
        return new zzb(i, str, Integer.valueOf(i2));
    }

    public static zzc zzb(int i, String str, long j) {
        return new zzc(i, str, Long.valueOf(j));
    }

    public static zzd zzc(int i, String str, String str2) {
        return new zzd(i, str, str2);
    }

    public T get() {
        return (T) zzaqe.zzDF().zzb(this);
    }

    public String getKey() {
        return this.zzAX;
    }

    public int getSource() {
        return this.zzAW;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract T zza(zzaqd zzaqdVar);

    public T zzfr() {
        return this.zzAY;
    }
}
