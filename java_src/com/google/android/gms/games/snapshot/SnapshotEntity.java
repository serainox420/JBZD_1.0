package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class SnapshotEntity extends GamesAbstractSafeParcelable implements Snapshot {
    public static final Parcelable.Creator<SnapshotEntity> CREATOR = new SnapshotEntityCreator();
    private final SnapshotMetadataEntity zzbfj;
    private final SnapshotContentsEntity zzbfk;

    public SnapshotEntity(SnapshotMetadata snapshotMetadata, SnapshotContentsEntity snapshotContentsEntity) {
        this.zzbfj = new SnapshotMetadataEntity(snapshotMetadata);
        this.zzbfk = snapshotContentsEntity;
    }

    private boolean isClosed() {
        return this.zzbfk.isClosed();
    }

    static boolean zza(Snapshot snapshot, Object obj) {
        if (!(obj instanceof Snapshot)) {
            return false;
        }
        if (snapshot == obj) {
            return true;
        }
        Snapshot snapshot2 = (Snapshot) obj;
        return zzaa.equal(snapshot2.getMetadata(), snapshot.getMetadata()) && zzaa.equal(snapshot2.getSnapshotContents(), snapshot.getSnapshotContents());
    }

    static int zzb(Snapshot snapshot) {
        return zzaa.hashCode(snapshot.getMetadata(), snapshot.getSnapshotContents());
    }

    static String zzc(Snapshot snapshot) {
        return zzaa.zzv(snapshot).zzg("Metadata", snapshot.getMetadata()).zzg("HasContents", Boolean.valueOf(snapshot.getSnapshotContents() != null)).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public Snapshot mo520freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.snapshot.Snapshot
    public SnapshotMetadata getMetadata() {
        return this.zzbfj;
    }

    @Override // com.google.android.gms.games.snapshot.Snapshot
    public SnapshotContents getSnapshotContents() {
        if (isClosed()) {
            return null;
        }
        return this.zzbfk;
    }

    public int hashCode() {
        return zzb(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzc(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        SnapshotEntityCreator.zza(this, parcel, i);
    }
}
