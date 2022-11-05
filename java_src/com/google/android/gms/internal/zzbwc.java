package com.google.android.gms.internal;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
/* loaded from: classes2.dex */
public final class zzbwc extends zzbvc<Date> {
    public static final zzbvd zzcqF = new zzbvd() { // from class: com.google.android.gms.internal.zzbwc.1
        @Override // com.google.android.gms.internal.zzbvd
        public <T> zzbvc<T> zza(zzbuk zzbukVar, zzbwg<T> zzbwgVar) {
            if (zzbwgVar.zzadQ() == Date.class) {
                return new zzbwc();
            }
            return null;
        }
    };
    private final DateFormat zzcrf = new SimpleDateFormat("MMM d, yyyy");

    @Override // com.google.android.gms.internal.zzbvc
    public synchronized void zza(zzbwj zzbwjVar, Date date) throws IOException {
        zzbwjVar.zzjW(date == null ? null : this.zzcrf.format((java.util.Date) date));
    }

    @Override // com.google.android.gms.internal.zzbvc
    /* renamed from: zzm */
    public synchronized Date zzb(zzbwh zzbwhVar) throws IOException {
        Date date;
        if (zzbwhVar.zzadF() == zzbwi.NULL) {
            zzbwhVar.nextNull();
            date = null;
        } else {
            try {
                date = new Date(this.zzcrf.parse(zzbwhVar.nextString()).getTime());
            } catch (ParseException e) {
                throw new zzbuz(e);
            }
        }
        return date;
    }
}
