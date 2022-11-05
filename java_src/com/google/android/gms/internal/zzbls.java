package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbma;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.auth.UserProfileChangeRequest;
import com.google.firebase.auth.a;
import com.google.firebase.auth.b;
import com.google.firebase.auth.d;
import com.google.firebase.auth.e;
import com.google.firebase.c;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbls extends com.google.android.gms.common.api.zzc<zzbma.zza> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zza extends zzbmd<Void, zzbmz> {
        private final String zzaZU;

        public zza(String str) {
            super(7);
            this.zzaZU = com.google.android.gms.common.internal.zzac.zzh(str, "code cannot be null or empty");
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zzj(this.zzaZU, this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            zzVU();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzb extends zzbmd<Object, zzbmz> {
        private final String zzaZU;

        public zzb(String str) {
            super(4);
            this.zzaZU = com.google.android.gms.common.internal.zzac.zzh(str, "code cannot be null or empty");
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zzi(this.zzaZU, this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            zzae(new zzbnb(this.zzbYq));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzc extends zzbmd<Void, zzbmz> {
        private final String zzaZU;
        private final String zzbXV;

        public zzc(String str, String str2) {
            super(4);
            this.zzaZU = com.google.android.gms.common.internal.zzac.zzh(str, "code cannot be null or empty");
            this.zzbXV = com.google.android.gms.common.internal.zzac.zzh(str2, "new password cannot be null or empty");
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zzf(this.zzaZU, this.zzbXV, this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            zzVU();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzd extends zzbmd<Object, zzbmz> {
        private String zzajh;
        private String zzaka;

        public zzd(String str, String str2) {
            super(2);
            this.zzaka = com.google.android.gms.common.internal.zzac.zzh(str, "email cannot be null or empty");
            this.zzajh = com.google.android.gms.common.internal.zzac.zzh(str2, "password cannot be null or empty");
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zzc(this.zzaka, this.zzajh, this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            zzbnf zza = zzbls.zza(this.zzbXF, this.zzbYo);
            ((zzbmz) this.zzbYl).zza(this.zzbYn, zza);
            zzae(new zzbnc(zza));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zze extends zzbmd<Void, zzbni> {
        public zze() {
            super(5);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zzg(this.zzbYj.zzVH(), this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            ((zzbni) this.zzbYl).zzVE();
            zzae(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzf extends zzbmd<Object, zzbmz> {
        private final String zzaka;

        public zzf(String str) {
            super(3);
            this.zzaka = com.google.android.gms.common.internal.zzac.zzh(str, "email cannot be null or empty");
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zzc(this.zzaka, this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            zzae(new zzbng(this.zzbYp));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzg extends zzbmd<e, zzbmz> {
        private final String zzbXW;

        public zzg(String str) {
            super(1);
            this.zzbXW = com.google.android.gms.common.internal.zzac.zzh(str, "refresh token cannot be null");
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zza(this.zzbXW, this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            this.zzbYn.zziy(this.zzbXW);
            ((zzbmz) this.zzbYl).zza(this.zzbYn, this.zzbYj);
            zzae(new e(this.zzbYn.getAccessToken()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzh extends zzbmd<Object, zzbmz> {
        private final b zzbXX;

        public zzh(b bVar) {
            super(2);
            this.zzbXX = (b) com.google.android.gms.common.internal.zzac.zzb(bVar, "credential cannot be null");
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zza(this.zzbXX.b(), this.zzbXX.c(), this.zzbYj.zzVH(), this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            zzbnf zza = zzbls.zza(this.zzbXF, this.zzbYo);
            ((zzbmz) this.zzbYl).zza(this.zzbYn, zza);
            zzae(new zzbnc(zza));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzi extends zzbmd<Object, zzbmz> {
        private final zzbmx zzbXY;

        public zzi(a aVar) {
            super(2);
            com.google.android.gms.common.internal.zzac.zzb(aVar, "credential cannot be null");
            this.zzbXY = zzbna.zza(aVar);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zza(this.zzbYj.zzVH(), this.zzbXY, this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            zzbnf zza = zzbls.zza(this.zzbXF, this.zzbYo);
            ((zzbmz) this.zzbYl).zza(this.zzbYn, zza);
            zzae(new zzbnc(zza));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzj<ResultT, CallbackT> extends zzabv<zzblt, ResultT> implements zzbmc<ResultT> {
        private TaskCompletionSource<ResultT> zzazE;
        private zzbmd<ResultT, CallbackT> zzbXZ;

        public zzj(zzbmd<ResultT, CallbackT> zzbmdVar) {
            this.zzbXZ = zzbmdVar;
            this.zzbXZ.zza(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzabv
        public void zza(zzblt zzbltVar, TaskCompletionSource<ResultT> taskCompletionSource) throws RemoteException {
            this.zzazE = taskCompletionSource;
            this.zzbXZ.zza(zzbltVar.zzVP());
        }

        @Override // com.google.android.gms.internal.zzbmc
        public final void zza(ResultT resultt, Status status) {
            com.google.android.gms.common.internal.zzac.zzb(this.zzazE, "doExecute must be called before onComplete");
            if (status != null) {
                this.zzazE.setException(zzblv.zzce(status));
            } else {
                this.zzazE.setResult(resultt);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzk extends zzbmd<Void, zzbmz> {
        private final zzbmx zzbXY;

        public zzk(a aVar) {
            super(2);
            com.google.android.gms.common.internal.zzac.zzb(aVar, "credential cannot be null");
            this.zzbXY = zzbna.zza(aVar);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zza(this.zzbXY, this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            zzbnf zza = zzbls.zza(this.zzbXF, this.zzbYo);
            if (!this.zzbYj.getUid().equalsIgnoreCase(zza.getUid())) {
                zzcf(zzbnh.zzWr());
                return;
            }
            ((zzbmz) this.zzbYl).zza(this.zzbYn, zza);
            zzVU();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzl extends zzbmd<Void, zzbmz> {
        private final String zzajh;
        private final String zzaka;

        public zzl(String str, String str2) {
            super(2);
            this.zzaka = com.google.android.gms.common.internal.zzac.zzh(str, "email cannot be null or empty");
            this.zzajh = com.google.android.gms.common.internal.zzac.zzh(str2, "password cannot be null or empty");
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zzd(this.zzaka, this.zzajh, this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            zzbnf zza = zzbls.zza(this.zzbXF, this.zzbYo);
            if (!this.zzbYj.getUid().equalsIgnoreCase(zza.getUid())) {
                zzcf(zzbnh.zzWr());
                return;
            }
            ((zzbmz) this.zzbYl).zza(this.zzbYn, zza);
            zzVU();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzm extends zzbmd<Void, zzbmz> {
        public zzm() {
            super(2);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zzf(this.zzbYj.zzVH(), this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            ((zzbmz) this.zzbYl).zza(this.zzbYn, zzbls.zza(this.zzbXF, this.zzbYo, this.zzbYj.isAnonymous()));
            zzae(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzn extends zzbmd<Void, zzbmz> {
        private String zzaiJ;

        public zzn(String str) {
            super(6);
            this.zzaiJ = com.google.android.gms.common.internal.zzac.zzh(str, "token cannot be null or empty");
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zzh(this.zzaiJ, this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            zzVU();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzo extends zzbmd<Void, zzbmz> {
        private String zzaka;

        public zzo(String str) {
            super(4);
            this.zzaka = com.google.android.gms.common.internal.zzac.zzh(str, "email cannot be null or empty");
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zzd(this.zzaka, this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            zzVU();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzp extends zzbmd<Object, zzbmz> {
        public zzp() {
            super(2);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zza(this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            zzbnf zza = zzbls.zza(this.zzbXF, this.zzbYo, true);
            ((zzbmz) this.zzbYl).zza(this.zzbYn, zza);
            zzae(new zzbnc(zza));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzq extends zzbmd<Object, zzbmz> {
        private final zzbmx zzbXY;

        public zzq(a aVar) {
            super(2);
            com.google.android.gms.common.internal.zzac.zzb(aVar, "credential cannot be null");
            this.zzbXY = zzbna.zza(aVar);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zza(this.zzbXY, this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            zzbnf zza = zzbls.zza(this.zzbXF, this.zzbYo);
            ((zzbmz) this.zzbYl).zza(this.zzbYn, zza);
            zzae(new zzbnc(zza));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzr extends zzbmd<Object, zzbmz> {
        private final String zzaiJ;

        public zzr(String str) {
            super(2);
            this.zzaiJ = com.google.android.gms.common.internal.zzac.zzh(str, "token cannot be null or empty");
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zzb(this.zzaiJ, this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            zzbnf zza = zzbls.zza(this.zzbXF, this.zzbYo);
            ((zzbmz) this.zzbYl).zza(this.zzbYn, zza);
            zzae(new zzbnc(zza));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzs extends zzbmd<Object, zzbmz> {
        private String zzajh;
        private String zzaka;

        public zzs(String str, String str2) {
            super(2);
            this.zzaka = com.google.android.gms.common.internal.zzac.zzh(str, "email cannot be null or empty");
            this.zzajh = com.google.android.gms.common.internal.zzac.zzh(str2, "password cannot be null or empty");
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zzd(this.zzaka, this.zzajh, this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            zzbnf zza = zzbls.zza(this.zzbXF, this.zzbYo);
            ((zzbmz) this.zzbYl).zza(this.zzbYn, zza);
            zzae(new zzbnc(zza));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzt extends zzbmd<Object, zzbmz> {
        public zzt() {
            super(2);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zze(this.zzbYj.zzVH(), this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            zzbnf zza = zzbls.zza(this.zzbXF, this.zzbYo);
            ((zzbmz) this.zzbYl).zza(this.zzbYn, zza);
            zzae(new zzbnc(zza));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzu extends zzbmd<Object, zzbmz> {
        private String zzbYa;

        public zzu(String str) {
            super(2);
            this.zzbYa = com.google.android.gms.common.internal.zzac.zzh(str, "provider cannot be null or empty");
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zze(this.zzbYa, this.zzbYj.zzVH(), this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            zzbnf zza = zzbls.zza(this.zzbXF, this.zzbYo);
            ((zzbmz) this.zzbYl).zza(this.zzbYn, zza);
            zzae(new zzbnc(zza));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzv extends zzbmd<Void, zzbmz> {
        private final String zzaka;

        public zzv(String str) {
            super(2);
            this.zzaka = com.google.android.gms.common.internal.zzac.zzh(str, "email cannot be null or empty");
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zza(this.zzbYj.zzVH(), this.zzaka, this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            ((zzbmz) this.zzbYl).zza(this.zzbYn, zzbls.zza(this.zzbXF, this.zzbYo));
            zzVU();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzw extends zzbmd<Void, zzbmz> {
        private final String zzajh;

        public zzw(String str) {
            super(2);
            this.zzajh = com.google.android.gms.common.internal.zzac.zzh(str, "password cannot be null or empty");
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zzb(this.zzbYj.zzVH(), this.zzajh, this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            ((zzbmz) this.zzbYl).zza(this.zzbYn, zzbls.zza(this.zzbXF, this.zzbYo));
            zzVU();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzx extends zzbmd<Void, zzbmz> {
        private final UserProfileChangeRequest zzbYb;

        public zzx(UserProfileChangeRequest userProfileChangeRequest) {
            super(2);
            this.zzbYb = (UserProfileChangeRequest) com.google.android.gms.common.internal.zzac.zzb(userProfileChangeRequest, "request cannot be null");
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zza(this.zzbYj.zzVH(), this.zzbYb, this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            ((zzbmz) this.zzbYl).zza(this.zzbYn, zzbls.zza(this.zzbXF, this.zzbYo));
            zzVU();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzy extends zzbmd<String, zzbmz> {
        private final String zzaZU;

        public zzy(String str) {
            super(4);
            this.zzaZU = com.google.android.gms.common.internal.zzac.zzh(str, "code cannot be null or empty");
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void dispatch() throws RemoteException {
            this.zzbYk.zzi(this.zzaZU, this.zzbYi);
        }

        @Override // com.google.android.gms.internal.zzbmd
        public void zzVO() {
            if (new zzbnb(this.zzbYq).getOperation() != 0) {
                zzcf(new Status(17499));
            } else {
                zzae(this.zzbYq.getEmail());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbls(Context context, zzbma.zza zzaVar) {
        super(context, zzbma.zzbYg, zzaVar, new c());
    }

    private <ResultT, CallbackT> zzj<ResultT, CallbackT> zza(zzbmd<ResultT, CallbackT> zzbmdVar) {
        return new zzj<>(zzbmdVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzbnf zza(com.google.firebase.a aVar, zzbmj zzbmjVar) {
        return zza(aVar, zzbmjVar, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzbnf zza(com.google.firebase.a aVar, zzbmj zzbmjVar, boolean z) {
        com.google.android.gms.common.internal.zzac.zzw(aVar);
        com.google.android.gms.common.internal.zzac.zzw(zzbmjVar);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new zzbnd(zzbmjVar, "firebase"));
        List<zzbmp> zzVZ = zzbmjVar.zzVZ();
        if (zzVZ != null && !zzVZ.isEmpty()) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= zzVZ.size()) {
                    break;
                }
                arrayList.add(new zzbnd(zzVZ.get(i2)));
                i = i2 + 1;
            }
        }
        zzbnf zzbnfVar = new zzbnf(aVar, arrayList);
        zzbnfVar.zzaY(z);
        return zzbnfVar;
    }

    private Task<Object> zza(com.google.firebase.a aVar, a aVar2, d dVar, zzbmz zzbmzVar) {
        com.google.android.gms.common.internal.zzac.zzw(aVar);
        com.google.android.gms.common.internal.zzac.zzw(aVar2);
        com.google.android.gms.common.internal.zzac.zzw(dVar);
        com.google.android.gms.common.internal.zzac.zzw(zzbmzVar);
        List<String> providers = dVar.getProviders();
        return (providers == null || !providers.contains(aVar2.a())) ? doWrite(zza(new zzi(aVar2).zze(aVar).zze(dVar).zzad(zzbmzVar))) : Tasks.forException(zzblv.zzce(new Status(17015)));
    }

    private Task<Object> zza(com.google.firebase.a aVar, b bVar, d dVar, zzbmz zzbmzVar) {
        return doWrite(zza(new zzh(bVar).zze(aVar).zze(dVar).zzad(zzbmzVar)));
    }

    private Task<Object> zza(com.google.firebase.a aVar, d dVar, zzbmz zzbmzVar) {
        return doWrite(zza(new zzt().zze(aVar).zze(dVar).zzad(zzbmzVar)));
    }

    private Task<Object> zza(com.google.firebase.a aVar, String str, d dVar, zzbmz zzbmzVar) {
        return doWrite(zza(new zzu(str).zze(aVar).zze(dVar).zzad(zzbmzVar)));
    }

    public Task<Object> zza(com.google.firebase.a aVar, zzbmz zzbmzVar) {
        return doWrite(zza(new zzp().zze(aVar).zzad(zzbmzVar)));
    }

    public Task<Object> zza(com.google.firebase.a aVar, a aVar2, zzbmz zzbmzVar) {
        return doWrite(zza(new zzq(aVar2).zze(aVar).zzad(zzbmzVar)));
    }

    public Task<Void> zza(com.google.firebase.a aVar, d dVar, UserProfileChangeRequest userProfileChangeRequest, zzbmz zzbmzVar) {
        return doWrite(zza(new zzx(userProfileChangeRequest).zze(aVar).zze(dVar).zzad(zzbmzVar)));
    }

    public Task<Void> zza(com.google.firebase.a aVar, d dVar, a aVar2, zzbmz zzbmzVar) {
        return doWrite(zza(new zzk(aVar2).zze(aVar).zze(dVar).zzad(zzbmzVar)));
    }

    public Task<e> zza(com.google.firebase.a aVar, d dVar, String str, zzbmz zzbmzVar) {
        return doRead(zza(new zzg(str).zze(aVar).zze(dVar).zzad(zzbmzVar)));
    }

    public Task<Void> zza(com.google.firebase.a aVar, d dVar, String str, String str2, zzbmz zzbmzVar) {
        return doWrite(zza(new zzl(str, str2).zze(aVar).zze(dVar).zzad(zzbmzVar)));
    }

    public Task<Object> zza(com.google.firebase.a aVar, String str) {
        return doRead(zza(new zzf(str).zze(aVar)));
    }

    public Task<Object> zza(com.google.firebase.a aVar, String str, zzbmz zzbmzVar) {
        return doWrite(zza(new zzr(str).zze(aVar).zzad(zzbmzVar)));
    }

    public Task<Void> zza(com.google.firebase.a aVar, String str, String str2) {
        return doWrite(zza(new zzc(str, str2).zze(aVar)));
    }

    public Task<Object> zza(com.google.firebase.a aVar, String str, String str2, zzbmz zzbmzVar) {
        return doWrite(zza(new zzd(str, str2).zze(aVar).zzad(zzbmzVar)));
    }

    public Task<Void> zza(d dVar, zzbni zzbniVar) {
        return doWrite(zza(new zze().zze(dVar).zzad(zzbniVar)));
    }

    public Task<Void> zzb(com.google.firebase.a aVar, d dVar, zzbmz zzbmzVar) {
        return doRead(zza(new zzm().zze(aVar).zze(dVar).zzad(zzbmzVar)));
    }

    public Task<Object> zzb(com.google.firebase.a aVar, d dVar, a aVar2, zzbmz zzbmzVar) {
        com.google.android.gms.common.internal.zzac.zzw(aVar);
        com.google.android.gms.common.internal.zzac.zzw(aVar2);
        com.google.android.gms.common.internal.zzac.zzw(dVar);
        com.google.android.gms.common.internal.zzac.zzw(zzbmzVar);
        return b.class.isAssignableFrom(aVar2.getClass()) ? zza(aVar, (b) aVar2, dVar, zzbmzVar) : zza(aVar, aVar2, dVar, zzbmzVar);
    }

    public Task<Void> zzb(com.google.firebase.a aVar, d dVar, String str, zzbmz zzbmzVar) {
        return doWrite(zza(new zzv(str).zze(aVar).zze(dVar).zzad(zzbmzVar)));
    }

    public Task<Void> zzb(com.google.firebase.a aVar, String str) {
        return doWrite(zza(new zzo(str).zze(aVar)));
    }

    public Task<Object> zzb(com.google.firebase.a aVar, String str, String str2, zzbmz zzbmzVar) {
        return doWrite(zza(new zzs(str, str2).zze(aVar).zzad(zzbmzVar)));
    }

    public Task<Void> zzc(com.google.firebase.a aVar, d dVar, String str, zzbmz zzbmzVar) {
        return doWrite(zza(new zzw(str).zze(aVar).zze(dVar).zzad(zzbmzVar)));
    }

    public Task<Void> zzc(com.google.firebase.a aVar, String str) {
        return doWrite(zza(new zzn(str).zze(aVar)));
    }

    public Task<Object> zzd(com.google.firebase.a aVar, d dVar, String str, zzbmz zzbmzVar) {
        com.google.android.gms.common.internal.zzac.zzw(aVar);
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzw(dVar);
        com.google.android.gms.common.internal.zzac.zzw(zzbmzVar);
        List<String> providers = dVar.getProviders();
        if ((providers == null || providers.contains(str)) && !dVar.isAnonymous()) {
            char c = 65535;
            switch (str.hashCode()) {
                case 1216985755:
                    if (str.equals("password")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    return zza(aVar, dVar, zzbmzVar);
                default:
                    return zza(aVar, str, dVar, zzbmzVar);
            }
        }
        return Tasks.forException(zzblv.zzce(new Status(17016, str)));
    }

    public Task<Object> zzd(com.google.firebase.a aVar, String str) {
        return doWrite(zza(new zzb(str).zze(aVar)));
    }

    public Task<Void> zze(com.google.firebase.a aVar, String str) {
        return doWrite(zza(new zza(str).zze(aVar)));
    }

    public Task<String> zzf(com.google.firebase.a aVar, String str) {
        return doWrite(zza(new zzy(str).zze(aVar)));
    }
}
