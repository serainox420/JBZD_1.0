package com.google.android.gms.awareness.fence;

import com.google.android.gms.awareness.state.BeaconState;
import com.google.android.gms.internal.zzael;
import com.google.android.gms.internal.zzaep;
import java.util.Collection;
/* loaded from: classes2.dex */
public final class BeaconFence {
    private BeaconFence() {
    }

    public static AwarenessFence found(Collection<BeaconState.TypeFilter> collection) {
        return (collection == null || collection.isEmpty()) ? found(new BeaconState.TypeFilter[0]) : found((BeaconState.TypeFilter[]) collection.toArray(new BeaconState.TypeFilter[collection.size()]));
    }

    public static AwarenessFence found(BeaconState.TypeFilter... typeFilterArr) {
        return zzaep.zza(zzael.zzb(typeFilterArr));
    }

    public static AwarenessFence lost(Collection<BeaconState.TypeFilter> collection) {
        return (collection == null || collection.isEmpty()) ? lost(new BeaconState.TypeFilter[0]) : lost((BeaconState.TypeFilter[]) collection.toArray(new BeaconState.TypeFilter[collection.size()]));
    }

    public static AwarenessFence lost(BeaconState.TypeFilter... typeFilterArr) {
        return zzaep.zza(zzael.zzc(typeFilterArr));
    }

    public static AwarenessFence near(Collection<BeaconState.TypeFilter> collection) {
        return (collection == null || collection.isEmpty()) ? near(new BeaconState.TypeFilter[0]) : near((BeaconState.TypeFilter[]) collection.toArray(new BeaconState.TypeFilter[collection.size()]));
    }

    public static AwarenessFence near(BeaconState.TypeFilter... typeFilterArr) {
        return zzaep.zza(zzael.zzd(typeFilterArr));
    }
}
