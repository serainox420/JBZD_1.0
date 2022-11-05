package com.google.android.gms.drive;

import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.internal.zzahq;
import com.google.android.gms.internal.zzalu;
/* loaded from: classes.dex */
public final class MetadataBuffer extends AbstractDataBuffer<Metadata> {
    private zza zzaLi;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza extends Metadata {
        private final DataHolder zzaBi;
        private final int zzaDM;
        private final int zzaLj;

        public zza(DataHolder dataHolder, int i) {
            this.zzaBi = dataHolder;
            this.zzaLj = i;
            this.zzaDM = dataHolder.zzcI(i);
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return !this.zzaBi.isClosed();
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* renamed from: zzAD */
        public Metadata mo520freeze() {
            MetadataBundle zzBx = MetadataBundle.zzBx();
            for (MetadataField<?> metadataField : com.google.android.gms.drive.metadata.internal.zzf.zzBv()) {
                if (metadataField != zzalu.zzaPC) {
                    metadataField.zza(this.zzaBi, zzBx, this.zzaLj, this.zzaDM);
                }
            }
            return new zzahq(zzBx);
        }

        @Override // com.google.android.gms.drive.Metadata
        public <T> T zza(MetadataField<T> metadataField) {
            return metadataField.zza(this.zzaBi, this.zzaLj, this.zzaDM);
        }
    }

    public MetadataBuffer(DataHolder dataHolder) {
        super(dataHolder);
        dataHolder.zzxf().setClassLoader(MetadataBuffer.class.getClassLoader());
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* renamed from: get */
    public Metadata mo547get(int i) {
        zza zzaVar = this.zzaLi;
        if (zzaVar == null || zzaVar.zzaLj != i) {
            zza zzaVar2 = new zza(this.zzaBi, i);
            this.zzaLi = zzaVar2;
            return zzaVar2;
        }
        return zzaVar;
    }

    @Deprecated
    public String getNextPageToken() {
        return null;
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer, com.google.android.gms.common.api.Releasable
    public void release() {
        if (this.zzaBi != null) {
            com.google.android.gms.drive.metadata.internal.zzf.zza(this.zzaBi);
        }
        super.release();
    }
}
