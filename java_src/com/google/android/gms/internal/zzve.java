package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.auth.api.credentials.PasswordSpecification;
import com.google.android.gms.drive.DriveFile;
/* loaded from: classes2.dex */
public class zzve {
    public static PendingIntent zza(Context context, Auth.AuthCredentialsOptions authCredentialsOptions, HintRequest hintRequest) {
        com.google.android.gms.common.internal.zzac.zzb(context, "context must not be null");
        com.google.android.gms.common.internal.zzac.zzb(hintRequest, "request must not be null");
        return PendingIntent.getActivity(context, 2000, zzva.zza(context, hintRequest, zza(authCredentialsOptions)), DriveFile.MODE_READ_ONLY);
    }

    public static PasswordSpecification zza(Auth.AuthCredentialsOptions authCredentialsOptions) {
        return (authCredentialsOptions == null || authCredentialsOptions.zzqT() == null) ? PasswordSpecification.zzajC : authCredentialsOptions.zzqT();
    }
}
