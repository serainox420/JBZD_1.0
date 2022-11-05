package com.google.android.gms.internal;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes2.dex */
public final class zzbvv extends zzbvc<Date> {
    public static final zzbvd zzcqF = new zzbvd() { // from class: com.google.android.gms.internal.zzbvv.1
        @Override // com.google.android.gms.internal.zzbvd
        public <T> zzbvc<T> zza(zzbuk zzbukVar, zzbwg<T> zzbwgVar) {
            if (zzbwgVar.zzadQ() == Date.class) {
                return new zzbvv();
            }
            return null;
        }
    };
    private final DateFormat zzcoP = DateFormat.getDateTimeInstance(2, 2, Locale.US);
    private final DateFormat zzcoQ = DateFormat.getDateTimeInstance(2, 2);
    private final DateFormat zzcoR = zzadE();

    private static DateFormat zzadE() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat;
    }

    private synchronized Date zzjU(String str) {
        Date parse;
        try {
            parse = this.zzcoQ.parse(str);
        } catch (ParseException e) {
            try {
                parse = this.zzcoP.parse(str);
            } catch (ParseException e2) {
                try {
                    parse = this.zzcoR.parse(str);
                } catch (ParseException e3) {
                    throw new zzbuz(str, e3);
                }
            }
        }
        return parse;
    }

    @Override // com.google.android.gms.internal.zzbvc
    public synchronized void zza(zzbwj zzbwjVar, Date date) throws IOException {
        if (date == null) {
            zzbwjVar.zzadP();
        } else {
            zzbwjVar.zzjW(this.zzcoP.format(date));
        }
    }

    @Override // com.google.android.gms.internal.zzbvc
    /* renamed from: zzk */
    public Date zzb(zzbwh zzbwhVar) throws IOException {
        if (zzbwhVar.zzadF() == zzbwi.NULL) {
            zzbwhVar.nextNull();
            return null;
        }
        return zzjU(zzbwhVar.nextString());
    }
}
