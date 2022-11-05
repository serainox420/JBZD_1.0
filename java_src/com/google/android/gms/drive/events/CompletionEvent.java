package com.google.android.gms.drive.events;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.internal.zzaic;
import com.google.android.gms.internal.zzaja;
import com.google.android.gms.internal.zzalu;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class CompletionEvent extends com.google.android.gms.common.internal.safeparcel.zza implements ResourceEvent {
    public static final Parcelable.Creator<CompletionEvent> CREATOR = new zzg();
    public static final int STATUS_CANCELED = 3;
    public static final int STATUS_CONFLICT = 2;
    public static final int STATUS_FAILURE = 1;
    public static final int STATUS_SUCCESS = 0;
    final int zzJO;
    final DriveId zzaKG;
    final ParcelFileDescriptor zzaLJ;
    final ParcelFileDescriptor zzaLK;
    final MetadataBundle zzaLL;
    final List<String> zzaLM;
    final IBinder zzaLN;
    private boolean zzaLO = false;
    private boolean zzaLP = false;
    private boolean zzaLQ = false;
    final int zzaiI;
    final String zzaiu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompletionEvent(int i, DriveId driveId, String str, ParcelFileDescriptor parcelFileDescriptor, ParcelFileDescriptor parcelFileDescriptor2, MetadataBundle metadataBundle, List<String> list, int i2, IBinder iBinder) {
        this.zzaiI = i;
        this.zzaKG = driveId;
        this.zzaiu = str;
        this.zzaLJ = parcelFileDescriptor;
        this.zzaLK = parcelFileDescriptor2;
        this.zzaLL = metadataBundle;
        this.zzaLM = list;
        this.zzJO = i2;
        this.zzaLN = iBinder;
    }

    private void zzAN() {
        if (this.zzaLQ) {
            throw new IllegalStateException("Event has already been dismissed or snoozed.");
        }
    }

    private void zzy(boolean z) {
        zzAN();
        this.zzaLQ = true;
        com.google.android.gms.common.util.zzp.zza(this.zzaLJ);
        com.google.android.gms.common.util.zzp.zza(this.zzaLK);
        if (this.zzaLL != null && this.zzaLL.zzc(zzalu.zzaPC)) {
            ((BitmapTeleporter) this.zzaLL.zza(zzalu.zzaPC)).release();
        }
        if (this.zzaLN == null) {
            String valueOf = String.valueOf(z ? "snooze" : "dismiss");
            zzaic.zzG("CompletionEvent", valueOf.length() != 0 ? "No callback on ".concat(valueOf) : new String("No callback on "));
            return;
        }
        try {
            zzaja.zza.zzbO(this.zzaLN).zzy(z);
        } catch (RemoteException e) {
            String str = z ? "snooze" : "dismiss";
            String valueOf2 = String.valueOf(e);
            zzaic.zzG("CompletionEvent", new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(valueOf2).length()).append("RemoteException on ").append(str).append(": ").append(valueOf2).toString());
        }
    }

    public void dismiss() {
        zzy(false);
    }

    public String getAccountName() {
        zzAN();
        return this.zzaiu;
    }

    public InputStream getBaseContentsInputStream() {
        zzAN();
        if (this.zzaLJ == null) {
            return null;
        }
        if (this.zzaLO) {
            throw new IllegalStateException("getBaseInputStream() can only be called once per CompletionEvent instance.");
        }
        this.zzaLO = true;
        return new FileInputStream(this.zzaLJ.getFileDescriptor());
    }

    @Override // com.google.android.gms.drive.events.ResourceEvent
    public DriveId getDriveId() {
        zzAN();
        return this.zzaKG;
    }

    public InputStream getModifiedContentsInputStream() {
        zzAN();
        if (this.zzaLK == null) {
            return null;
        }
        if (this.zzaLP) {
            throw new IllegalStateException("getModifiedInputStream() can only be called once per CompletionEvent instance.");
        }
        this.zzaLP = true;
        return new FileInputStream(this.zzaLK.getFileDescriptor());
    }

    public MetadataChangeSet getModifiedMetadataChangeSet() {
        zzAN();
        if (this.zzaLL != null) {
            return new MetadataChangeSet(this.zzaLL);
        }
        return null;
    }

    public int getStatus() {
        zzAN();
        return this.zzJO;
    }

    public List<String> getTrackingTags() {
        zzAN();
        return new ArrayList(this.zzaLM);
    }

    @Override // com.google.android.gms.drive.events.DriveEvent
    public int getType() {
        return 2;
    }

    public void snooze() {
        zzy(true);
    }

    public String toString() {
        String sb;
        if (this.zzaLM == null) {
            sb = "<null>";
        } else {
            String valueOf = String.valueOf(TextUtils.join("','", this.zzaLM));
            sb = new StringBuilder(String.valueOf(valueOf).length() + 2).append("'").append(valueOf).append("'").toString();
        }
        return String.format(Locale.US, "CompletionEvent [id=%s, status=%s, trackingTag=%s]", this.zzaKG, Integer.valueOf(this.zzJO), sb);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i | 1);
    }
}
