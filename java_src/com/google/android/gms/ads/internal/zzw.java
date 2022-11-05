package com.google.android.gms.ads.internal;

import android.os.Build;
import com.google.android.gms.internal.zzdd;
import com.google.android.gms.internal.zzdn;
import com.google.android.gms.internal.zzdo;
import com.google.android.gms.internal.zzga;
import com.google.android.gms.internal.zzgb;
import com.google.android.gms.internal.zzgc;
import com.google.android.gms.internal.zzgg;
import com.google.android.gms.internal.zzir;
import com.google.android.gms.internal.zziz;
import com.google.android.gms.internal.zzjm;
import com.google.android.gms.internal.zzjw;
import com.google.android.gms.internal.zzlq;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzmf;
import com.google.android.gms.internal.zznj;
import com.google.android.gms.internal.zzow;
import com.google.android.gms.internal.zzpe;
import com.google.android.gms.internal.zzpo;
import com.google.android.gms.internal.zzpp;
import com.google.android.gms.internal.zzps;
import com.google.android.gms.internal.zzpw;
import com.google.android.gms.internal.zzpx;
import com.google.android.gms.internal.zzqo;
import com.google.android.gms.internal.zzqr;
import com.google.android.gms.internal.zzqy;
@zzme
/* loaded from: classes.dex */
public class zzw {
    private static final Object zztX = new Object();
    private static zzw zzuD;
    private final com.google.android.gms.ads.internal.overlay.zza zzuE = new com.google.android.gms.ads.internal.overlay.zza();
    private final zzmf zzuF = new zzmf();
    private final com.google.android.gms.ads.internal.overlay.zzf zzuG = new com.google.android.gms.ads.internal.overlay.zzf();
    private final zzlq zzuH = new zzlq();
    private final zzpo zzuI = new zzpo();
    private final zzqy zzuJ = new zzqy();
    private final zzpp zzuK = zzpp.zzaj(Build.VERSION.SDK_INT);
    private final zzdd zzuL = new zzdd();
    private final zzpe zzuM = new zzpe(this.zzuI);
    private final zzdn zzuN = new zzdn();
    private final zzdo zzuO = new zzdo();
    private final com.google.android.gms.common.util.zze zzuP = com.google.android.gms.common.util.zzi.zzzc();
    private final zzh zzuQ = new zzh();
    private final zzgg zzuR = new zzgg();
    private final zzps zzuS = new zzps();
    private final zznj zzuT = new zznj();
    private final zzga zzuU = new zzga();
    private final zzgb zzuV = new zzgb();
    private final zzgc zzuW = new zzgc();
    private final zzqo zzuX = new zzqo();
    private final com.google.android.gms.ads.internal.purchase.zzi zzuY = new com.google.android.gms.ads.internal.purchase.zzi();
    private final zziz zzuZ = new zziz();
    private final zzjm zzva = new zzjm();
    private final zzpw zzvb = new zzpw();
    private final com.google.android.gms.ads.internal.overlay.zzr zzvc = new com.google.android.gms.ads.internal.overlay.zzr();
    private final com.google.android.gms.ads.internal.overlay.zzs zzvd = new com.google.android.gms.ads.internal.overlay.zzs();
    private final zzjw zzve = new zzjw();
    private final zzpx zzvf = new zzpx();
    private final zzr zzvg = new zzr();
    private final zzir zzvh = new zzir();
    private final zzqr zzvi = new zzqr();
    private final zzow zzvj = new zzow();

    static {
        zza(new zzw());
    }

    protected zzw() {
    }

    protected static void zza(zzw zzwVar) {
        synchronized (zztX) {
            zzuD = zzwVar;
        }
    }

    private static zzw zzcH() {
        zzw zzwVar;
        synchronized (zztX) {
            zzwVar = zzuD;
        }
        return zzwVar;
    }

    public static zzmf zzcI() {
        return zzcH().zzuF;
    }

    public static com.google.android.gms.ads.internal.overlay.zza zzcJ() {
        return zzcH().zzuE;
    }

    public static com.google.android.gms.ads.internal.overlay.zzf zzcK() {
        return zzcH().zzuG;
    }

    public static zzlq zzcL() {
        return zzcH().zzuH;
    }

    public static zzpo zzcM() {
        return zzcH().zzuI;
    }

    public static zzqy zzcN() {
        return zzcH().zzuJ;
    }

    public static zzpp zzcO() {
        return zzcH().zzuK;
    }

    public static zzdd zzcP() {
        return zzcH().zzuL;
    }

    public static zzpe zzcQ() {
        return zzcH().zzuM;
    }

    public static zzdo zzcR() {
        return zzcH().zzuO;
    }

    public static com.google.android.gms.common.util.zze zzcS() {
        return zzcH().zzuP;
    }

    public static zzgg zzcT() {
        return zzcH().zzuR;
    }

    public static zzps zzcU() {
        return zzcH().zzuS;
    }

    public static zznj zzcV() {
        return zzcH().zzuT;
    }

    public static zzgb zzcW() {
        return zzcH().zzuV;
    }

    public static zzga zzcX() {
        return zzcH().zzuU;
    }

    public static zzgc zzcY() {
        return zzcH().zzuW;
    }

    public static zzqo zzcZ() {
        return zzcH().zzuX;
    }

    public static com.google.android.gms.ads.internal.purchase.zzi zzda() {
        return zzcH().zzuY;
    }

    public static zziz zzdb() {
        return zzcH().zzuZ;
    }

    public static zzpw zzdc() {
        return zzcH().zzvb;
    }

    public static com.google.android.gms.ads.internal.overlay.zzr zzdd() {
        return zzcH().zzvc;
    }

    public static com.google.android.gms.ads.internal.overlay.zzs zzde() {
        return zzcH().zzvd;
    }

    public static zzjw zzdf() {
        return zzcH().zzve;
    }

    public static zzr zzdg() {
        return zzcH().zzvg;
    }

    public static zzpx zzdh() {
        return zzcH().zzvf;
    }

    public static zzh zzdi() {
        return zzcH().zzuQ;
    }

    public static zzir zzdj() {
        return zzcH().zzvh;
    }

    public static zzqr zzdk() {
        return zzcH().zzvi;
    }

    public static zzow zzdl() {
        return zzcH().zzvj;
    }
}
