package com.google.android.gms.internal;

import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes2.dex */
public final class zzbwd extends zzbvc<Time> {
    public static final zzbvd zzcqF = new zzbvd() { // from class: com.google.android.gms.internal.zzbwd.1
        @Override // com.google.android.gms.internal.zzbvd
        public <T> zzbvc<T> zza(zzbuk zzbukVar, zzbwg<T> zzbwgVar) {
            if (zzbwgVar.zzadQ() == Time.class) {
                return new zzbwd();
            }
            return null;
        }
    };
    private final DateFormat zzcrf = new SimpleDateFormat("hh:mm:ss a");

    @Override // com.google.android.gms.internal.zzbvc
    public synchronized void zza(zzbwj zzbwjVar, Time time) throws IOException {
        zzbwjVar.zzjW(time == null ? null : this.zzcrf.format((Date) time));
    }

    @Override // com.google.android.gms.internal.zzbvc
    /* renamed from: zzn */
    public synchronized Time zzb(zzbwh zzbwhVar) throws IOException {
        Time time;
        if (zzbwhVar.zzadF() == zzbwi.NULL) {
            zzbwhVar.nextNull();
            time = null;
        } else {
            try {
                time = new Time(this.zzcrf.parse(zzbwhVar.nextString()).getTime());
            } catch (ParseException e) {
                throw new zzbuz(e);
            }
        }
        return time;
    }
}
