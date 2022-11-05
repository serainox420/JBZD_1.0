package com.google.android.gms.location.places.internal;

import android.text.style.CharacterStyle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.location.places.AutocompletePrediction;
import com.google.android.gms.location.places.internal.zza;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class zzc extends zzab implements AutocompletePrediction {
    public zzc(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    private String zzIL() {
        return zzO("ap_description", "");
    }

    private String zzIM() {
        return zzO("ap_primary_text", "");
    }

    private String zzIN() {
        return zzO("ap_secondary_text", "");
    }

    private List<zza.C0413zza> zzIO() {
        return zza("ap_matched_subscriptions", zza.C0413zza.CREATOR, Collections.emptyList());
    }

    private List<zza.C0413zza> zzIP() {
        return zza("ap_primary_text_matched", zza.C0413zza.CREATOR, Collections.emptyList());
    }

    private List<zza.C0413zza> zzIQ() {
        return zza("ap_secondary_text_matched", zza.C0413zza.CREATOR, Collections.emptyList());
    }

    @Override // com.google.android.gms.location.places.AutocompletePrediction
    public CharSequence getFullText(CharacterStyle characterStyle) {
        return zzf.zza(zzIL(), zzIO(), characterStyle);
    }

    @Override // com.google.android.gms.location.places.AutocompletePrediction
    public String getPlaceId() {
        return zzO("ap_place_id", null);
    }

    @Override // com.google.android.gms.location.places.AutocompletePrediction
    public List<Integer> getPlaceTypes() {
        return zzb("ap_place_types", Collections.emptyList());
    }

    @Override // com.google.android.gms.location.places.AutocompletePrediction
    public CharSequence getPrimaryText(CharacterStyle characterStyle) {
        return zzf.zza(zzIM(), zzIP(), characterStyle);
    }

    @Override // com.google.android.gms.location.places.AutocompletePrediction
    public CharSequence getSecondaryText(CharacterStyle characterStyle) {
        return zzf.zza(zzIN(), zzIQ(), characterStyle);
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzIJ */
    public AutocompletePrediction mo520freeze() {
        return zza.zza(getPlaceId(), getPlaceTypes(), zzIK(), zzIL(), zzIO(), zzIM(), zzIP(), zzIN(), zzIQ());
    }

    public int zzIK() {
        return zzy("ap_personalization_type", 6);
    }
}
