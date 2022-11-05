package com.google.android.gms.location.places.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.location.places.ui.zza;
import com.google.android.gms.maps.model.LatLngBounds;
/* loaded from: classes.dex */
public class PlacePicker extends zza {
    public static final int RESULT_ERROR = 2;

    /* loaded from: classes2.dex */
    public static class IntentBuilder extends zza.AbstractC0418zza {
        public IntentBuilder() {
            super("com.google.android.gms.location.places.ui.PICK_PLACE");
            this.mIntent.putExtra("gmscore_client_jar_version", GoogleApiAvailability.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        }

        @Override // com.google.android.gms.location.places.ui.zza.AbstractC0418zza
        public Intent build(Activity activity) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
            return super.build(activity);
        }

        public IntentBuilder setLatLngBounds(LatLngBounds latLngBounds) {
            zzac.zzw(latLngBounds);
            zzd.zza(latLngBounds, this.mIntent, "latlng_bounds");
            return this;
        }
    }

    private PlacePicker() {
    }

    @Deprecated
    public static String getAttributions(Intent intent) {
        return intent.getStringExtra("third_party_attributions");
    }

    public static LatLngBounds getLatLngBounds(Intent intent) {
        return (LatLngBounds) zzd.zza(intent, "final_latlng_bounds", LatLngBounds.CREATOR);
    }

    public static Place getPlace(Context context, Intent intent) {
        return zza.getPlace(context, intent);
    }

    @Deprecated
    public static Place getPlace(Intent intent, Context context) {
        return zza.getPlace(context, intent);
    }
}
