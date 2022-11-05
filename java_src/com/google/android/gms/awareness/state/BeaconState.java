package com.google.android.gms.awareness.state;

import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.internal.zzvx;
import java.util.List;
/* loaded from: classes2.dex */
public interface BeaconState {

    /* loaded from: classes2.dex */
    public interface BeaconInfo {
        byte[] getContent();

        String getNamespace();

        String getType();
    }

    /* loaded from: classes2.dex */
    public static abstract class TypeFilter extends zza {
        public static TypeFilter with(String str, String str2) {
            return new zzvx.zzb(str, str2);
        }

        public static TypeFilter with(String str, String str2, byte[] bArr) {
            return new zzvx.zzb(str, str2, bArr);
        }
    }

    List<BeaconInfo> getBeaconInfo();
}
