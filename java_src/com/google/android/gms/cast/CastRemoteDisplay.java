package com.google.android.gms.cast;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.view.Display;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzyu;
import com.google.android.gms.internal.zzyy;
import com.google.android.gms.internal.zzzf;
import com.google.android.gms.internal.zzzg;
/* loaded from: classes.dex */
public final class CastRemoteDisplay {
    public static final int CONFIGURATION_INTERACTIVE_NONREALTIME = 2;
    public static final int CONFIGURATION_INTERACTIVE_REALTIME = 1;
    public static final int CONFIGURATION_NONINTERACTIVE = 3;
    private static final Api.zza<zzzg, CastRemoteDisplayOptions> zzaie = new Api.zza<zzzg, CastRemoteDisplayOptions>() { // from class: com.google.android.gms.cast.CastRemoteDisplay.1
        @Override // com.google.android.gms.common.api.Api.zza
        public zzzg zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, CastRemoteDisplayOptions castRemoteDisplayOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            Bundle bundle = new Bundle();
            bundle.putInt("configuration", castRemoteDisplayOptions.zzanx);
            return new zzzg(context, looper, zzgVar, castRemoteDisplayOptions.zzanf, bundle, castRemoteDisplayOptions.zzanw, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<CastRemoteDisplayOptions> API = new Api<>("CastRemoteDisplay.API", zzaie, zzyy.zzawz);
    public static final CastRemoteDisplayApi CastRemoteDisplayApi = new zzzf(API);

    /* loaded from: classes.dex */
    public static final class CastRemoteDisplayOptions implements Api.ApiOptions.HasOptions {
        final CastDevice zzanf;
        final CastRemoteDisplaySessionCallbacks zzanw;
        final int zzanx;

        /* loaded from: classes2.dex */
        public static final class Builder {
            CastDevice zzani;
            CastRemoteDisplaySessionCallbacks zzany;
            int zzanz;

            public Builder(CastDevice castDevice, CastRemoteDisplaySessionCallbacks castRemoteDisplaySessionCallbacks) {
                zzac.zzb(castDevice, "CastDevice parameter cannot be null");
                this.zzani = castDevice;
                this.zzany = castRemoteDisplaySessionCallbacks;
                this.zzanz = 2;
            }

            public CastRemoteDisplayOptions build() {
                return new CastRemoteDisplayOptions(this);
            }

            public Builder setConfigPreset(@Configuration int i) {
                this.zzanz = i;
                return this;
            }
        }

        private CastRemoteDisplayOptions(Builder builder) {
            this.zzanf = builder.zzani;
            this.zzanw = builder.zzany;
            this.zzanx = builder.zzanz;
        }
    }

    /* loaded from: classes.dex */
    public interface CastRemoteDisplaySessionCallbacks {
        void onRemoteDisplayEnded(Status status);
    }

    /* loaded from: classes.dex */
    public interface CastRemoteDisplaySessionResult extends Result {
        Display getPresentationDisplay();
    }

    /* loaded from: classes.dex */
    public @interface Configuration {
    }

    private CastRemoteDisplay() {
    }

    public static final boolean isRemoteDisplaySdkSupported(Context context) {
        zzyu.initialize(context);
        return zzyu.zzawx.get().booleanValue();
    }
}
