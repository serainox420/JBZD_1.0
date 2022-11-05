package com.google.android.gms.internal;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.Scopes;
import com.google.firebase.auth.i;
/* loaded from: classes.dex */
public class zzbnd implements i {
    @zzbvf("photoUrl")
    private String zzaQN;
    @zzbvf("userId")
    private String zzadi;
    @zzbvf(Scopes.EMAIL)
    private String zzaka;
    @zzbvf("displayName")
    private String zzakb;
    @zzbmb
    private Uri zzbXU;
    @zzbvf("isEmailVerified")
    private boolean zzbYA;
    @zzbvf("rawUserInfo")
    private String zzbYH;
    @zzbvf("providerId")
    private String zzbYx;

    public zzbnd(zzbmj zzbmjVar, String str) {
        com.google.android.gms.common.internal.zzac.zzw(zzbmjVar);
        com.google.android.gms.common.internal.zzac.zzdr(str);
        this.zzadi = com.google.android.gms.common.internal.zzac.zzdr(zzbmjVar.getLocalId());
        this.zzbYx = str;
        this.zzaka = zzbmjVar.getEmail();
        this.zzakb = zzbmjVar.getDisplayName();
        Uri photoUri = zzbmjVar.getPhotoUri();
        if (photoUri != null) {
            this.zzaQN = photoUri.toString();
            this.zzbXU = photoUri;
        }
        this.zzbYA = zzbmjVar.isEmailVerified();
        this.zzbYH = null;
    }

    public zzbnd(zzbmp zzbmpVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzbmpVar);
        this.zzadi = com.google.android.gms.common.internal.zzac.zzdr(zzbmpVar.zzWg());
        this.zzbYx = com.google.android.gms.common.internal.zzac.zzdr(zzbmpVar.getProviderId());
        this.zzakb = zzbmpVar.getDisplayName();
        Uri photoUri = zzbmpVar.getPhotoUri();
        if (photoUri != null) {
            this.zzaQN = photoUri.toString();
            this.zzbXU = photoUri;
        }
        this.zzaka = null;
        this.zzbYA = false;
        this.zzbYH = zzbmpVar.getRawUserInfo();
    }

    public String getDisplayName() {
        return this.zzakb;
    }

    public String getEmail() {
        return this.zzaka;
    }

    public Uri getPhotoUrl() {
        if (!TextUtils.isEmpty(this.zzaQN) && this.zzbXU == null) {
            this.zzbXU = Uri.parse(this.zzaQN);
        }
        return this.zzbXU;
    }

    @Override // com.google.firebase.auth.i
    public String getProviderId() {
        return this.zzbYx;
    }

    public String getUid() {
        return this.zzadi;
    }

    public boolean isEmailVerified() {
        return this.zzbYA;
    }
}
