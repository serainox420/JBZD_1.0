package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes2.dex */
public class zzwx {
    public GoogleApiClient zza(Context context, CastDevice castDevice, CastOptions castOptions, Cast.Listener listener, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("com.google.android.gms.cast.EXTRA_CAST_FRAMEWORK_NOTIFICATION_ENABLED", (castOptions == null || castOptions.getCastMediaOptions() == null || castOptions.getCastMediaOptions().getNotificationOptions() == null) ? false : true);
        return new GoogleApiClient.Builder(context).addApi(Cast.API, new Cast.CastOptions.Builder(castDevice, listener).zzk(bundle).build()).addConnectionCallbacks(connectionCallbacks).addOnConnectionFailedListener(onConnectionFailedListener).build();
    }
}
