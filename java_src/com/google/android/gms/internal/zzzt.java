package com.google.android.gms.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.zzzk;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* loaded from: classes2.dex */
public class zzzt implements zzzk.zzb {
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    static Boolean zzaxU = null;
    final zza zzaxV;

    /* loaded from: classes2.dex */
    static class zza {
        final ContentResolver mContentResolver;

        zza(Context context) {
            if (context == null || !zzaB(context)) {
                this.mContentResolver = null;
                return;
            }
            this.mContentResolver = context.getContentResolver();
            zzble.zzb(this.mContentResolver, "gms:playlog:service:sampling_");
        }

        private static boolean zzaB(Context context) {
            if (zzzt.zzaxU == null) {
                zzzt.zzaxU = Boolean.valueOf(zzadg.zzbi(context).checkCallingOrSelfPermission("com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
            }
            return zzzt.zzaxU.booleanValue();
        }

        String zzdb(String str) {
            if (this.mContentResolver == null) {
                return null;
            }
            ContentResolver contentResolver = this.mContentResolver;
            String valueOf = String.valueOf("gms:playlog:service:sampling_");
            String valueOf2 = String.valueOf(str);
            return zzble.zza(contentResolver, valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), (String) null);
        }

        long zzuW() {
            if (this.mContentResolver == null) {
                return 0L;
            }
            return zzble.getLong(this.mContentResolver, "android_id", 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zzb {
        public final String zzaxW;
        public final long zzaxX;
        public final long zzaxY;

        public zzb(String str, long j, long j2) {
            this.zzaxW = str;
            this.zzaxX = j;
            this.zzaxY = j2;
        }
    }

    public zzzt() {
        this(new zza(null));
    }

    public zzzt(Context context) {
        this(new zza(context));
    }

    zzzt(zza zzaVar) {
        this.zzaxV = (zza) com.google.android.gms.common.internal.zzac.zzw(zzaVar);
    }

    static long zzJ(long j) {
        return zzzq.zzn(ByteBuffer.allocate(8).putLong(j).array());
    }

    static boolean zza(long j, long j2, long j3) {
        if (j2 < 0 || j3 < 0) {
            throw new IllegalArgumentException(new StringBuilder(72).append("negative values not supported: ").append(j2).append("/").append(j3).toString());
        }
        return j3 > 0 && zzzw.zzd(j, j3) < j2;
    }

    static long zzd(String str, long j) {
        if (str == null || str.isEmpty()) {
            return zzJ(j);
        }
        byte[] bytes = str.getBytes(UTF_8);
        ByteBuffer allocate = ByteBuffer.allocate(bytes.length + 8);
        allocate.put(bytes);
        allocate.putLong(j);
        return zzzq.zzn(allocate.array());
    }

    static zzb zzda(String str) {
        int i = 0;
        if (str == null) {
            return null;
        }
        String str2 = "";
        int indexOf = str.indexOf(44);
        if (indexOf >= 0) {
            str2 = str.substring(0, indexOf);
            i = indexOf + 1;
        }
        int indexOf2 = str.indexOf(47, i);
        if (indexOf2 <= 0) {
            String valueOf = String.valueOf(str);
            Log.e("LogSamplerImpl", valueOf.length() != 0 ? "Failed to parse the rule: ".concat(valueOf) : new String("Failed to parse the rule: "));
            return null;
        }
        try {
            long parseLong = Long.parseLong(str.substring(i, indexOf2));
            long parseLong2 = Long.parseLong(str.substring(indexOf2 + 1));
            if (parseLong >= 0 && parseLong2 >= 0) {
                return new zzb(str2, parseLong, parseLong2);
            }
            Log.e("LogSamplerImpl", new StringBuilder(72).append("negative values not supported: ").append(parseLong).append("/").append(parseLong2).toString());
            return null;
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(str);
            Log.e("LogSamplerImpl", valueOf2.length() != 0 ? "parseLong() failed while parsing: ".concat(valueOf2) : new String("parseLong() failed while parsing: "), e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.zzzk.zzb
    public boolean zzh(String str, int i) {
        if (str == null || str.isEmpty()) {
            str = i >= 0 ? String.valueOf(i) : null;
        }
        if (str == null) {
            return true;
        }
        long zzuW = this.zzaxV.zzuW();
        zzb zzda = zzda(this.zzaxV.zzdb(str));
        if (zzda == null) {
            return true;
        }
        return zza(zzd(zzda.zzaxW, zzuW), zzda.zzaxX, zzda.zzaxY);
    }
}
