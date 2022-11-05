package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbif;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbib {
    private final Context mContext;
    private String zzbFy;
    private final zzbig zzbLT;
    final Map<String, zzc<zzbio>> zzbLU;
    private final Map<String, zzbim> zzbLV;
    private final com.google.android.gms.common.util.zze zzuP;

    /* loaded from: classes2.dex */
    public interface zza {
        void zza(zzbif zzbifVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class zzb extends zzbia {
        private final zza zzbLW;
        private final List<Integer> zzbLX;
        private final int zzbLY;

        zzb(int i, zzbie zzbieVar, zzbic zzbicVar, List<Integer> list, int i2, zza zzaVar, zzbbd zzbbdVar) {
            super(i, zzbieVar, zzbicVar, zzbbdVar);
            this.zzbLW = zzaVar;
            this.zzbLX = list;
            this.zzbLY = i2;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0038  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0073  */
        @Override // com.google.android.gms.internal.zzbia
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void zza(zzbif zzbifVar) {
            boolean z;
            if (zzbifVar.getStatus() == Status.zzazx) {
                String valueOf = String.valueOf(zzbifVar.zzSN());
                zzbbu.v(valueOf.length() != 0 ? "Container resource successfully loaded from ".concat(valueOf) : new String("Container resource successfully loaded from "));
                if (zzbifVar.getSource() == 0) {
                    zzbif.zza zzSL = zzbifVar.zzSL();
                    if (zzSL.zzSP().zzSG()) {
                        z = true;
                    } else {
                        zzbib.this.zza(zzbifVar.getStatus(), zzSL);
                        if (zzSL.zzSO() != null && zzSL.zzSO().length > 0) {
                            zzbib.this.zzbLT.zzg(zzSL.zzSP().zzSF(), zzSL.zzSO());
                            z = true;
                        }
                    }
                } else {
                    z = true;
                }
                if (!z) {
                    this.zzbLW.zza(zzbifVar);
                    return;
                }
                String valueOf2 = String.valueOf(zzbifVar.zzSN());
                String str = zzbifVar.getStatus().isSuccess() ? "SUCCESS" : "FAILURE";
                zzbbu.v(new StringBuilder(String.valueOf(valueOf2).length() + 54 + String.valueOf(str).length()).append("Cannot fetch a valid resource from ").append(valueOf2).append(". Response status: ").append(str).toString());
                if (zzbifVar.getStatus().isSuccess()) {
                    String valueOf3 = String.valueOf(zzbifVar.zzSN());
                    zzbbu.v(valueOf3.length() != 0 ? "Response source: ".concat(valueOf3) : new String("Response source: "));
                    zzbbu.v(new StringBuilder(26).append("Response size: ").append(zzbifVar.zzSL().zzSO().length).toString());
                }
                zzbib.this.zza(this.zzbLR, this.zzbLX, this.zzbLY + 1, this.zzbLW, this.zzbJm);
                return;
            }
            z = false;
            if (!z) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zzc<T> {
        private T mData;
        private Status zzair;
        private long zzbMa;

        public zzc(Status status, T t, long j) {
            this.zzair = status;
            this.mData = t;
            this.zzbMa = j;
        }

        public long zzSJ() {
            return this.zzbMa;
        }

        public void zzY(T t) {
            this.mData = t;
        }

        public void zzaC(long j) {
            this.zzbMa = j;
        }

        public void zzbO(Status status) {
            this.zzair = status;
        }
    }

    public zzbib(Context context) {
        this(context, new HashMap(), new zzbig(context), com.google.android.gms.common.util.zzi.zzzc());
    }

    zzbib(Context context, Map<String, zzbim> map, zzbig zzbigVar, com.google.android.gms.common.util.zze zzeVar) {
        this.zzbFy = null;
        this.zzbLU = new HashMap();
        this.mContext = context.getApplicationContext();
        this.zzuP = zzeVar;
        this.zzbLT = zzbigVar;
        this.zzbLV = map;
    }

    private void zza(zzbie zzbieVar, List<Integer> list, int i, zza zzaVar) {
        zzbhx zzSK = zzbieVar.zzSK();
        String valueOf = String.valueOf(zzSK.getContainerId());
        zzbbu.v(new StringBuilder(String.valueOf(valueOf).length() + 52).append("Attempting to fetch container ").append(valueOf).append(" from a saved resource").toString());
        this.zzbLT.zza(zzSK.zzSF(), new zzb(1, zzbieVar, zzbid.zzbMb, list, i, zzaVar, null));
    }

    private void zzb(zzbie zzbieVar, List<Integer> list, int i, zza zzaVar) {
        zzbhx zzSK = zzbieVar.zzSK();
        String valueOf = String.valueOf(zzSK.getContainerId());
        zzbbu.v(new StringBuilder(String.valueOf(valueOf).length() + 56).append("Attempting to fetch container ").append(valueOf).append(" from the default resource").toString());
        this.zzbLT.zza(zzSK.zzSF(), zzSK.zzSD(), new zzb(2, zzbieVar, zzbid.zzbMb, list, i, zzaVar, null));
    }

    private void zzb(zzbie zzbieVar, List<Integer> list, int i, zza zzaVar, zzbbd zzbbdVar) {
        boolean z;
        zzbim zzbimVar;
        zzbhx zzSK = zzbieVar.zzSK();
        zzc<zzbio> zzcVar = this.zzbLU.get(zzSK.getContainerId());
        if (zzbieVar.zzSK().zzSG()) {
            z = true;
        } else {
            z = (zzcVar != null ? zzcVar.zzSJ() : this.zzbLT.zzhU(zzSK.getContainerId())) + 900000 < this.zzuP.currentTimeMillis();
        }
        if (!z) {
            zza(zzbieVar, list, i + 1, zzaVar, zzbbdVar);
            return;
        }
        zzbim zzbimVar2 = this.zzbLV.get(zzbieVar.getId());
        if (zzbimVar2 == null) {
            zzbim zzbimVar3 = new zzbim();
            this.zzbLV.put(zzbieVar.getId(), zzbimVar3);
            zzbimVar = zzbimVar3;
        } else {
            zzbimVar = zzbimVar2;
        }
        String valueOf = String.valueOf(zzSK.getContainerId());
        zzbbu.v(new StringBuilder(String.valueOf(valueOf).length() + 43).append("Attempting to fetch container ").append(valueOf).append(" from network").toString());
        zzbimVar.zza(this.mContext, zzbieVar, 0L, new zzb(0, zzbieVar, zzbid.zzbMb, list, i, zzaVar, zzbbdVar));
    }

    void zza(Status status, zzbif.zza zzaVar) {
        String containerId = zzaVar.zzSP().getContainerId();
        zzbio zzSQ = zzaVar.zzSQ();
        if (!this.zzbLU.containsKey(containerId)) {
            this.zzbLU.put(containerId, new zzc<>(status, zzSQ, this.zzuP.currentTimeMillis()));
            return;
        }
        zzc<zzbio> zzcVar = this.zzbLU.get(containerId);
        zzcVar.zzaC(this.zzuP.currentTimeMillis());
        if (status != Status.zzazx) {
            return;
        }
        zzcVar.zzbO(status);
        zzcVar.zzY(zzSQ);
    }

    void zza(zzbie zzbieVar, List<Integer> list, int i, zza zzaVar, zzbbd zzbbdVar) {
        if (i == 0) {
            zzbbu.v("Starting to fetch a new resource");
        }
        if (i >= list.size()) {
            String valueOf = String.valueOf(zzbieVar.zzSK().getContainerId());
            String concat = valueOf.length() != 0 ? "There is no valid resource for the container: ".concat(valueOf) : new String("There is no valid resource for the container: ");
            zzbbu.v(concat);
            zzaVar.zza(new zzbif(new Status(16, concat), list.get(i - 1).intValue()));
            return;
        }
        switch (list.get(i).intValue()) {
            case 0:
                zzb(zzbieVar, list, i, zzaVar, zzbbdVar);
                return;
            case 1:
                zza(zzbieVar, list, i, zzaVar);
                return;
            case 2:
                zzb(zzbieVar, list, i, zzaVar);
                return;
            default:
                throw new UnsupportedOperationException(new StringBuilder(36).append("Unknown fetching source: ").append(i).toString());
        }
    }

    public void zza(String str, String str2, String str3, List<Integer> list, zza zzaVar, zzbbd zzbbdVar) {
        com.google.android.gms.common.internal.zzac.zzax(!list.isEmpty());
        zza(new zzbie().zza(new zzbhx(str, str2, str3, zzhT(str), zzbbz.zzSg().zzSh())), Collections.unmodifiableList(list), 0, zzaVar, zzbbdVar);
    }

    boolean zzhT(String str) {
        zzbbz zzSg = zzbbz.zzSg();
        return zzSg.isPreview() && str.equals(zzSg.getContainerId());
    }
}
