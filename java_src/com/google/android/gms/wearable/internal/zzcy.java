package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.wearable.CapabilityApi;
import com.google.android.gms.wearable.ChannelApi;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataEventBuffer;
import com.google.android.gms.wearable.MessageApi;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.internal.zzbv;
import java.util.List;
/* loaded from: classes2.dex */
public class zzcy<T> extends zzbv.zza {
    private final IntentFilter[] zzbUJ;
    private zzabh<Object> zzbVf;
    private zzabh<Object> zzbVg;
    private zzabh<DataApi.DataListener> zzbVh;
    private zzabh<MessageApi.MessageListener> zzbVi;
    private zzabh<NodeApi.NodeListener> zzbVj;
    private zzabh<Object> zzbVk;
    private zzabh<ChannelApi.ChannelListener> zzbVl;
    private zzabh<CapabilityApi.CapabilityListener> zzbVm;
    private final String zzbVn;

    private zzcy(IntentFilter[] intentFilterArr, String str) {
        this.zzbUJ = (IntentFilter[]) com.google.android.gms.common.internal.zzac.zzw(intentFilterArr);
        this.zzbVn = str;
    }

    public static zzcy<ChannelApi.ChannelListener> zza(zzabh<ChannelApi.ChannelListener> zzabhVar, String str, IntentFilter[] intentFilterArr) {
        zzcy<ChannelApi.ChannelListener> zzcyVar = new zzcy<>(intentFilterArr, (String) com.google.android.gms.common.internal.zzac.zzw(str));
        ((zzcy) zzcyVar).zzbVl = (zzabh) com.google.android.gms.common.internal.zzac.zzw(zzabhVar);
        return zzcyVar;
    }

    public static zzcy<DataApi.DataListener> zza(zzabh<DataApi.DataListener> zzabhVar, IntentFilter[] intentFilterArr) {
        zzcy<DataApi.DataListener> zzcyVar = new zzcy<>(intentFilterArr, null);
        ((zzcy) zzcyVar).zzbVh = (zzabh) com.google.android.gms.common.internal.zzac.zzw(zzabhVar);
        return zzcyVar;
    }

    private static zzabh.zzc<DataApi.DataListener> zzas(final DataHolder dataHolder) {
        return new zzabh.zzc<DataApi.DataListener>() { // from class: com.google.android.gms.wearable.internal.zzcy.1
            @Override // com.google.android.gms.internal.zzabh.zzc
            /* renamed from: zza */
            public void zzs(DataApi.DataListener dataListener) {
                try {
                    dataListener.onDataChanged(new DataEventBuffer(DataHolder.this));
                } finally {
                    DataHolder.this.close();
                }
            }

            @Override // com.google.android.gms.internal.zzabh.zzc
            public void zzwc() {
                DataHolder.this.close();
            }
        };
    }

    private static zzabh.zzc<MessageApi.MessageListener> zzb(final zzbz zzbzVar) {
        return new zzabh.zzc<MessageApi.MessageListener>() { // from class: com.google.android.gms.wearable.internal.zzcy.2
            @Override // com.google.android.gms.internal.zzabh.zzc
            /* renamed from: zza */
            public void zzs(MessageApi.MessageListener messageListener) {
                messageListener.onMessageReceived(zzbz.this);
            }

            @Override // com.google.android.gms.internal.zzabh.zzc
            public void zzwc() {
            }
        };
    }

    private static zzabh.zzc<CapabilityApi.CapabilityListener> zzb(final zzo zzoVar) {
        return new zzabh.zzc<CapabilityApi.CapabilityListener>() { // from class: com.google.android.gms.wearable.internal.zzcy.6
            @Override // com.google.android.gms.internal.zzabh.zzc
            /* renamed from: zza */
            public void zzs(CapabilityApi.CapabilityListener capabilityListener) {
                capabilityListener.onCapabilityChanged(zzo.this);
            }

            @Override // com.google.android.gms.internal.zzabh.zzc
            public void zzwc() {
            }
        };
    }

    private static zzabh.zzc<ChannelApi.ChannelListener> zzb(final zzs zzsVar) {
        return new zzabh.zzc<ChannelApi.ChannelListener>() { // from class: com.google.android.gms.wearable.internal.zzcy.5
            @Override // com.google.android.gms.internal.zzabh.zzc
            /* renamed from: zzb */
            public void zzs(ChannelApi.ChannelListener channelListener) {
                zzs.this.zza(channelListener);
            }

            @Override // com.google.android.gms.internal.zzabh.zzc
            public void zzwc() {
            }
        };
    }

    public static zzcy<MessageApi.MessageListener> zzb(zzabh<MessageApi.MessageListener> zzabhVar, IntentFilter[] intentFilterArr) {
        zzcy<MessageApi.MessageListener> zzcyVar = new zzcy<>(intentFilterArr, null);
        ((zzcy) zzcyVar).zzbVi = (zzabh) com.google.android.gms.common.internal.zzac.zzw(zzabhVar);
        return zzcyVar;
    }

    private static zzabh.zzc<NodeApi.NodeListener> zzc(final zzcc zzccVar) {
        return new zzabh.zzc<NodeApi.NodeListener>() { // from class: com.google.android.gms.wearable.internal.zzcy.3
            @Override // com.google.android.gms.internal.zzabh.zzc
            /* renamed from: zza */
            public void zzs(NodeApi.NodeListener nodeListener) {
                nodeListener.onPeerConnected(zzcc.this);
            }

            @Override // com.google.android.gms.internal.zzabh.zzc
            public void zzwc() {
            }
        };
    }

    public static zzcy<NodeApi.NodeListener> zzc(zzabh<NodeApi.NodeListener> zzabhVar, IntentFilter[] intentFilterArr) {
        zzcy<NodeApi.NodeListener> zzcyVar = new zzcy<>(intentFilterArr, null);
        ((zzcy) zzcyVar).zzbVj = (zzabh) com.google.android.gms.common.internal.zzac.zzw(zzabhVar);
        return zzcyVar;
    }

    private static zzabh.zzc<NodeApi.NodeListener> zzd(final zzcc zzccVar) {
        return new zzabh.zzc<NodeApi.NodeListener>() { // from class: com.google.android.gms.wearable.internal.zzcy.4
            @Override // com.google.android.gms.internal.zzabh.zzc
            /* renamed from: zza */
            public void zzs(NodeApi.NodeListener nodeListener) {
                nodeListener.onPeerDisconnected(zzcc.this);
            }

            @Override // com.google.android.gms.internal.zzabh.zzc
            public void zzwc() {
            }
        };
    }

    public static zzcy<ChannelApi.ChannelListener> zzd(zzabh<ChannelApi.ChannelListener> zzabhVar, IntentFilter[] intentFilterArr) {
        zzcy<ChannelApi.ChannelListener> zzcyVar = new zzcy<>(intentFilterArr, null);
        ((zzcy) zzcyVar).zzbVl = (zzabh) com.google.android.gms.common.internal.zzac.zzw(zzabhVar);
        return zzcyVar;
    }

    public static zzcy<CapabilityApi.CapabilityListener> zze(zzabh<CapabilityApi.CapabilityListener> zzabhVar, IntentFilter[] intentFilterArr) {
        zzcy<CapabilityApi.CapabilityListener> zzcyVar = new zzcy<>(intentFilterArr, null);
        ((zzcy) zzcyVar).zzbVm = (zzabh) com.google.android.gms.common.internal.zzac.zzw(zzabhVar);
        return zzcyVar;
    }

    private static void zzl(zzabh<?> zzabhVar) {
        if (zzabhVar != null) {
            zzabhVar.clear();
        }
    }

    public void clear() {
        zzl(null);
        this.zzbVf = null;
        zzl(null);
        this.zzbVg = null;
        zzl(this.zzbVh);
        this.zzbVh = null;
        zzl(this.zzbVi);
        this.zzbVi = null;
        zzl(this.zzbVj);
        this.zzbVj = null;
        zzl(null);
        this.zzbVk = null;
        zzl(this.zzbVl);
        this.zzbVl = null;
        zzl(this.zzbVm);
        this.zzbVm = null;
    }

    @Override // com.google.android.gms.wearable.internal.zzbv
    public void onConnectedNodes(List<zzcc> list) {
    }

    public String zzUA() {
        return this.zzbVn;
    }

    public IntentFilter[] zzUz() {
        return this.zzbUJ;
    }

    @Override // com.google.android.gms.wearable.internal.zzbv
    public void zza(zzbz zzbzVar) {
        if (this.zzbVi != null) {
            this.zzbVi.zza(zzb(zzbzVar));
        }
    }

    @Override // com.google.android.gms.wearable.internal.zzbv
    public void zza(zzcc zzccVar) {
        if (this.zzbVj != null) {
            this.zzbVj.zza(zzc(zzccVar));
        }
    }

    @Override // com.google.android.gms.wearable.internal.zzbv
    public void zza(zzh zzhVar) {
    }

    @Override // com.google.android.gms.wearable.internal.zzbv
    public void zza(zzk zzkVar) {
    }

    @Override // com.google.android.gms.wearable.internal.zzbv
    public void zza(zzo zzoVar) {
        if (this.zzbVm != null) {
            this.zzbVm.zza(zzb(zzoVar));
        }
    }

    @Override // com.google.android.gms.wearable.internal.zzbv
    public void zza(zzs zzsVar) {
        if (this.zzbVl != null) {
            this.zzbVl.zza(zzb(zzsVar));
        }
    }

    @Override // com.google.android.gms.wearable.internal.zzbv
    public void zzaq(DataHolder dataHolder) {
        if (this.zzbVh != null) {
            this.zzbVh.zza(zzas(dataHolder));
        } else {
            dataHolder.close();
        }
    }

    @Override // com.google.android.gms.wearable.internal.zzbv
    public void zzb(zzcc zzccVar) {
        if (this.zzbVj != null) {
            this.zzbVj.zza(zzd(zzccVar));
        }
    }
}
