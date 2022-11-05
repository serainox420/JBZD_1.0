package com.google.firebase.auth;

import android.net.Uri;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzbmn;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class d implements i {
    /* JADX INFO: Access modifiers changed from: private */
    public FirebaseAuth zzVJ() {
        return FirebaseAuth.getInstance(zzVF());
    }

    public Task<Void> delete() {
        return zzVJ().zzc(this);
    }

    public abstract String getDisplayName();

    public abstract String getEmail();

    public abstract Uri getPhotoUrl();

    public abstract List<? extends i> getProviderData();

    @Override // com.google.firebase.auth.i
    public abstract String getProviderId();

    public abstract List<String> getProviders();

    public Task<e> getToken(boolean z) {
        return zzVJ().zza(this, z);
    }

    public abstract String getUid();

    public abstract boolean isAnonymous();

    public Task<Object> linkWithCredential(a aVar) {
        zzac.zzw(aVar);
        return zzVJ().zzb(this, aVar);
    }

    public Task<Void> reauthenticate(a aVar) {
        zzac.zzw(aVar);
        return zzVJ().zza(this, aVar);
    }

    public Task<Void> reload() {
        return zzVJ().zzb(this);
    }

    public Task<Void> sendEmailVerification() {
        return zzVJ().zza(this, false).continueWithTask(new Continuation<e, Task<Void>>() { // from class: com.google.firebase.auth.d.1
            @Override // com.google.android.gms.tasks.Continuation
            /* renamed from: a */
            public Task<Void> then(Task<e> task) throws Exception {
                return d.this.zzVJ().zziw(task.getResult().a());
            }
        });
    }

    public Task<Object> unlink(String str) {
        zzac.zzdr(str);
        return zzVJ().zza(this, str);
    }

    public Task<Void> updateEmail(String str) {
        zzac.zzdr(str);
        return zzVJ().zzb(this, str);
    }

    public Task<Void> updatePassword(String str) {
        zzac.zzdr(str);
        return zzVJ().zzc(this, str);
    }

    public Task<Void> updateProfile(UserProfileChangeRequest userProfileChangeRequest) {
        zzac.zzw(userProfileChangeRequest);
        return zzVJ().zza(this, userProfileChangeRequest);
    }

    public abstract d zzU(List<? extends i> list);

    public abstract com.google.firebase.a zzVF();

    public abstract zzbmn zzVG();

    public abstract String zzVH();

    public abstract String zzVI();

    public abstract void zza(zzbmn zzbmnVar);

    public abstract d zzaY(boolean z);
}
