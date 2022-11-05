package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResults;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimeZone;
/* loaded from: classes.dex */
public final class zzzk {
    private final String zzRg;
    private final int zzaxp;
    private String zzaxq;
    private int zzaxr;
    private String zzaxs;
    private String zzaxt;
    private final boolean zzaxu;
    private int zzaxv;
    private final zzzl zzaxw;
    private zzd zzaxx;
    private final zzb zzaxy;
    private final com.google.android.gms.common.util.zze zzuP;
    public static final Api.zzf<zzzp> zzaid = new Api.zzf<>();
    public static final Api.zza<zzzp, Api.ApiOptions.NoOptions> zzaie = new Api.zza<zzzp, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.internal.zzzk.1
        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zze */
        public zzzp zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzzp(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    @Deprecated
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("ClearcutLogger.API", zzaie, zzaid);

    /* loaded from: classes.dex */
    public class zza {
        private ArrayList<Integer> zzaxA;
        private ArrayList<String> zzaxB;
        private ArrayList<Integer> zzaxC;
        private ArrayList<byte[]> zzaxD;
        private boolean zzaxE;
        private final zzbxy.zzd zzaxF;
        private boolean zzaxG;
        private String zzaxq;
        private int zzaxr;
        private String zzaxs;
        private String zzaxt;
        private int zzaxv;
        private final zzc zzaxz;

        private zza(zzzk zzzkVar, byte[] bArr) {
            this(bArr, (zzc) null);
        }

        private zza(byte[] bArr, zzc zzcVar) {
            this.zzaxr = zzzk.this.zzaxr;
            this.zzaxq = zzzk.this.zzaxq;
            this.zzaxs = zzzk.this.zzaxs;
            this.zzaxt = zzzk.this.zzaxt;
            this.zzaxv = zzzk.zze(zzzk.this);
            this.zzaxA = null;
            this.zzaxB = null;
            this.zzaxC = null;
            this.zzaxD = null;
            this.zzaxE = true;
            this.zzaxF = new zzbxy.zzd();
            this.zzaxG = false;
            this.zzaxs = zzzk.this.zzaxs;
            this.zzaxt = zzzk.this.zzaxt;
            this.zzaxF.zzcvr = zzzk.this.zzuP.currentTimeMillis();
            this.zzaxF.zzcvs = zzzk.this.zzuP.elapsedRealtime();
            this.zzaxF.zzcvD = zzzk.this.zzaxx.zzH(this.zzaxF.zzcvr);
            if (bArr != null) {
                this.zzaxF.zzcvy = bArr;
            }
            this.zzaxz = zzcVar;
        }

        public zza zzcq(int i) {
            this.zzaxF.zzcvu = i;
            return this;
        }

        public zza zzcr(int i) {
            this.zzaxF.zzri = i;
            return this;
        }

        @Deprecated
        public PendingResult<Status> zze(GoogleApiClient googleApiClient) {
            return zzuU();
        }

        public zzzm zzuT() {
            return new zzzm(new zzzu(zzzk.this.zzRg, zzzk.this.zzaxp, this.zzaxr, this.zzaxq, this.zzaxs, this.zzaxt, zzzk.this.zzaxu, this.zzaxv), this.zzaxF, this.zzaxz, null, zzzk.zzb((ArrayList<Integer>) null), zzzk.zzc((ArrayList<String>) null), zzzk.zzb((ArrayList<Integer>) null), zzzk.zzd((ArrayList<byte[]>) null), this.zzaxE);
        }

        @Deprecated
        public PendingResult<Status> zzuU() {
            if (this.zzaxG) {
                throw new IllegalStateException("do not reuse LogEventBuilder");
            }
            this.zzaxG = true;
            zzzm zzuT = zzuT();
            zzzu zzzuVar = zzuT.zzaxI;
            return zzzk.this.zzaxy.zzh(zzzuVar.zzaye, zzzuVar.zzaya) ? zzzk.this.zzaxw.zza(zzuT) : PendingResults.immediatePendingResult(Status.zzazx);
        }
    }

    /* loaded from: classes2.dex */
    public interface zzb {
        boolean zzh(String str, int i);
    }

    /* loaded from: classes2.dex */
    public interface zzc {
        byte[] zzuV();
    }

    /* loaded from: classes2.dex */
    public static class zzd {
        public long zzH(long j) {
            return TimeZone.getDefault().getOffset(j) / 1000;
        }
    }

    public zzzk(Context context, int i, String str, String str2, String str3, boolean z, zzzl zzzlVar, com.google.android.gms.common.util.zze zzeVar, zzd zzdVar, zzb zzbVar) {
        boolean z2 = false;
        this.zzaxr = -1;
        this.zzaxv = 0;
        this.zzRg = context.getPackageName();
        this.zzaxp = zzaz(context);
        this.zzaxr = i;
        this.zzaxq = str;
        this.zzaxs = str2;
        this.zzaxt = str3;
        this.zzaxu = z;
        this.zzaxw = zzzlVar;
        this.zzuP = zzeVar;
        this.zzaxx = zzdVar == null ? new zzd() : zzdVar;
        this.zzaxv = 0;
        this.zzaxy = zzbVar;
        if (this.zzaxu) {
            com.google.android.gms.common.internal.zzac.zzb(this.zzaxs == null ? true : z2, "can't be anonymous with an upload account");
        }
    }

    public zzzk(Context context, String str, String str2) {
        this(context, -1, str, str2, null, false, zzzo.zzaA(context), com.google.android.gms.common.util.zzi.zzzc(), null, new zzzt(context));
    }

    private int zzaz(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.wtf("ClearcutLogger", "This can't happen.");
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int[] zzb(ArrayList<Integer> arrayList) {
        if (arrayList == null) {
            return null;
        }
        int[] iArr = new int[arrayList.size()];
        int i = 0;
        Iterator<Integer> it = arrayList.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return iArr;
            }
            i = i2 + 1;
            iArr[i2] = it.next().intValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String[] zzc(ArrayList<String> arrayList) {
        if (arrayList == null) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[][] zzd(ArrayList<byte[]> arrayList) {
        if (arrayList == null) {
            return null;
        }
        return (byte[][]) arrayList.toArray(new byte[0]);
    }

    static /* synthetic */ int zze(zzzk zzzkVar) {
        return 0;
    }

    public zza zzm(byte[] bArr) {
        return new zza(bArr);
    }
}
