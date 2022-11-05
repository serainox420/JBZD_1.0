package com.google.android.gms.games.snapshot;

import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public final class SnapshotMetadataBuffer extends AbstractDataBuffer<SnapshotMetadata> {
    public SnapshotMetadataBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* renamed from: get */
    public SnapshotMetadata mo547get(int i) {
        return new SnapshotMetadataRef(this.zzaBi, i);
    }
}
