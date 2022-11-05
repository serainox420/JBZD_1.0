package com.google.android.gms.location.places.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.TypedValue;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.location.places.internal.PlaceEntity;
/* loaded from: classes2.dex */
abstract class zza {
    public static final int RESULT_ERROR = 2;

    /* renamed from: com.google.android.gms.location.places.ui.zza$zza  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    protected static abstract class AbstractC0418zza {
        protected final Intent mIntent;

        public AbstractC0418zza(String str) {
            this.mIntent = new Intent(str);
            this.mIntent.setPackage("com.google.android.gms");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Intent build(Activity activity) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
            Resources.Theme theme = activity.getTheme();
            TypedValue typedValue = new TypedValue();
            TypedValue typedValue2 = new TypedValue();
            if (theme.resolveAttribute(16843827, typedValue, true) && !this.mIntent.hasExtra("primary_color")) {
                this.mIntent.putExtra("primary_color", typedValue.data);
            }
            if (theme.resolveAttribute(16843828, typedValue2, true) && !this.mIntent.hasExtra("primary_color_dark")) {
                this.mIntent.putExtra("primary_color_dark", typedValue2.data);
            }
            GoogleApiAvailability.getInstance().zzaE(activity);
            return this.mIntent;
        }
    }

    public static Place getPlace(Context context, Intent intent) {
        zzac.zzb(intent, "intent must not be null");
        zzac.zzb(context, "context must not be null");
        return (Place) zzd.zza(intent, "selected_place", PlaceEntity.CREATOR);
    }

    public static Status getStatus(Context context, Intent intent) {
        zzac.zzb(intent, "intent must not be null");
        zzac.zzb(context, "context must not be null");
        return (Status) zzd.zza(intent, "status", Status.CREATOR);
    }
}
