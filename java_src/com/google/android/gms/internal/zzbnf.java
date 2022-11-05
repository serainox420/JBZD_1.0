package com.google.android.gms.internal;

import android.net.Uri;
import com.google.firebase.a;
import com.google.firebase.auth.d;
import com.google.firebase.auth.i;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbnf extends d {
    private zzbmn zzbYS;
    private zzbnd zzbYT;
    private String zzbYU;
    private String zzbYV;
    private List<zzbnd> zzbYW;
    private List<String> zzbYX;
    private Map<String, zzbnd> zzbYY;
    private String zzbYZ;
    private zzbuk zzbYe;
    private boolean zzbZa;

    public zzbnf(a aVar, List<? extends i> list) {
        com.google.android.gms.common.internal.zzac.zzw(aVar);
        this.zzbYU = aVar.b();
        this.zzbYe = zzblx.zzVQ();
        this.zzbYV = "com.google.firebase.auth.internal.DefaultFirebaseUser";
        this.zzbYZ = "2";
        zzU(list);
    }

    @Override // com.google.firebase.auth.d
    public String getDisplayName() {
        return this.zzbYT.getDisplayName();
    }

    @Override // com.google.firebase.auth.d
    public String getEmail() {
        return this.zzbYT.getEmail();
    }

    @Override // com.google.firebase.auth.d
    public Uri getPhotoUrl() {
        return this.zzbYT.getPhotoUrl();
    }

    @Override // com.google.firebase.auth.d
    public List<? extends i> getProviderData() {
        return this.zzbYW;
    }

    @Override // com.google.firebase.auth.d, com.google.firebase.auth.i
    public String getProviderId() {
        return this.zzbYT.getProviderId();
    }

    @Override // com.google.firebase.auth.d
    public List<String> getProviders() {
        return this.zzbYX;
    }

    @Override // com.google.firebase.auth.d
    public String getUid() {
        return this.zzbYT.getUid();
    }

    @Override // com.google.firebase.auth.d
    public boolean isAnonymous() {
        return this.zzbZa;
    }

    public boolean isEmailVerified() {
        return this.zzbYT.isEmailVerified();
    }

    @Override // com.google.firebase.auth.d
    public d zzU(List<? extends i> list) {
        com.google.android.gms.common.internal.zzac.zzw(list);
        this.zzbYW = new ArrayList(list.size());
        this.zzbYX = new ArrayList(list.size());
        this.zzbYY = new android.support.v4.f.a();
        for (int i = 0; i < list.size(); i++) {
            i iVar = list.get(i);
            if (iVar.getProviderId().equals("firebase")) {
                this.zzbYT = (zzbnd) iVar;
            } else {
                this.zzbYX.add(iVar.getProviderId());
            }
            this.zzbYW.add((zzbnd) iVar);
            this.zzbYY.put(iVar.getProviderId(), (zzbnd) iVar);
        }
        if (this.zzbYT == null) {
            this.zzbYT = this.zzbYW.get(0);
        }
        return this;
    }

    @Override // com.google.firebase.auth.d
    public a zzVF() {
        return a.a(this.zzbYU);
    }

    @Override // com.google.firebase.auth.d
    public zzbmn zzVG() {
        return this.zzbYS;
    }

    @Override // com.google.firebase.auth.d
    public String zzVH() {
        return this.zzbYe.zzaL(this.zzbYS);
    }

    @Override // com.google.firebase.auth.d
    public String zzVI() {
        return zzVG().getAccessToken();
    }

    public List<zzbnd> zzWq() {
        return this.zzbYW;
    }

    @Override // com.google.firebase.auth.d
    public void zza(zzbmn zzbmnVar) {
        this.zzbYS = (zzbmn) com.google.android.gms.common.internal.zzac.zzw(zzbmnVar);
    }

    @Override // com.google.firebase.auth.d
    /* renamed from: zzaZ */
    public zzbnf zzaY(boolean z) {
        this.zzbZa = z;
        return this;
    }

    public zzbnf zziz(String str) {
        this.zzbYZ = str;
        return this;
    }
}
