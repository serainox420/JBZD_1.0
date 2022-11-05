package com.google.android.gms.internal;

import com.facebook.common.time.Clock;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public interface zzbqh {
    public static final zzbqh zzcha = new zzbqh() { // from class: com.google.android.gms.internal.zzbqh.1
        @Override // com.google.android.gms.internal.zzbqh
        public float zzZF() {
            return BitmapDescriptorFactory.HUE_RED;
        }

        @Override // com.google.android.gms.internal.zzbqh
        public long zzZG() {
            return Clock.MAX_TIME;
        }

        @Override // com.google.android.gms.internal.zzbqh
        public boolean zzaQ(long j) {
            return false;
        }

        @Override // com.google.android.gms.internal.zzbqh
        public boolean zzk(long j, long j2) {
            return false;
        }
    };

    float zzZF();

    long zzZG();

    boolean zzaQ(long j);

    boolean zzk(long j, long j2);
}
