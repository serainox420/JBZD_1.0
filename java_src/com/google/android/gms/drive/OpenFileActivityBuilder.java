package com.google.android.gms.drive;

import android.content.IntentSender;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.drive.query.Filter;
import com.google.android.gms.drive.query.internal.FilterHolder;
import com.google.android.gms.internal.zzahx;
import com.google.android.gms.internal.zzakm;
/* loaded from: classes2.dex */
public class OpenFileActivityBuilder {
    public static final String EXTRA_RESPONSE_DRIVE_ID = "response_drive_id";
    private String[] zzaLn;
    private Filter zzaLo;
    private DriveId zzaLp;
    private String zzamJ;

    public IntentSender build(GoogleApiClient googleApiClient) {
        zzac.zza(googleApiClient.isConnected(), "Client must be connected");
        if (this.zzaLn == null) {
            this.zzaLn = new String[0];
        }
        if (this.zzaLn.length <= 0 || this.zzaLo == null) {
            try {
                return ((zzahx) googleApiClient.zza(Drive.zzaid)).zzAX().zza(new zzakm(this.zzamJ, this.zzaLn, this.zzaLp, this.zzaLo == null ? null : new FilterHolder(this.zzaLo)));
            } catch (RemoteException e) {
                throw new RuntimeException("Unable to connect Drive Play Service", e);
            }
        }
        throw new IllegalStateException("Cannot use a selection filter and set mimetypes simultaneously");
    }

    public OpenFileActivityBuilder setActivityStartFolder(DriveId driveId) {
        this.zzaLp = (DriveId) zzac.zzw(driveId);
        return this;
    }

    public OpenFileActivityBuilder setActivityTitle(String str) {
        this.zzamJ = (String) zzac.zzw(str);
        return this;
    }

    public OpenFileActivityBuilder setMimeType(String[] strArr) {
        zzac.zzb(strArr != null, "mimeTypes may not be null");
        this.zzaLn = strArr;
        return this;
    }

    public OpenFileActivityBuilder setSelectionFilter(Filter filter) {
        boolean z = true;
        zzac.zzb(filter != null, "filter may not be null");
        if (com.google.android.gms.drive.query.internal.zzk.zza(filter)) {
            z = false;
        }
        zzac.zzb(z, "FullTextSearchFilter cannot be used as a selection filter");
        this.zzaLo = filter;
        return this;
    }
}
