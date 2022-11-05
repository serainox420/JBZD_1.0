package com.google.android.gms.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.flurry.android.AdCreative;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzct implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private final Context zzwi;
    private final WeakReference<zzpb> zzwk;
    private final zzda zzwm;
    protected final zzcr zzwn;
    private final WindowManager zzwo;
    private final PowerManager zzwp;
    private final KeyguardManager zzwq;
    private zzcu zzwr;
    private boolean zzws;
    private boolean zzwv;
    BroadcastReceiver zzwx;
    protected final Object zzrJ = new Object();
    private boolean zzuo = false;
    private boolean zzwt = false;
    private final HashSet<Object> zzwy = new HashSet<>();
    private final HashSet<zzcx> zzwz = new HashSet<>();
    private WeakReference<ViewTreeObserver> zzwl = new WeakReference<>(null);
    private boolean zzwu = true;
    private boolean zzww = false;
    private zzpz zzvT = new zzpz(200);

    /* loaded from: classes2.dex */
    public static class zza implements zzda {
        private WeakReference<zzha> zzwB;

        public zza(zzha zzhaVar) {
            this.zzwB = new WeakReference<>(zzhaVar);
        }

        @Override // com.google.android.gms.internal.zzda
        public View zzdS() {
            zzha zzhaVar = this.zzwB.get();
            if (zzhaVar != null) {
                return zzhaVar.zzgc();
            }
            return null;
        }

        @Override // com.google.android.gms.internal.zzda
        public boolean zzdT() {
            return this.zzwB.get() == null;
        }

        @Override // com.google.android.gms.internal.zzda
        public zzda zzdU() {
            return new zzb(this.zzwB.get());
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb implements zzda {
        private zzha zzwC;

        public zzb(zzha zzhaVar) {
            this.zzwC = zzhaVar;
        }

        @Override // com.google.android.gms.internal.zzda
        public View zzdS() {
            if (this.zzwC != null) {
                return this.zzwC.zzgc();
            }
            return null;
        }

        @Override // com.google.android.gms.internal.zzda
        public boolean zzdT() {
            return this.zzwC == null;
        }

        @Override // com.google.android.gms.internal.zzda
        public zzda zzdU() {
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static class zzc implements zzda {
        private final View mView;
        private final zzpb zzwD;

        public zzc(View view, zzpb zzpbVar) {
            this.mView = view;
            this.zzwD = zzpbVar;
        }

        @Override // com.google.android.gms.internal.zzda
        public View zzdS() {
            return this.mView;
        }

        @Override // com.google.android.gms.internal.zzda
        public boolean zzdT() {
            return this.zzwD == null || this.mView == null;
        }

        @Override // com.google.android.gms.internal.zzda
        public zzda zzdU() {
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static class zzd implements zzda {
        private final WeakReference<View> zzwE;
        private final WeakReference<zzpb> zzwF;

        public zzd(View view, zzpb zzpbVar) {
            this.zzwE = new WeakReference<>(view);
            this.zzwF = new WeakReference<>(zzpbVar);
        }

        @Override // com.google.android.gms.internal.zzda
        public View zzdS() {
            return this.zzwE.get();
        }

        @Override // com.google.android.gms.internal.zzda
        public boolean zzdT() {
            return this.zzwE.get() == null || this.zzwF.get() == null;
        }

        @Override // com.google.android.gms.internal.zzda
        public zzda zzdU() {
            return new zzc(this.zzwE.get(), this.zzwF.get());
        }
    }

    public zzct(Context context, zzeg zzegVar, zzpb zzpbVar, zzqh zzqhVar, zzda zzdaVar) {
        this.zzwk = new WeakReference<>(zzpbVar);
        this.zzwm = zzdaVar;
        this.zzwn = new zzcr(UUID.randomUUID().toString(), zzqhVar, zzegVar.zzzy, zzpbVar.zzWa, zzpbVar.zzdD(), zzegVar.zzzB);
        this.zzwo = (WindowManager) context.getSystemService("window");
        this.zzwp = (PowerManager) context.getApplicationContext().getSystemService("power");
        this.zzwq = (KeyguardManager) context.getSystemService("keyguard");
        this.zzwi = context;
    }

    protected void destroy() {
        synchronized (this.zzrJ) {
            zzdL();
            zzdG();
            this.zzwu = false;
            zzdI();
            zzdN();
        }
    }

    boolean isScreenOn() {
        return this.zzwp.isScreenOn();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        zzk(2);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public void onScrollChanged() {
        zzk(1);
    }

    public void pause() {
        synchronized (this.zzrJ) {
            this.zzuo = true;
            zzk(3);
        }
    }

    public void resume() {
        synchronized (this.zzrJ) {
            this.zzuo = false;
            zzk(3);
        }
    }

    public void stop() {
        synchronized (this.zzrJ) {
            this.zzwt = true;
            zzk(3);
        }
    }

    protected int zza(int i, DisplayMetrics displayMetrics) {
        return (int) (i / displayMetrics.density);
    }

    JSONObject zza(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }

    protected void zza(View view, Map<String, String> map) {
        zzk(3);
    }

    public void zza(zzcu zzcuVar) {
        synchronized (this.zzrJ) {
            this.zzwr = zzcuVar;
        }
    }

    public void zza(zzcx zzcxVar) {
        if (this.zzwz.isEmpty()) {
            zzdF();
            zzk(3);
        }
        this.zzwz.add(zzcxVar);
        try {
            zzcxVar.zzc(zza(zzd(this.zzwm.zzdS())), false);
        } catch (JSONException e) {
            zzpk.zzb("Skipping measurement update for new client.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(zzcx zzcxVar, Map<String, String> map) {
        String valueOf = String.valueOf(this.zzwn.zzdC());
        zzpk.zzbf(valueOf.length() != 0 ? "Received request to untrack: ".concat(valueOf) : new String("Received request to untrack: "));
        zzb(zzcxVar);
    }

    protected void zza(JSONObject jSONObject, boolean z) {
        try {
            zzb(zza(jSONObject), z);
        } catch (Throwable th) {
            zzpk.zzb("Skipping active view message.", th);
        }
    }

    public void zzb(zzcx zzcxVar) {
        this.zzwz.remove(zzcxVar);
        zzcxVar.zzdW();
        if (this.zzwz.isEmpty()) {
            destroy();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzb(zzqw zzqwVar, Map<String, String> map) {
        zza(zzqwVar.getView(), map);
    }

    protected void zzb(JSONObject jSONObject, boolean z) {
        Iterator it = new ArrayList(this.zzwz).iterator();
        while (it.hasNext()) {
            ((zzcx) it.next()).zzc(jSONObject, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean zzb(Map<String, String> map) {
        if (map == null) {
            return false;
        }
        String str = map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(this.zzwn.zzdC());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzc(Map<String, String> map) {
        if (!map.containsKey("isVisible")) {
            return;
        }
        zzj("1".equals(map.get("isVisible")) || "true".equals(map.get("isVisible")));
    }

    protected JSONObject zzd(View view) throws JSONException {
        if (view == null) {
            return zzdP();
        }
        boolean isAttachedToWindow = com.google.android.gms.ads.internal.zzw.zzcO().isAttachedToWindow(view);
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        try {
            view.getLocationOnScreen(iArr);
            view.getLocationInWindow(iArr2);
        } catch (Exception e) {
            zzpk.zzb("Failure getting view location.", e);
        }
        DisplayMetrics displayMetrics = view.getContext().getResources().getDisplayMetrics();
        Rect rect = new Rect();
        rect.left = iArr[0];
        rect.top = iArr[1];
        rect.right = rect.left + view.getWidth();
        rect.bottom = rect.top + view.getHeight();
        Rect rect2 = new Rect();
        rect2.right = this.zzwo.getDefaultDisplay().getWidth();
        rect2.bottom = this.zzwo.getDefaultDisplay().getHeight();
        Rect rect3 = new Rect();
        boolean globalVisibleRect = view.getGlobalVisibleRect(rect3, null);
        Rect rect4 = new Rect();
        boolean localVisibleRect = view.getLocalVisibleRect(rect4);
        Rect rect5 = new Rect();
        view.getHitRect(rect5);
        JSONObject zzdM = zzdM();
        zzdM.put("windowVisibility", view.getWindowVisibility()).put("isAttachedToWindow", isAttachedToWindow).put("viewBox", new JSONObject().put(AdCreative.kAlignmentTop, zza(rect2.top, displayMetrics)).put(AdCreative.kAlignmentBottom, zza(rect2.bottom, displayMetrics)).put(AdCreative.kAlignmentLeft, zza(rect2.left, displayMetrics)).put(AdCreative.kAlignmentRight, zza(rect2.right, displayMetrics))).put("adBox", new JSONObject().put(AdCreative.kAlignmentTop, zza(rect.top, displayMetrics)).put(AdCreative.kAlignmentBottom, zza(rect.bottom, displayMetrics)).put(AdCreative.kAlignmentLeft, zza(rect.left, displayMetrics)).put(AdCreative.kAlignmentRight, zza(rect.right, displayMetrics))).put("globalVisibleBox", new JSONObject().put(AdCreative.kAlignmentTop, zza(rect3.top, displayMetrics)).put(AdCreative.kAlignmentBottom, zza(rect3.bottom, displayMetrics)).put(AdCreative.kAlignmentLeft, zza(rect3.left, displayMetrics)).put(AdCreative.kAlignmentRight, zza(rect3.right, displayMetrics))).put("globalVisibleBoxVisible", globalVisibleRect).put("localVisibleBox", new JSONObject().put(AdCreative.kAlignmentTop, zza(rect4.top, displayMetrics)).put(AdCreative.kAlignmentBottom, zza(rect4.bottom, displayMetrics)).put(AdCreative.kAlignmentLeft, zza(rect4.left, displayMetrics)).put(AdCreative.kAlignmentRight, zza(rect4.right, displayMetrics))).put("localVisibleBoxVisible", localVisibleRect).put("hitBox", new JSONObject().put(AdCreative.kAlignmentTop, zza(rect5.top, displayMetrics)).put(AdCreative.kAlignmentBottom, zza(rect5.bottom, displayMetrics)).put(AdCreative.kAlignmentLeft, zza(rect5.left, displayMetrics)).put(AdCreative.kAlignmentRight, zza(rect5.right, displayMetrics))).put("screenDensity", displayMetrics.density).put("isVisible", com.google.android.gms.ads.internal.zzw.zzcM().zza(view, this.zzwp, this.zzwq));
        return zzdM;
    }

    protected void zzdF() {
        synchronized (this.zzrJ) {
            if (this.zzwx != null) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            this.zzwx = new BroadcastReceiver() { // from class: com.google.android.gms.internal.zzct.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    zzct.this.zzk(3);
                }
            };
            this.zzwi.registerReceiver(this.zzwx, intentFilter);
        }
    }

    protected void zzdG() {
        synchronized (this.zzrJ) {
            if (this.zzwx != null) {
                try {
                    this.zzwi.unregisterReceiver(this.zzwx);
                } catch (IllegalStateException e) {
                    zzpk.zzb("Failed trying to unregister the receiver", e);
                } catch (Exception e2) {
                    com.google.android.gms.ads.internal.zzw.zzcQ().zza(e2, "ActiveViewUnit.stopScreenStatusMonitoring");
                }
                this.zzwx = null;
            }
        }
    }

    public void zzdH() {
        synchronized (this.zzrJ) {
            if (this.zzwu) {
                this.zzwv = true;
                try {
                    zza(zzdQ(), true);
                } catch (RuntimeException e) {
                    zzpk.zzb("Failure while processing active view data.", e);
                } catch (JSONException e2) {
                    zzpk.zzb("JSON failure while processing active view data.", e2);
                }
                String valueOf = String.valueOf(this.zzwn.zzdC());
                zzpk.zzbf(valueOf.length() != 0 ? "Untracking ad unit: ".concat(valueOf) : new String("Untracking ad unit: "));
            }
        }
    }

    protected void zzdI() {
        if (this.zzwr != null) {
            this.zzwr.zza(this);
        }
    }

    public boolean zzdJ() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzwu;
        }
        return z;
    }

    protected void zzdK() {
        ViewTreeObserver viewTreeObserver;
        ViewTreeObserver viewTreeObserver2;
        View zzdS = this.zzwm.zzdU().zzdS();
        if (zzdS == null || (viewTreeObserver2 = zzdS.getViewTreeObserver()) == (viewTreeObserver = this.zzwl.get())) {
            return;
        }
        zzdL();
        if (!this.zzws || (viewTreeObserver != null && viewTreeObserver.isAlive())) {
            this.zzws = true;
            viewTreeObserver2.addOnScrollChangedListener(this);
            viewTreeObserver2.addOnGlobalLayoutListener(this);
        }
        this.zzwl = new WeakReference<>(viewTreeObserver2);
    }

    protected void zzdL() {
        ViewTreeObserver viewTreeObserver = this.zzwl.get();
        if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            return;
        }
        viewTreeObserver.removeOnScrollChangedListener(this);
        viewTreeObserver.removeGlobalOnLayoutListener(this);
    }

    protected JSONObject zzdM() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("afmaVersion", this.zzwn.zzdA()).put("activeViewJSON", this.zzwn.zzdB()).put("timestamp", com.google.android.gms.ads.internal.zzw.zzcS().elapsedRealtime()).put("adFormat", this.zzwn.zzdz()).put("hashCode", this.zzwn.zzdC()).put("isMraid", this.zzwn.zzdD()).put("isStopped", this.zzwt).put("isPaused", this.zzuo).put("isScreenOn", isScreenOn()).put("isNative", this.zzwn.zzdE()).put("appMuted", com.google.android.gms.ads.internal.zzw.zzcM().zzcs()).put("appVolume", com.google.android.gms.ads.internal.zzw.zzcM().zzcq()).put("deviceVolume", com.google.android.gms.ads.internal.zzw.zzcM().zzS(this.zzwi));
        return jSONObject;
    }

    protected void zzdN() {
        Iterator it = new ArrayList(this.zzwz).iterator();
        while (it.hasNext()) {
            zzb((zzcx) it.next());
        }
    }

    protected boolean zzdO() {
        Iterator<zzcx> it = this.zzwz.iterator();
        while (it.hasNext()) {
            if (it.next().zzdV()) {
                return true;
            }
        }
        return false;
    }

    protected JSONObject zzdP() throws JSONException {
        return zzdM().put("isAttachedToWindow", false).put("isScreenOn", isScreenOn()).put("isVisible", false);
    }

    protected JSONObject zzdQ() throws JSONException {
        JSONObject zzdM = zzdM();
        zzdM.put("doneReasonCode", "u");
        return zzdM;
    }

    public zzcr zzdR() {
        return this.zzwn;
    }

    protected void zzj(boolean z) {
        Iterator<Object> it = this.zzwy.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    protected void zzk(int i) {
        boolean z = false;
        synchronized (this.zzrJ) {
            if (!zzdO() || !this.zzwu) {
                return;
            }
            View zzdS = this.zzwm.zzdS();
            boolean z2 = zzdS != null && com.google.android.gms.ads.internal.zzw.zzcM().zza(zzdS, this.zzwp, this.zzwq) && zzdS.getGlobalVisibleRect(new Rect(), null);
            if (this.zzwm.zzdT()) {
                zzdH();
                return;
            }
            if (i == 1) {
                z = true;
            }
            if (z && !this.zzvT.tryAcquire() && z2 == this.zzww) {
                return;
            }
            if (!z2 && !this.zzww && i == 1) {
                return;
            }
            try {
                zza(zzd(zzdS), false);
                this.zzww = z2;
            } catch (RuntimeException | JSONException e) {
                zzpk.zza("Active view update failed.", e);
            }
            zzdK();
            zzdI();
        }
    }
}
