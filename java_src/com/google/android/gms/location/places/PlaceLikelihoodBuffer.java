package com.google.android.gms.location.places;

import android.os.Bundle;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.location.places.internal.zzr;
import java.util.Comparator;
/* loaded from: classes2.dex */
public class PlaceLikelihoodBuffer extends AbstractDataBuffer<PlaceLikelihood> implements Result {
    private static final Comparator<com.google.android.gms.location.places.internal.zzp> zzblA = new Comparator<com.google.android.gms.location.places.internal.zzp>() { // from class: com.google.android.gms.location.places.PlaceLikelihoodBuffer.1
        @Override // java.util.Comparator
        /* renamed from: zza */
        public int compare(com.google.android.gms.location.places.internal.zzp zzpVar, com.google.android.gms.location.places.internal.zzp zzpVar2) {
            return -Float.compare(zzpVar.getLikelihood(), zzpVar2.getLikelihood());
        }
    };
    private final int zzAW;
    private final Status zzair;
    private final String zzblu;

    /* loaded from: classes2.dex */
    public static class zza {
        static int zzkI(int i) {
            switch (i) {
                case 100:
                case 101:
                case 102:
                case 103:
                case 104:
                case 105:
                case 106:
                case 107:
                case 108:
                    return i;
                default:
                    throw new IllegalArgumentException(new StringBuilder(27).append("invalid source: ").append(i).toString());
            }
        }
    }

    public PlaceLikelihoodBuffer(DataHolder dataHolder, int i) {
        super(dataHolder);
        this.zzair = PlacesStatusCodes.zzdv(dataHolder.getStatusCode());
        this.zzAW = zza.zzkI(i);
        if (dataHolder == null || dataHolder.zzxf() == null) {
            this.zzblu = null;
        } else {
            this.zzblu = dataHolder.zzxf().getString("com.google.android.gms.location.places.PlaceLikelihoodBuffer.ATTRIBUTIONS_EXTRA_KEY");
        }
    }

    public static int zzL(Bundle bundle) {
        return bundle.getInt("com.google.android.gms.location.places.PlaceLikelihoodBuffer.SOURCE_EXTRA_KEY");
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* renamed from: get */
    public PlaceLikelihood mo547get(int i) {
        return new zzr(this.zzaBi, i);
    }

    public CharSequence getAttributions() {
        return this.zzblu;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }

    public String toString() {
        return zzaa.zzv(this).zzg("status", getStatus()).zzg("attributions", this.zzblu).toString();
    }
}
