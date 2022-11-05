package com.google.android.gms.wearable.internal;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.wearable.CapabilityApi;
import com.google.android.gms.wearable.CapabilityInfo;
import com.google.android.gms.wearable.Channel;
import com.google.android.gms.wearable.ChannelApi;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataItemBuffer;
import com.google.android.gms.wearable.MessageApi;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.internal.zzah;
import com.google.android.gms.wearable.internal.zzby;
import com.google.android.gms.wearable.internal.zzcb;
import com.google.android.gms.wearable.internal.zzn;
import com.google.android.gms.wearable.internal.zzq;
import com.google.android.gms.wearable.internal.zzu;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.FutureTask;
/* loaded from: classes2.dex */
final class zzcw {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zza extends zzb<CapabilityApi.AddLocalCapabilityResult> {
        public zza(zzaad.zzb<CapabilityApi.AddLocalCapabilityResult> zzbVar) {
            super(zzbVar);
        }

        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(com.google.android.gms.wearable.internal.zze zzeVar) {
            zzaa(new zzn.zza(zzcr.zzik(zzeVar.statusCode)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class zzb<T> extends com.google.android.gms.wearable.internal.zza {
        private zzaad.zzb<T> zzahW;

        public zzb(zzaad.zzb<T> zzbVar) {
            this.zzahW = zzbVar;
        }

        public void zzaa(T t) {
            zzaad.zzb<T> zzbVar = this.zzahW;
            if (zzbVar != null) {
                zzbVar.setResult(t);
                this.zzahW = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzc extends zzb<Status> {
        public zzc(zzaad.zzb<Status> zzbVar) {
            super(zzbVar);
        }

        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(zzae zzaeVar) {
            zzaa(new Status(zzaeVar.statusCode));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzd extends zzb<Status> {
        public zzd(zzaad.zzb<Status> zzbVar) {
            super(zzbVar);
        }

        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zzb(zzae zzaeVar) {
            zzaa(new Status(zzaeVar.statusCode));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zze extends zzb<DataApi.DeleteDataItemsResult> {
        public zze(zzaad.zzb<DataApi.DeleteDataItemsResult> zzbVar) {
            super(zzbVar);
        }

        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(zzar zzarVar) {
            zzaa(new zzah.zzb(zzcr.zzik(zzarVar.statusCode), zzarVar.zzbUs));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzf extends zzb<CapabilityApi.GetAllCapabilitiesResult> {
        public zzf(zzaad.zzb<CapabilityApi.GetAllCapabilitiesResult> zzbVar) {
            super(zzbVar);
        }

        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(zzat zzatVar) {
            zzaa(new zzn.zzd(zzcr.zzik(zzatVar.statusCode), zzcw.zzS(zzatVar.zzbUt)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzg extends zzb<CapabilityApi.GetCapabilityResult> {
        public zzg(zzaad.zzb<CapabilityApi.GetCapabilityResult> zzbVar) {
            super(zzbVar);
        }

        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(zzav zzavVar) {
            zzaa(new zzn.zze(zzcr.zzik(zzavVar.statusCode), new zzn.zzc(zzavVar.zzbUu)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzh extends zzb<Channel.GetInputStreamResult> {
        private final zzac zzbUS;

        public zzh(zzaad.zzb<Channel.GetInputStreamResult> zzbVar, zzac zzacVar) {
            super(zzbVar);
            this.zzbUS = (zzac) com.google.android.gms.common.internal.zzac.zzw(zzacVar);
        }

        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(zzax zzaxVar) {
            zzw zzwVar = null;
            if (zzaxVar.zzbUv != null) {
                zzwVar = new zzw(new ParcelFileDescriptor.AutoCloseInputStream(zzaxVar.zzbUv));
                this.zzbUS.zza(zzwVar.zzUu());
            }
            zzaa(new zzu.zza(new Status(zzaxVar.statusCode), zzwVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzi extends zzb<Channel.GetOutputStreamResult> {
        private final zzac zzbUS;

        public zzi(zzaad.zzb<Channel.GetOutputStreamResult> zzbVar, zzac zzacVar) {
            super(zzbVar);
            this.zzbUS = (zzac) com.google.android.gms.common.internal.zzac.zzw(zzacVar);
        }

        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(zzaz zzazVar) {
            zzx zzxVar = null;
            if (zzazVar.zzbUv != null) {
                zzxVar = new zzx(new ParcelFileDescriptor.AutoCloseOutputStream(zzazVar.zzbUv));
                this.zzbUS.zza(zzxVar.zzUu());
            }
            zzaa(new zzu.zzb(new Status(zzazVar.statusCode), zzxVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzj extends zzb<NodeApi.GetConnectedNodesResult> {
        public zzj(zzaad.zzb<NodeApi.GetConnectedNodesResult> zzbVar) {
            super(zzbVar);
        }

        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(zzbl zzblVar) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(zzblVar.zzbUB);
            zzaa(new zzcb.zza(zzcr.zzik(zzblVar.statusCode), arrayList));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzk extends zzb<DataApi.DataItemResult> {
        public zzk(zzaad.zzb<DataApi.DataItemResult> zzbVar) {
            super(zzbVar);
        }

        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(zzbn zzbnVar) {
            zzaa(new zzah.zza(zzcr.zzik(zzbnVar.statusCode), zzbnVar.zzbUC));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzl extends zzb<DataItemBuffer> {
        public zzl(zzaad.zzb<DataItemBuffer> zzbVar) {
            super(zzbVar);
        }

        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zzar(DataHolder dataHolder) {
            zzaa(new DataItemBuffer(dataHolder));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzm extends zzb<DataApi.GetFdForAssetResult> {
        public zzm(zzaad.zzb<DataApi.GetFdForAssetResult> zzbVar) {
            super(zzbVar);
        }

        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(zzbp zzbpVar) {
            zzaa(new zzah.zzc(zzcr.zzik(zzbpVar.statusCode), zzbpVar.zzbyd));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzn extends zzb<NodeApi.GetLocalNodeResult> {
        public zzn(zzaad.zzb<NodeApi.GetLocalNodeResult> zzbVar) {
            super(zzbVar);
        }

        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(zzbr zzbrVar) {
            zzaa(new zzcb.zzb(zzcr.zzik(zzbrVar.statusCode), zzbrVar.zzbUD));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzo extends com.google.android.gms.wearable.internal.zza {
        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(Status status) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzp extends zzb<ChannelApi.OpenChannelResult> {
        public zzp(zzaad.zzb<ChannelApi.OpenChannelResult> zzbVar) {
            super(zzbVar);
        }

        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(zzce zzceVar) {
            zzaa(new zzq.zza(zzcr.zzik(zzceVar.statusCode), zzceVar.zzbTW));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzq extends zzb<DataApi.DataItemResult> {
        private final List<FutureTask<Boolean>> zzIz;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzq(zzaad.zzb<DataApi.DataItemResult> zzbVar, List<FutureTask<Boolean>> list) {
            super(zzbVar);
            this.zzIz = list;
        }

        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(zzci zzciVar) {
            zzaa(new zzah.zza(zzcr.zzik(zzciVar.statusCode), zzciVar.zzbUC));
            if (zzciVar.statusCode != 0) {
                for (FutureTask<Boolean> futureTask : this.zzIz) {
                    futureTask.cancel(true);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    static final class zzr extends zzb<Status> {
        public zzr(zzaad.zzb<Status> zzbVar) {
            super(zzbVar);
        }

        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(zzaa zzaaVar) {
            zzaa(new Status(zzaaVar.statusCode));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzs extends zzb<CapabilityApi.RemoveLocalCapabilityResult> {
        public zzs(zzaad.zzb<CapabilityApi.RemoveLocalCapabilityResult> zzbVar) {
            super(zzbVar);
        }

        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(zzcm zzcmVar) {
            zzaa(new zzn.zza(zzcr.zzik(zzcmVar.statusCode)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzt extends zzb<MessageApi.SendMessageResult> {
        public zzt(zzaad.zzb<MessageApi.SendMessageResult> zzbVar) {
            super(zzbVar);
        }

        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(zzco zzcoVar) {
            zzaa(new zzby.zzb(zzcr.zzik(zzcoVar.statusCode), zzcoVar.zzbhU));
        }
    }

    /* loaded from: classes2.dex */
    static final class zzu extends zzb<Status> {
        public zzu(zzaad.zzb<Status> zzbVar) {
            super(zzbVar);
        }

        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(zzy zzyVar) {
            zzaa(new Status(zzyVar.statusCode));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<String, CapabilityInfo> zzS(List<com.google.android.gms.wearable.internal.zzo> list) {
        HashMap hashMap = new HashMap(list.size() * 2);
        for (com.google.android.gms.wearable.internal.zzo zzoVar : list) {
            hashMap.put(zzoVar.getName(), new zzn.zzc(zzoVar));
        }
        return hashMap;
    }
}
