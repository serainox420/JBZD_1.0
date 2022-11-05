package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.RemoteException;
import android.support.v4.f.k;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ViewSwitcher;
import com.google.android.gms.internal.zzaw;
import com.google.android.gms.internal.zzeg;
import com.google.android.gms.internal.zzel;
import com.google.android.gms.internal.zzeo;
import com.google.android.gms.internal.zzep;
import com.google.android.gms.internal.zzev;
import com.google.android.gms.internal.zzex;
import com.google.android.gms.internal.zzfc;
import com.google.android.gms.internal.zzft;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzgp;
import com.google.android.gms.internal.zzhc;
import com.google.android.gms.internal.zzhp;
import com.google.android.gms.internal.zzhq;
import com.google.android.gms.internal.zzhr;
import com.google.android.gms.internal.zzhs;
import com.google.android.gms.internal.zzle;
import com.google.android.gms.internal.zzli;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zznw;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzpc;
import com.google.android.gms.internal.zzph;
import com.google.android.gms.internal.zzpj;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpq;
import com.google.android.gms.internal.zzpr;
import com.google.android.gms.internal.zzpz;
import com.google.android.gms.internal.zzqd;
import com.google.android.gms.internal.zzqh;
import com.google.android.gms.internal.zzqw;
import com.google.android.gms.internal.zzqx;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;
@zzme
/* loaded from: classes.dex */
public final class zzx implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    public final Context zzqn;
    boolean zztK;
    zzli zzvA;
    zzhp zzvB;
    zzhq zzvC;
    k<String, zzhr> zzvD;
    k<String, zzhs> zzvE;
    zzhc zzvF;
    zzft zzvG;
    zzfc zzvH;
    zzgp zzvI;
    zznw zzvJ;
    List<String> zzvK;
    com.google.android.gms.ads.internal.purchase.zzk zzvL;
    public zzph zzvM;
    View zzvN;
    public int zzvO;
    boolean zzvP;
    private HashSet<zzpc> zzvQ;
    private int zzvR;
    private int zzvS;
    private zzpz zzvT;
    private boolean zzvU;
    private boolean zzvV;
    private boolean zzvW;
    final String zzvk;
    public String zzvl;
    final zzaw zzvm;
    public final zzqh zzvn;
    zza zzvo;
    public zzpj zzvp;
    public zzpq zzvq;
    public zzeg zzvr;
    public zzpb zzvs;
    public zzpb.zza zzvt;
    public zzpc zzvu;
    zzeo zzvv;
    zzep zzvw;
    zzev zzvx;
    zzex zzvy;
    zzle zzvz;

    /* loaded from: classes2.dex */
    public static class zza extends ViewSwitcher {
        private final zzpr zzvX;
        private final zzqd zzvY;
        private boolean zzvZ;

        public zza(Context context, String str, String str2, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
            super(context);
            this.zzvX = new zzpr(context);
            this.zzvX.setAdUnitId(str);
            this.zzvX.zzba(str2);
            this.zzvZ = true;
            if (context instanceof Activity) {
                this.zzvY = new zzqd((Activity) context, this, onGlobalLayoutListener, onScrollChangedListener);
            } else {
                this.zzvY = new zzqd(null, this, onGlobalLayoutListener, onScrollChangedListener);
            }
            this.zzvY.zzle();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.zzvY != null) {
                this.zzvY.onAttachedToWindow();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (this.zzvY != null) {
                this.zzvY.onDetachedFromWindow();
            }
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (this.zzvZ) {
                this.zzvX.zzg(motionEvent);
                return false;
            }
            return false;
        }

        @Override // android.widget.ViewAnimator, android.view.ViewGroup
        public void removeAllViews() {
            ArrayList<zzqw> arrayList = new ArrayList();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= getChildCount()) {
                    break;
                }
                View childAt = getChildAt(i2);
                if (childAt != null && (childAt instanceof zzqw)) {
                    arrayList.add((zzqw) childAt);
                }
                i = i2 + 1;
            }
            super.removeAllViews();
            for (zzqw zzqwVar : arrayList) {
                zzqwVar.destroy();
            }
        }

        public void zzds() {
            zzpk.v("Disable position monitoring on adFrame.");
            if (this.zzvY != null) {
                this.zzvY.zzlf();
            }
        }

        public zzpr zzdw() {
            return this.zzvX;
        }

        public void zzdx() {
            zzpk.v("Enable debug gesture detector on adFrame.");
            this.zzvZ = true;
        }

        public void zzdy() {
            zzpk.v("Disable debug gesture detector on adFrame.");
            this.zzvZ = false;
        }
    }

    public zzx(Context context, zzeg zzegVar, String str, zzqh zzqhVar) {
        this(context, zzegVar, str, zzqhVar, null);
    }

    zzx(Context context, zzeg zzegVar, String str, zzqh zzqhVar, zzaw zzawVar) {
        this.zzvM = null;
        this.zzvN = null;
        this.zzvO = 0;
        this.zzvP = false;
        this.zztK = false;
        this.zzvQ = null;
        this.zzvR = -1;
        this.zzvS = -1;
        this.zzvU = true;
        this.zzvV = true;
        this.zzvW = false;
        zzgd.initialize(context);
        if (zzw.zzcQ().zzkk() != null) {
            List<String> zzft = zzgd.zzft();
            if (zzqhVar.zzYW != 0) {
                zzft.add(Integer.toString(zzqhVar.zzYW));
            }
            zzw.zzcQ().zzkk().zzc(zzft);
        }
        this.zzvk = UUID.randomUUID().toString();
        if (zzegVar.zzzz || zzegVar.zzzB) {
            this.zzvo = null;
        } else {
            this.zzvo = new zza(context, str, zzqhVar.zzba, this, this);
            this.zzvo.setMinimumWidth(zzegVar.widthPixels);
            this.zzvo.setMinimumHeight(zzegVar.heightPixels);
            this.zzvo.setVisibility(4);
        }
        this.zzvr = zzegVar;
        this.zzvl = str;
        this.zzqn = context;
        this.zzvn = zzqhVar;
        this.zzvm = zzawVar == null ? new zzaw(new zzj(this)) : zzawVar;
        this.zzvT = new zzpz(200L);
        this.zzvE = new k<>();
    }

    private void zzdt() {
        View findViewById;
        if (this.zzvo == null || (findViewById = this.zzvo.getRootView().findViewById(16908290)) == null) {
            return;
        }
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        this.zzvo.getGlobalVisibleRect(rect);
        findViewById.getGlobalVisibleRect(rect2);
        if (rect.top != rect2.top) {
            this.zzvU = false;
        }
        if (rect.bottom == rect2.bottom) {
            return;
        }
        this.zzvV = false;
    }

    private void zzh(boolean z) {
        boolean z2 = true;
        if (this.zzvo == null || this.zzvs == null || this.zzvs.zzNH == null || this.zzvs.zzNH.zzlv() == null) {
            return;
        }
        if (z && !this.zzvT.tryAcquire()) {
            return;
        }
        if (this.zzvs.zzNH.zzlv().zzdD()) {
            int[] iArr = new int[2];
            this.zzvo.getLocationOnScreen(iArr);
            int zzc = zzel.zzeT().zzc(this.zzqn, iArr[0]);
            int zzc2 = zzel.zzeT().zzc(this.zzqn, iArr[1]);
            if (zzc != this.zzvR || zzc2 != this.zzvS) {
                this.zzvR = zzc;
                this.zzvS = zzc2;
                zzqx zzlv = this.zzvs.zzNH.zzlv();
                int i = this.zzvR;
                int i2 = this.zzvS;
                if (z) {
                    z2 = false;
                }
                zzlv.zza(i, i2, z2);
            }
        }
        zzdt();
    }

    public void destroy() {
        zzds();
        this.zzvw = null;
        this.zzvx = null;
        this.zzvA = null;
        this.zzvz = null;
        this.zzvI = null;
        this.zzvy = null;
        zzi(false);
        if (this.zzvo != null) {
            this.zzvo.removeAllViews();
        }
        zzdn();
        zzdp();
        this.zzvs = null;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        zzh(false);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public void onScrollChanged() {
        zzh(true);
        this.zzvW = true;
    }

    public void zza(HashSet<zzpc> hashSet) {
        this.zzvQ = hashSet;
    }

    public HashSet<zzpc> zzdm() {
        return this.zzvQ;
    }

    public void zzdn() {
        if (this.zzvs == null || this.zzvs.zzNH == null) {
            return;
        }
        this.zzvs.zzNH.destroy();
    }

    public void zzdo() {
        if (this.zzvs == null || this.zzvs.zzNH == null) {
            return;
        }
        this.zzvs.zzNH.stopLoading();
    }

    public void zzdp() {
        if (this.zzvs == null || this.zzvs.zzLj == null) {
            return;
        }
        try {
            this.zzvs.zzLj.destroy();
        } catch (RemoteException e) {
            zzpk.zzbh("Could not destroy mediation adapter.");
        }
    }

    public boolean zzdq() {
        return this.zzvO == 0;
    }

    public boolean zzdr() {
        return this.zzvO == 1;
    }

    public void zzds() {
        if (this.zzvo != null) {
            this.zzvo.zzds();
        }
    }

    public String zzdu() {
        return (!this.zzvU || !this.zzvV) ? this.zzvU ? this.zzvW ? "top-scrollable" : "top-locked" : this.zzvV ? this.zzvW ? "bottom-scrollable" : "bottom-locked" : "" : "";
    }

    public void zzdv() {
        if (this.zzvu == null) {
            return;
        }
        if (this.zzvs != null) {
            this.zzvu.zzm(this.zzvs.zzWg);
            this.zzvu.zzn(this.zzvs.zzWh);
            this.zzvu.zzE(this.zzvs.zzSn);
        }
        this.zzvu.zzD(this.zzvr.zzzz);
    }

    public void zzi(boolean z) {
        if (this.zzvO == 0) {
            zzdo();
        }
        if (this.zzvp != null) {
            this.zzvp.cancel();
        }
        if (this.zzvq != null) {
            this.zzvq.cancel();
        }
        if (z) {
            this.zzvs = null;
        }
    }
}
