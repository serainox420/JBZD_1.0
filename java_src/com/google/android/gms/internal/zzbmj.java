package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.Scopes;
import java.util.List;
/* loaded from: classes.dex */
public class zzbmj extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbmj> CREATOR = new zzbmk();
    @zzbvf("localId")
    private String zzaNX;
    @zzbvf("photoUrl")
    private String zzaQN;
    @zzbmb
    public final int zzaiI;
    @zzbvf("passwordHash")
    private String zzajh;
    @zzbvf(Scopes.EMAIL)
    private String zzaka;
    @zzbvf("displayName")
    private String zzakb;
    @zzbvf("emailVerified")
    private boolean zzbYA;
    @zzbvf("providerUserInfo")
    private zzbmr zzbYB;

    public zzbmj() {
        this.zzaiI = 1;
        this.zzbYB = new zzbmr();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbmj(int i, String str, String str2, boolean z, String str3, String str4, zzbmr zzbmrVar, String str5) {
        this.zzaiI = i;
        this.zzaNX = str;
        this.zzaka = str2;
        this.zzbYA = z;
        this.zzakb = str3;
        this.zzaQN = str4;
        this.zzbYB = zzbmrVar == null ? zzbmr.zzWh() : zzbmr.zza(zzbmrVar);
        this.zzajh = str5;
    }

    public String getDisplayName() {
        return this.zzakb;
    }

    public String getEmail() {
        return this.zzaka;
    }

    public String getLocalId() {
        return this.zzaNX;
    }

    public String getPassword() {
        return this.zzajh;
    }

    public Uri getPhotoUri() {
        if (!TextUtils.isEmpty(this.zzaQN)) {
            return Uri.parse(this.zzaQN);
        }
        return null;
    }

    public boolean isEmailVerified() {
        return this.zzbYA;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbmk.zza(this, parcel, i);
    }

    public String zzVL() {
        return this.zzaQN;
    }

    public List<zzbmp> zzVZ() {
        return this.zzbYB.zzVZ();
    }

    public zzbmr zzWa() {
        return this.zzbYB;
    }
}
