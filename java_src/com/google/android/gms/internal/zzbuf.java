package com.google.android.gms.internal;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes2.dex */
final class zzbuf implements zzbup<Date>, zzbuy<Date> {
    private final DateFormat zzcoP;
    private final DateFormat zzcoQ;
    private final DateFormat zzcoR;

    zzbuf() {
        this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
    }

    public zzbuf(int i, int i2) {
        this(DateFormat.getDateTimeInstance(i, i2, Locale.US), DateFormat.getDateTimeInstance(i, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbuf(String str) {
        this(new SimpleDateFormat(str, Locale.US), new SimpleDateFormat(str));
    }

    zzbuf(DateFormat dateFormat, DateFormat dateFormat2) {
        this.zzcoP = dateFormat;
        this.zzcoQ = dateFormat2;
        this.zzcoR = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        this.zzcoR.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    private Date zza(zzbuq zzbuqVar) {
        Date parse;
        synchronized (this.zzcoQ) {
            try {
                parse = this.zzcoQ.parse(zzbuqVar.zzadj());
            } catch (ParseException e) {
                try {
                    parse = this.zzcoP.parse(zzbuqVar.zzadj());
                } catch (ParseException e2) {
                    try {
                        parse = this.zzcoR.parse(zzbuqVar.zzadj());
                    } catch (ParseException e3) {
                        throw new zzbuz(zzbuqVar.zzadj(), e3);
                    }
                }
            }
        }
        return parse;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(zzbuf.class.getSimpleName());
        sb.append('(').append(this.zzcoQ.getClass().getSimpleName()).append(')');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.zzbuy
    public zzbuq zza(Date date, Type type, zzbux zzbuxVar) {
        zzbuw zzbuwVar;
        synchronized (this.zzcoQ) {
            zzbuwVar = new zzbuw(this.zzcoP.format(date));
        }
        return zzbuwVar;
    }

    @Override // com.google.android.gms.internal.zzbup
    /* renamed from: zza */
    public Date zzb(zzbuq zzbuqVar, Type type, zzbuo zzbuoVar) throws zzbuu {
        if (!(zzbuqVar instanceof zzbuw)) {
            throw new zzbuu("The date should be a string value");
        }
        Date zza = zza(zzbuqVar);
        if (type == Date.class) {
            return zza;
        }
        if (type == Timestamp.class) {
            return new Timestamp(zza.getTime());
        }
        if (type == java.sql.Date.class) {
            return new java.sql.Date(zza.getTime());
        }
        String valueOf = String.valueOf(getClass());
        String valueOf2 = String.valueOf(type);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 23 + String.valueOf(valueOf2).length()).append(valueOf).append(" cannot deserialize to ").append(valueOf2).toString());
    }
}
