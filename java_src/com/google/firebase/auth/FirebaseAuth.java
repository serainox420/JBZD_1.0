package com.google.firebase.auth;

import android.support.annotation.Keep;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzbls;
import com.google.android.gms.internal.zzblv;
import com.google.android.gms.internal.zzblx;
import com.google.android.gms.internal.zzbma;
import com.google.android.gms.internal.zzbmn;
import com.google.android.gms.internal.zzbmz;
import com.google.android.gms.internal.zzbnc;
import com.google.android.gms.internal.zzbne;
import com.google.android.gms.internal.zzbnf;
import com.google.android.gms.internal.zzbni;
import com.google.android.gms.internal.zzbnj;
import com.google.android.gms.internal.zzbnk;
import com.google.android.gms.internal.zzbti;
import com.google.android.gms.internal.zzbtj;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2.dex */
public abstract class FirebaseAuth implements zzbti {
    private static FirebaseAuth zzbXK;
    private static Map<String, FirebaseAuth> zzbhH = new android.support.v4.f.a();
    private List<a> mListeners;
    private com.google.firebase.a zzbXF;
    private zzbls zzbXG;
    private d zzbXH;
    private zzbnj zzbXI;
    private zzbnk zzbXJ;

    /* loaded from: classes2.dex */
    public interface a {
        void a(FirebaseAuth firebaseAuth);
    }

    /* loaded from: classes2.dex */
    class b implements zzbmz {
        b() {
        }

        @Override // com.google.android.gms.internal.zzbmz
        public void zza(zzbmn zzbmnVar, d dVar) {
            zzac.zzw(zzbmnVar);
            zzac.zzw(dVar);
            dVar.zza(zzbmnVar);
            FirebaseAuth.this.zza(dVar, zzbmnVar, true);
        }
    }

    public FirebaseAuth(com.google.firebase.a aVar) {
        this(aVar, zzb(aVar), new zzbnj(aVar.a(), aVar.f(), zzblx.zzVQ()));
    }

    FirebaseAuth(com.google.firebase.a aVar, zzbls zzblsVar, zzbnj zzbnjVar) {
        this.zzbXF = (com.google.firebase.a) zzac.zzw(aVar);
        this.zzbXG = (zzbls) zzac.zzw(zzblsVar);
        this.zzbXI = (zzbnj) zzac.zzw(zzbnjVar);
        this.mListeners = new CopyOnWriteArrayList();
        this.zzbXJ = zzbnk.zzWu();
        zzVD();
    }

    public static FirebaseAuth getInstance() {
        return zzc(com.google.firebase.a.d());
    }

    @Keep
    public static FirebaseAuth getInstance(com.google.firebase.a aVar) {
        return zzc(aVar);
    }

    static zzbls zzb(com.google.firebase.a aVar) {
        return zzbma.zza(aVar.a(), new zzbma.zza.C0306zza(aVar.c().a()).zzVT());
    }

    private static FirebaseAuth zzc(com.google.firebase.a aVar) {
        return zzd(aVar);
    }

    private static synchronized FirebaseAuth zzd(com.google.firebase.a aVar) {
        FirebaseAuth firebaseAuth;
        synchronized (FirebaseAuth.class) {
            firebaseAuth = zzbhH.get(aVar.f());
            if (firebaseAuth == null) {
                firebaseAuth = new zzbne(aVar);
                aVar.a(firebaseAuth);
                if (zzbXK == null) {
                    zzbXK = firebaseAuth;
                }
                zzbhH.put(aVar.f(), firebaseAuth);
            }
        }
        return firebaseAuth;
    }

    public void addAuthStateListener(final a aVar) {
        this.mListeners.add(aVar);
        this.zzbXJ.execute(new Runnable() { // from class: com.google.firebase.auth.FirebaseAuth.1
            @Override // java.lang.Runnable
            public void run() {
                aVar.a(FirebaseAuth.this);
            }
        });
    }

    public Task<Void> applyActionCode(String str) {
        zzac.zzdr(str);
        return this.zzbXG.zze(this.zzbXF, str);
    }

    public Task<Object> checkActionCode(String str) {
        zzac.zzdr(str);
        return this.zzbXG.zzd(this.zzbXF, str);
    }

    public Task<Void> confirmPasswordReset(String str, String str2) {
        zzac.zzdr(str);
        zzac.zzdr(str2);
        return this.zzbXG.zza(this.zzbXF, str, str2);
    }

    public Task<Object> createUserWithEmailAndPassword(String str, String str2) {
        zzac.zzdr(str);
        zzac.zzdr(str2);
        return this.zzbXG.zza(this.zzbXF, str, str2, new b());
    }

    public Task<Object> fetchProvidersForEmail(String str) {
        zzac.zzdr(str);
        return this.zzbXG.zza(this.zzbXF, str);
    }

    public d getCurrentUser() {
        return this.zzbXH;
    }

    public void removeAuthStateListener(a aVar) {
        this.mListeners.remove(aVar);
    }

    public Task<Void> sendPasswordResetEmail(String str) {
        zzac.zzdr(str);
        return this.zzbXG.zzb(this.zzbXF, str);
    }

    public Task<Object> signInAnonymously() {
        return (this.zzbXH == null || !this.zzbXH.isAnonymous()) ? this.zzbXG.zza(this.zzbXF, new b()) : Tasks.forResult(new zzbnc((zzbnf) this.zzbXH));
    }

    public Task<Object> signInWithCredential(com.google.firebase.auth.a aVar) {
        zzac.zzw(aVar);
        if (com.google.firebase.auth.b.class.isAssignableFrom(aVar.getClass())) {
            com.google.firebase.auth.b bVar = (com.google.firebase.auth.b) aVar;
            return this.zzbXG.zzb(this.zzbXF, bVar.b(), bVar.c(), new b());
        }
        return this.zzbXG.zza(this.zzbXF, aVar, new b());
    }

    public Task<Object> signInWithCustomToken(String str) {
        zzac.zzdr(str);
        return this.zzbXG.zza(this.zzbXF, str, new b());
    }

    public Task<Object> signInWithEmailAndPassword(String str, String str2) {
        zzac.zzdr(str);
        zzac.zzdr(str2);
        return this.zzbXG.zzb(this.zzbXF, str, str2, new b());
    }

    public void signOut() {
        zzVC();
    }

    public Task<String> verifyPasswordResetCode(String str) {
        zzac.zzdr(str);
        return this.zzbXG.zzf(this.zzbXF, str);
    }

    public void zzVC() {
        if (this.zzbXH != null) {
            this.zzbXI.zzh(this.zzbXH);
            this.zzbXH = null;
        }
        this.zzbXI.zzWt();
        zza((d) null);
    }

    protected void zzVD() {
        zzbmn zzg;
        this.zzbXH = this.zzbXI.zzWs();
        if (this.zzbXH == null || (zzg = this.zzbXI.zzg(this.zzbXH)) == null) {
            return;
        }
        zza(this.zzbXH, zzg, false);
    }

    public Task<Void> zza(d dVar, UserProfileChangeRequest userProfileChangeRequest) {
        zzac.zzw(dVar);
        zzac.zzw(userProfileChangeRequest);
        return this.zzbXG.zza(this.zzbXF, dVar, userProfileChangeRequest, new b());
    }

    public Task<Void> zza(d dVar, com.google.firebase.auth.a aVar) {
        zzac.zzw(dVar);
        zzac.zzw(aVar);
        if (com.google.firebase.auth.b.class.isAssignableFrom(aVar.getClass())) {
            com.google.firebase.auth.b bVar = (com.google.firebase.auth.b) aVar;
            return this.zzbXG.zza(this.zzbXF, dVar, bVar.b(), bVar.c(), new b());
        }
        return this.zzbXG.zza(this.zzbXF, dVar, aVar, new b());
    }

    public Task<Object> zza(d dVar, String str) {
        zzac.zzdr(str);
        zzac.zzw(dVar);
        return this.zzbXG.zzd(this.zzbXF, dVar, str, new b());
    }

    public Task<e> zza(d dVar, boolean z) {
        if (dVar == null) {
            return Tasks.forException(zzblv.zzce(new Status(17495)));
        }
        zzbmn zzVG = this.zzbXH.zzVG();
        return (!zzVG.isValid() || z) ? this.zzbXG.zza(this.zzbXF, dVar, zzVG.zzWc(), new zzbmz() { // from class: com.google.firebase.auth.FirebaseAuth.3
            @Override // com.google.android.gms.internal.zzbmz
            public void zza(zzbmn zzbmnVar, d dVar2) {
                FirebaseAuth.this.zza(dVar2, zzbmnVar, true);
            }
        }) : Tasks.forResult(new e(zzVG.getAccessToken()));
    }

    public void zza(d dVar) {
        if (dVar != null) {
            String valueOf = String.valueOf(dVar.getUid());
            Log.d("FirebaseAuth", new StringBuilder(String.valueOf(valueOf).length() + 36).append("Notifying listeners about user ( ").append(valueOf).append(" ).").toString());
        } else {
            Log.d("FirebaseAuth", "Notifying listeners about a sign-out event.");
        }
        final zzbtj zzbtjVar = new zzbtj(dVar != null ? dVar.zzVI() : null);
        this.zzbXJ.execute(new Runnable() { // from class: com.google.firebase.auth.FirebaseAuth.2
            @Override // java.lang.Runnable
            public void run() {
                FirebaseAuth.this.zzbXF.a(zzbtjVar);
                for (a aVar : FirebaseAuth.this.mListeners) {
                    aVar.a(FirebaseAuth.this);
                }
            }
        });
    }

    public void zza(d dVar, zzbmn zzbmnVar, boolean z) {
        boolean z2 = true;
        zzac.zzw(dVar);
        zzac.zzw(zzbmnVar);
        if (this.zzbXH != null) {
            boolean z3 = !this.zzbXH.zzVG().getAccessToken().equals(zzbmnVar.getAccessToken());
            if (this.zzbXH.getUid().equals(dVar.getUid()) && !z3) {
                z2 = false;
            }
        }
        zza(dVar, z, false);
        if (z2) {
            if (this.zzbXH != null) {
                this.zzbXH.zza(zzbmnVar);
            }
            zza(this.zzbXH);
        }
        if (z) {
            this.zzbXI.zza(dVar, zzbmnVar);
        }
    }

    public void zza(d dVar, boolean z, boolean z2) {
        zzac.zzw(dVar);
        if (this.zzbXH == null) {
            this.zzbXH = dVar;
        } else {
            this.zzbXH.zzaY(dVar.isAnonymous());
            this.zzbXH.zzU(dVar.getProviderData());
        }
        if (z) {
            this.zzbXI.zzf(this.zzbXH);
        }
        if (z2) {
            zza(this.zzbXH);
        }
    }

    @Override // com.google.android.gms.internal.zzbti
    public Task<e> zzaX(boolean z) {
        return zza(this.zzbXH, z);
    }

    public Task<Void> zzb(d dVar) {
        zzac.zzw(dVar);
        return this.zzbXG.zzb(this.zzbXF, dVar, new b());
    }

    public Task<Object> zzb(d dVar, com.google.firebase.auth.a aVar) {
        zzac.zzw(aVar);
        zzac.zzw(dVar);
        return this.zzbXG.zzb(this.zzbXF, dVar, aVar, new b());
    }

    public Task<Void> zzb(d dVar, String str) {
        zzac.zzw(dVar);
        zzac.zzdr(str);
        return this.zzbXG.zzb(this.zzbXF, dVar, str, new b());
    }

    public Task<Void> zzc(final d dVar) {
        zzac.zzw(dVar);
        return this.zzbXG.zza(dVar, new zzbni() { // from class: com.google.firebase.auth.FirebaseAuth.4
            @Override // com.google.android.gms.internal.zzbni
            public void zzVE() {
                if (FirebaseAuth.this.zzbXH.getUid().equalsIgnoreCase(dVar.getUid())) {
                    FirebaseAuth.this.zzVC();
                }
            }
        });
    }

    public Task<Void> zzc(d dVar, String str) {
        zzac.zzw(dVar);
        zzac.zzdr(str);
        return this.zzbXG.zzc(this.zzbXF, dVar, str, new b());
    }

    public Task<Void> zziw(String str) {
        zzac.zzdr(str);
        return this.zzbXG.zzc(this.zzbXF, str);
    }
}
