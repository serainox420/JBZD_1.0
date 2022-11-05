package com.google.android.gms.internal;

import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v7.media.f;
import android.support.v7.media.g;
import com.google.android.gms.internal.zzwz;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzxe extends zzwz.zza {
    private final g zzanO;
    private final Map<f, Set<g.a>> zzaqY = new HashMap();

    public zzxe(g gVar) {
        this.zzanO = gVar;
    }

    public void setMediaSessionCompat(MediaSessionCompat mediaSessionCompat) {
        this.zzanO.a(mediaSessionCompat);
    }

    @Override // com.google.android.gms.internal.zzwz
    public void zza(Bundle bundle, int i) {
        f a2 = f.a(bundle);
        for (g.a aVar : this.zzaqY.get(a2)) {
            this.zzanO.a(a2, aVar, i);
        }
    }

    @Override // com.google.android.gms.internal.zzwz
    public void zza(Bundle bundle, zzxa zzxaVar) {
        f a2 = f.a(bundle);
        if (!this.zzaqY.containsKey(a2)) {
            this.zzaqY.put(a2, new HashSet());
        }
        this.zzaqY.get(a2).add(new zzxd(zzxaVar));
    }

    @Override // com.google.android.gms.internal.zzwz
    public boolean zzb(Bundle bundle, int i) {
        return this.zzanO.a(f.a(bundle), i);
    }

    @Override // com.google.android.gms.internal.zzwz
    public void zzcM(String str) {
        for (g.C0043g c0043g : this.zzanO.a()) {
            if (c0043g.c().equals(str)) {
                this.zzanO.a(c0043g);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzwz
    public Bundle zzcN(String str) {
        for (g.C0043g c0043g : this.zzanO.a()) {
            if (c0043g.c().equals(str)) {
                return c0043g.u();
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzwz
    public void zzm(Bundle bundle) {
        for (g.a aVar : this.zzaqY.get(f.a(bundle))) {
            this.zzanO.a(aVar);
        }
    }

    @Override // com.google.android.gms.internal.zzwz
    public int zzsB() {
        return 10298208;
    }

    @Override // com.google.android.gms.internal.zzwz
    public void zzsZ() {
        this.zzanO.a(this.zzanO.b());
    }

    @Override // com.google.android.gms.internal.zzwz
    public boolean zzta() {
        return this.zzanO.c().c().equals(this.zzanO.b().c());
    }

    @Override // com.google.android.gms.internal.zzwz
    public String zztb() {
        return this.zzanO.c().c();
    }
}
