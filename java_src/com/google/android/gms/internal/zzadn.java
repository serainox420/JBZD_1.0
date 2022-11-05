package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzadi;
import com.google.android.gms.internal.zzady;
import com.google.firebase.iid.b;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class zzadn implements zzadi {
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private static final Pattern zzaII = Pattern.compile("^(1|true|t|yes|y|on)$", 2);
    private static final Pattern zzaIJ = Pattern.compile("^(0|false|f|no|n|off|)$", 2);

    /* loaded from: classes2.dex */
    static abstract class zza extends zzady.zza {
        zza() {
        }

        @Override // com.google.android.gms.internal.zzady
        public void zzJ(Status status) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzady
        public void zza(Status status, zzadw zzadwVar) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzady
        public void zza(Status status, Map map) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzady
        public void zza(Status status, byte[] bArr) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes2.dex */
    static abstract class zzb<R extends Result> extends zzaad.zza<R, zzadp> {
        public zzb(GoogleApiClient googleApiClient) {
            super(zzadh.API, googleApiClient);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zzb<R>) ((Result) obj));
        }

        protected abstract void zza(Context context, zzadz zzadzVar) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public final void zza(zzadp zzadpVar) throws RemoteException {
            zza(zzadpVar.getContext(), (zzadz) zzadpVar.zzxD());
        }
    }

    /* loaded from: classes2.dex */
    static abstract class zzc extends zzb<zzadi.zzb> {
        protected zzady zzaIL;

        public zzc(GoogleApiClient googleApiClient) {
            super(googleApiClient);
            this.zzaIL = new zza() { // from class: com.google.android.gms.internal.zzadn.zzc.1
                @Override // com.google.android.gms.internal.zzadn.zza, com.google.android.gms.internal.zzady
                public void zza(Status status, zzadw zzadwVar) {
                    if (zzadwVar.getStatusCode() == 6502 || zzadwVar.getStatusCode() == 6507) {
                        zzc.this.zzb((zzc) new zzd(zzadn.zzdv(zzadwVar.getStatusCode()), zzadn.zza(zzadwVar), zzadwVar.getThrottleEndTimeMillis(), zzadn.zzb(zzadwVar)));
                    } else {
                        zzc.this.zzb((zzc) new zzd(zzadn.zzdv(zzadwVar.getStatusCode()), zzadn.zza(zzadwVar), zzadn.zzb(zzadwVar)));
                    }
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    public static class zzd implements zzadi.zzb {
        private final Map<String, TreeMap<String, byte[]>> zzaIN;
        private final long zzaIO;
        private final List<byte[]> zzaIP;
        private final Status zzair;

        public zzd(Status status, Map<String, TreeMap<String, byte[]>> map) {
            this(status, map, -1L);
        }

        public zzd(Status status, Map<String, TreeMap<String, byte[]>> map, long j) {
            this(status, map, j, null);
        }

        public zzd(Status status, Map<String, TreeMap<String, byte[]>> map, long j, List<byte[]> list) {
            this.zzair = status;
            this.zzaIN = map;
            this.zzaIO = j;
            this.zzaIP = list;
        }

        public zzd(Status status, Map<String, TreeMap<String, byte[]>> map, List<byte[]> list) {
            this(status, map, -1L, list);
        }

        @Override // com.google.android.gms.internal.zzadi.zzb, com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }

        @Override // com.google.android.gms.internal.zzadi.zzb
        public long getThrottleEndTimeMillis() {
            return this.zzaIO;
        }

        public boolean zzI(String str, String str2) {
            if (this.zzaIN == null || this.zzaIN.get(str2) == null) {
                return false;
            }
            return this.zzaIN.get(str2).get(str) != null;
        }

        @Override // com.google.android.gms.internal.zzadi.zzb
        public byte[] zza(String str, byte[] bArr, String str2) {
            return zzI(str, str2) ? this.zzaIN.get(str2).get(str) : bArr;
        }

        @Override // com.google.android.gms.internal.zzadi.zzb
        public List<byte[]> zzzE() {
            return this.zzaIP;
        }

        @Override // com.google.android.gms.internal.zzadi.zzb
        public Map<String, Set<String>> zzzF() {
            HashMap hashMap = new HashMap();
            if (this.zzaIN != null) {
                for (String str : this.zzaIN.keySet()) {
                    TreeMap<String, byte[]> treeMap = this.zzaIN.get(str);
                    if (treeMap != null) {
                        hashMap.put(str, treeMap.keySet());
                    }
                }
            }
            return hashMap;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static HashMap<String, TreeMap<String, byte[]>> zza(zzadw zzadwVar) {
        DataHolder zzzM;
        if (zzadwVar == null || (zzzM = zzadwVar.zzzM()) == null) {
            return null;
        }
        zzaea zzaeaVar = (zzaea) new com.google.android.gms.common.data.zzd(zzzM, zzaea.CREATOR).mo547get(0);
        zzadwVar.zzzO();
        HashMap<String, TreeMap<String, byte[]>> hashMap = new HashMap<>();
        for (String str : zzaeaVar.zzzQ().keySet()) {
            TreeMap<String, byte[]> treeMap = new TreeMap<>();
            hashMap.put(str, treeMap);
            Bundle bundle = zzaeaVar.zzzQ().getBundle(str);
            for (String str2 : bundle.keySet()) {
                treeMap.put(str2, bundle.getByteArray(str2));
            }
        }
        return hashMap;
    }

    static List<byte[]> zzb(zzadw zzadwVar) {
        DataHolder zzzN;
        if (zzadwVar == null || (zzzN = zzadwVar.zzzN()) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (zzadq zzadqVar : new com.google.android.gms.common.data.zzd(zzzN, zzadq.CREATOR)) {
            arrayList.add(zzadqVar.getPayload());
        }
        zzadwVar.zzzP();
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Status zzdv(int i) {
        return new Status(i, zzadj.getStatusCodeString(i));
    }

    @Override // com.google.android.gms.internal.zzadi
    public PendingResult<zzadi.zzb> zza(GoogleApiClient googleApiClient, final zzadi.zza zzaVar) {
        if (googleApiClient == null || zzaVar == null) {
            return null;
        }
        return googleApiClient.zza((GoogleApiClient) new zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzadn.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzI */
            public zzadi.zzb zzc(Status status) {
                return new zzd(status, new HashMap());
            }

            @Override // com.google.android.gms.internal.zzadn.zzb
            protected void zza(Context context, zzadz zzadzVar) throws RemoteException {
                String str;
                String str2;
                DataHolder.zza zzxj = com.google.android.gms.common.data.zzd.zzxj();
                for (Map.Entry<String, String> entry : zzaVar.zzzz().entrySet()) {
                    com.google.android.gms.common.data.zzd.zza(zzxj, new zzads(entry.getKey(), entry.getValue()));
                }
                DataHolder zzcK = zzxj.zzcK(0);
                String zzwQ = zzaba.zzaQ(context) == Status.zzazx ? zzaba.zzwQ() : null;
                try {
                    str = b.a().b();
                    try {
                        str2 = b.a().c();
                    } catch (IllegalStateException e) {
                        e = e;
                        if (Log.isLoggable("ConfigApiImpl", 3)) {
                            Log.d("ConfigApiImpl", "Cannot retrieve instanceId or instanceIdToken.", e);
                        }
                        str2 = null;
                        zzadzVar.zza(this.zzaIL, new zzadu(context.getPackageName(), zzaVar.zzzy(), zzcK, zzwQ, str, str2, null, zzaVar.zzzA(), zzadm.zzbk(context), zzaVar.zzzB(), zzaVar.zzzC()));
                    }
                } catch (IllegalStateException e2) {
                    e = e2;
                    str = null;
                }
                try {
                    zzadzVar.zza(this.zzaIL, new zzadu(context.getPackageName(), zzaVar.zzzy(), zzcK, zzwQ, str, str2, null, zzaVar.zzzA(), zzadm.zzbk(context), zzaVar.zzzB(), zzaVar.zzzC()));
                } finally {
                    zzcK.close();
                }
            }
        });
    }
}
