package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.style.CharacterStyle;
import com.google.android.gms.location.places.AutocompletePrediction;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class zza extends com.google.android.gms.common.internal.safeparcel.zza implements AutocompletePrediction {
    public static final Parcelable.Creator<zza> CREATOR = new zzb();
    private static final List<C0413zza> zzbma = Collections.emptyList();
    final int zzaiI;
    final List<Integer> zzbkY;
    final String zzblE;
    final String zzbmb;
    final List<C0413zza> zzbmc;
    final int zzbmd;
    final String zzbme;
    final List<C0413zza> zzbmf;
    final String zzbmg;
    final List<C0413zza> zzbmh;

    /* renamed from: com.google.android.gms.location.places.internal.zza$zza  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0413zza extends com.google.android.gms.common.internal.safeparcel.zza {
        public static final Parcelable.Creator<C0413zza> CREATOR = new zzac();
        final int mLength;
        final int mOffset;
        final int zzaiI;

        public C0413zza(int i, int i2, int i3) {
            this.zzaiI = i;
            this.mOffset = i2;
            this.mLength = i3;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0413zza)) {
                return false;
            }
            C0413zza c0413zza = (C0413zza) obj;
            return com.google.android.gms.common.internal.zzaa.equal(Integer.valueOf(this.mOffset), Integer.valueOf(c0413zza.mOffset)) && com.google.android.gms.common.internal.zzaa.equal(Integer.valueOf(this.mLength), Integer.valueOf(c0413zza.mLength));
        }

        public int getLength() {
            return this.mLength;
        }

        public int getOffset() {
            return this.mOffset;
        }

        public int hashCode() {
            return com.google.android.gms.common.internal.zzaa.hashCode(Integer.valueOf(this.mOffset), Integer.valueOf(this.mLength));
        }

        public String toString() {
            return com.google.android.gms.common.internal.zzaa.zzv(this).zzg(VastIconXmlManager.OFFSET, Integer.valueOf(this.mOffset)).zzg("length", Integer.valueOf(this.mLength)).toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzac.zza(this, parcel, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zza(int i, String str, List<Integer> list, int i2, String str2, List<C0413zza> list2, String str3, List<C0413zza> list3, String str4, List<C0413zza> list4) {
        this.zzaiI = i;
        this.zzblE = str;
        this.zzbkY = list;
        this.zzbmd = i2;
        this.zzbmb = str2;
        this.zzbmc = list2;
        this.zzbme = str3;
        this.zzbmf = list3;
        this.zzbmg = str4;
        this.zzbmh = list4;
    }

    public static zza zza(String str, List<Integer> list, int i, String str2, List<C0413zza> list2, String str3, List<C0413zza> list3, String str4, List<C0413zza> list4) {
        return new zza(0, str, list, i, (String) com.google.android.gms.common.internal.zzac.zzw(str2), list2, str3, list3, str4, list4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zza)) {
            return false;
        }
        zza zzaVar = (zza) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzblE, zzaVar.zzblE) && com.google.android.gms.common.internal.zzaa.equal(this.zzbkY, zzaVar.zzbkY) && com.google.android.gms.common.internal.zzaa.equal(Integer.valueOf(this.zzbmd), Integer.valueOf(zzaVar.zzbmd)) && com.google.android.gms.common.internal.zzaa.equal(this.zzbmb, zzaVar.zzbmb) && com.google.android.gms.common.internal.zzaa.equal(this.zzbmc, zzaVar.zzbmc) && com.google.android.gms.common.internal.zzaa.equal(this.zzbme, zzaVar.zzbme) && com.google.android.gms.common.internal.zzaa.equal(this.zzbmf, zzaVar.zzbmf) && com.google.android.gms.common.internal.zzaa.equal(this.zzbmg, zzaVar.zzbmg) && com.google.android.gms.common.internal.zzaa.equal(this.zzbmh, zzaVar.zzbmh);
    }

    @Override // com.google.android.gms.location.places.AutocompletePrediction
    public CharSequence getFullText(CharacterStyle characterStyle) {
        return zzf.zza(this.zzbmb, this.zzbmc, characterStyle);
    }

    @Override // com.google.android.gms.location.places.AutocompletePrediction
    public String getPlaceId() {
        return this.zzblE;
    }

    @Override // com.google.android.gms.location.places.AutocompletePrediction
    public List<Integer> getPlaceTypes() {
        return this.zzbkY;
    }

    @Override // com.google.android.gms.location.places.AutocompletePrediction
    public CharSequence getPrimaryText(CharacterStyle characterStyle) {
        return zzf.zza(this.zzbme, this.zzbmf, characterStyle);
    }

    @Override // com.google.android.gms.location.places.AutocompletePrediction
    public CharSequence getSecondaryText(CharacterStyle characterStyle) {
        return zzf.zza(this.zzbmg, this.zzbmh, characterStyle);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzblE, this.zzbkY, Integer.valueOf(this.zzbmd), this.zzbmb, this.zzbmc, this.zzbme, this.zzbmf, this.zzbmg, this.zzbmh);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("placeId", this.zzblE).zzg("placeTypes", this.zzbkY).zzg("fullText", this.zzbmb).zzg("fullTextMatchedSubstrings", this.zzbmc).zzg("primaryText", this.zzbme).zzg("primaryTextMatchedSubstrings", this.zzbmf).zzg("secondaryText", this.zzbmg).zzg("secondaryTextMatchedSubstrings", this.zzbmh).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzIJ */
    public AutocompletePrediction mo520freeze() {
        return this;
    }
}
