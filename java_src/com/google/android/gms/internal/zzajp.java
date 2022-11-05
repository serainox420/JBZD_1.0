package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.CompletionEvent;
import com.google.android.gms.drive.events.DriveEvent;
/* loaded from: classes2.dex */
public class zzajp extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzajp> CREATOR = new zzajq();
    final int zzaHE;
    final ChangeEvent zzaOi;
    final CompletionEvent zzaOj;
    final com.google.android.gms.drive.events.zzk zzaOk;
    final com.google.android.gms.drive.events.zzb zzaOl;
    final com.google.android.gms.drive.events.zzr zzaOm;
    final com.google.android.gms.drive.events.zzn zzaOn;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajp(int i, int i2, ChangeEvent changeEvent, CompletionEvent completionEvent, com.google.android.gms.drive.events.zzk zzkVar, com.google.android.gms.drive.events.zzb zzbVar, com.google.android.gms.drive.events.zzr zzrVar, com.google.android.gms.drive.events.zzn zznVar) {
        this.zzaiI = i;
        this.zzaHE = i2;
        this.zzaOi = changeEvent;
        this.zzaOj = completionEvent;
        this.zzaOk = zzkVar;
        this.zzaOl = zzbVar;
        this.zzaOm = zzrVar;
        this.zzaOn = zznVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzajq.zza(this, parcel, i);
    }

    public DriveEvent zzBi() {
        switch (this.zzaHE) {
            case 1:
                return this.zzaOi;
            case 2:
                return this.zzaOj;
            case 3:
                return this.zzaOk;
            case 4:
                return this.zzaOl;
            case 5:
            case 6:
            default:
                throw new IllegalStateException(new StringBuilder(33).append("Unexpected event type ").append(this.zzaHE).toString());
            case 7:
                return this.zzaOm;
            case 8:
                return this.zzaOn;
        }
    }
}
