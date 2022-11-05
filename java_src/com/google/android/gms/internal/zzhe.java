package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Point;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.AdChoicesView;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzhh;
import com.openx.view.mraid.JSInterface;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzhe extends zzhh.zza implements View.OnClickListener, View.OnTouchListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    static final String[] zzHf = {"2011", "1009"};
    zzha zzGA;
    private final FrameLayout zzHg;
    View zzHi;
    FrameLayout zzrY;
    private final Object zzrJ = new Object();
    Map<String, WeakReference<View>> zzHh = new HashMap();
    boolean zzHj = false;
    Point zzHk = new Point();
    Point zzHl = new Point();
    WeakReference<zzcy> zzHm = new WeakReference<>(null);

    public zzhe(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.zzHg = frameLayout;
        this.zzrY = frameLayout2;
        com.google.android.gms.ads.internal.zzw.zzdk().zza((View) this.zzHg, (ViewTreeObserver.OnGlobalLayoutListener) this);
        com.google.android.gms.ads.internal.zzw.zzdk().zza((View) this.zzHg, (ViewTreeObserver.OnScrollChangedListener) this);
        this.zzHg.setOnTouchListener(this);
        this.zzHg.setOnClickListener(this);
        zzgd.initialize(this.zzHg.getContext());
    }

    private void zza(zzhb zzhbVar) {
        ViewGroup viewGroup = null;
        boolean zzfY = zzhbVar.zzfY();
        if (zzfY && this.zzHh != null) {
            WeakReference<View> weakReference = this.zzHh.get("1098");
            View view = weakReference != null ? weakReference.get() : null;
            if (view instanceof ViewGroup) {
                viewGroup = (ViewGroup) view;
            }
        }
        boolean z = zzfY && viewGroup != null;
        this.zzHi = zza(zzhbVar, z);
        if (this.zzHi == null) {
            return;
        }
        if (this.zzHh != null) {
            this.zzHh.put("1007", new WeakReference<>(this.zzHi));
        }
        if (z) {
            viewGroup.removeAllViews();
            viewGroup.addView(this.zzHi);
            return;
        }
        AdChoicesView zzp = zzp(zzhbVar.getContext());
        zzp.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        zzp.addView(this.zzHi);
        if (this.zzrY == null) {
            return;
        }
        this.zzrY.addView(zzp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzb(zzhb zzhbVar) {
        synchronized (this.zzrJ) {
            final View zzgk = zzgk();
            if (!(zzgk instanceof FrameLayout)) {
                zzhbVar.zzgd();
            } else {
                zzhbVar.zza(zzgk, new zzgy() { // from class: com.google.android.gms.internal.zzhe.2
                    @Override // com.google.android.gms.internal.zzgy
                    public void zzc(MotionEvent motionEvent) {
                        zzhe.this.onTouch(null, motionEvent);
                    }

                    @Override // com.google.android.gms.internal.zzgy
                    public void zzfX() {
                        zzhe.this.onClick(zzgk);
                    }
                });
            }
        }
    }

    private View zzgk() {
        if (this.zzHh == null) {
            return null;
        }
        for (String str : zzHf) {
            WeakReference<View> weakReference = this.zzHh.get(str);
            if (weakReference != null) {
                return weakReference.get();
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzhh
    public void destroy() {
        synchronized (this.zzrJ) {
            if (this.zzrY != null) {
                this.zzrY.removeAllViews();
            }
            this.zzrY = null;
            this.zzHh = null;
            this.zzHi = null;
            this.zzGA = null;
            this.zzHk = null;
            this.zzHl = null;
            this.zzHm = null;
        }
    }

    int getMeasuredHeight() {
        return this.zzHg.getMeasuredHeight();
    }

    int getMeasuredWidth() {
        return this.zzHg.getMeasuredWidth();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        synchronized (this.zzrJ) {
            if (this.zzGA == null) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(JSInterface.JSON_X, zzC(this.zzHk.x));
                jSONObject.put(JSInterface.JSON_Y, zzC(this.zzHk.y));
                jSONObject.put("start_x", zzC(this.zzHl.x));
                jSONObject.put("start_y", zzC(this.zzHl.y));
            } catch (JSONException e) {
                zzpk.zzbh("Unable to get click location");
            }
            if (this.zzHi == null || !this.zzHi.equals(view)) {
                this.zzGA.zza(view, this.zzHh, jSONObject, this.zzHg);
            } else if (!(this.zzGA instanceof zzgz)) {
                this.zzGA.zza(view, "1007", jSONObject, this.zzHh, this.zzHg);
            } else if (((zzgz) this.zzGA).zzga() != null) {
                ((zzgz) this.zzGA).zzga().zza(view, "1007", jSONObject, this.zzHh, this.zzHg);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        synchronized (this.zzrJ) {
            if (this.zzHj) {
                int measuredWidth = getMeasuredWidth();
                int measuredHeight = getMeasuredHeight();
                if (measuredWidth != 0 && measuredHeight != 0 && this.zzrY != null) {
                    this.zzrY.setLayoutParams(new FrameLayout.LayoutParams(measuredWidth, measuredHeight));
                    this.zzHj = false;
                }
            }
            if (this.zzGA != null) {
                this.zzGA.zzd(this.zzHg, this.zzHh);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public void onScrollChanged() {
        synchronized (this.zzrJ) {
            if (this.zzGA != null) {
                this.zzGA.zzd(this.zzHg, this.zzHh);
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this.zzrJ) {
            if (this.zzGA != null) {
                Point zze = zze(motionEvent);
                this.zzHk = zze;
                if (motionEvent.getAction() == 0) {
                    this.zzHl = zze;
                }
                MotionEvent obtain = MotionEvent.obtain(motionEvent);
                obtain.setLocation(zze.x, zze.y);
                this.zzGA.zzd(obtain);
                obtain.recycle();
            }
        }
        return false;
    }

    int zzC(int i) {
        return zzel.zzeT().zzc(this.zzGA.getContext(), i);
    }

    @Override // com.google.android.gms.internal.zzhh
    public IObjectWrapper zzU(String str) {
        View view = null;
        synchronized (this.zzrJ) {
            if (this.zzHh == null) {
                return null;
            }
            WeakReference<View> weakReference = this.zzHh.get(str);
            if (weakReference != null) {
                view = weakReference.get();
            }
            return com.google.android.gms.dynamic.zzd.zzA(view);
        }
    }

    View zza(zzhb zzhbVar, boolean z) {
        return zzhbVar.zza(this, z);
    }

    @Override // com.google.android.gms.internal.zzhh
    public void zzb(IObjectWrapper iObjectWrapper, int i) {
        zzcy zzcyVar;
        if (!com.google.android.gms.ads.internal.zzw.zzdl().zzjS() || (zzcyVar = this.zzHm.get()) == null) {
            return;
        }
        zzcyVar.zzdY();
    }

    @Override // com.google.android.gms.internal.zzhh
    public void zzd(String str, IObjectWrapper iObjectWrapper) {
        View view = (View) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        synchronized (this.zzrJ) {
            if (this.zzHh == null) {
                return;
            }
            if (view == null) {
                this.zzHh.remove(str);
            } else {
                this.zzHh.put(str, new WeakReference<>(view));
                if ("1098".equals(str)) {
                    return;
                }
                view.setOnTouchListener(this);
                view.setClickable(true);
                view.setOnClickListener(this);
            }
        }
    }

    Point zze(MotionEvent motionEvent) {
        int[] iArr = new int[2];
        this.zzHg.getLocationOnScreen(iArr);
        return new Point((int) (motionEvent.getRawX() - iArr[0]), (int) (motionEvent.getRawY() - iArr[1]));
    }

    @Override // com.google.android.gms.internal.zzhh
    public void zze(IObjectWrapper iObjectWrapper) {
        synchronized (this.zzrJ) {
            zzj(null);
            Object zzF = com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
            if (!(zzF instanceof zzhb)) {
                zzpk.zzbh("Not an instance of native engine. This is most likely a transient error");
                return;
            }
            if (this.zzrY != null) {
                this.zzrY.setLayoutParams(new FrameLayout.LayoutParams(0, 0));
                this.zzHg.requestLayout();
            }
            this.zzHj = true;
            final zzhb zzhbVar = (zzhb) zzF;
            if (this.zzGA != null && zzgd.zzEp.get().booleanValue()) {
                this.zzGA.zzc(this.zzHg, this.zzHh);
            }
            zzgj();
            if (!(this.zzGA instanceof zzgz) || !((zzgz) this.zzGA).zzfZ()) {
                this.zzGA = zzhbVar;
                if (zzhbVar instanceof zzgz) {
                    ((zzgz) zzhbVar).zzc(null);
                }
            } else {
                ((zzgz) this.zzGA).zzc(zzhbVar);
            }
            if (zzgd.zzEp.get().booleanValue()) {
                this.zzrY.setClickable(false);
            }
            this.zzrY.removeAllViews();
            zza(zzhbVar);
            zzhbVar.zza(this.zzHg, this.zzHh, this, this);
            zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.internal.zzhe.1
                @Override // java.lang.Runnable
                public void run() {
                    zzqw zzgb = zzhbVar.zzgb();
                    if (zzgb != null && zzhe.this.zzrY != null) {
                        zzhe.this.zzrY.addView(zzgb.getView());
                    }
                    if (!(zzhbVar instanceof zzgz)) {
                        zzhe.this.zzb(zzhbVar);
                    }
                }
            });
            zzj(this.zzHg);
            zzgi();
        }
    }

    void zzgi() {
        if (!(this.zzGA instanceof zzhb)) {
            return;
        }
        zzhb zzhbVar = (zzhb) this.zzGA;
        if (!com.google.android.gms.ads.internal.zzw.zzdl().zzjS() || zzhbVar == null || zzhbVar.getContext() == null) {
            return;
        }
        zzcy zzcyVar = this.zzHm.get();
        if (zzcyVar == null) {
            zzcyVar = new zzcy(this.zzHg.getContext(), this.zzHg);
            this.zzHm = new WeakReference<>(zzcyVar);
        }
        zzcyVar.zza(zzhbVar.zzgg());
    }

    void zzgj() {
        if (!(this.zzGA instanceof zzhb)) {
            return;
        }
        zzhb zzhbVar = (zzhb) this.zzGA;
        if (!com.google.android.gms.ads.internal.zzw.zzdl().zzjS() || zzhbVar == null || zzhbVar.getContext() == null) {
            return;
        }
        zzov zzgg = zzhbVar.zzgg();
        if (zzgg != null) {
            zzgg.zzC(false);
        }
        zzcy zzcyVar = this.zzHm.get();
        if (zzcyVar == null || zzgg == null) {
            return;
        }
        zzcyVar.zzb(zzgg);
    }

    void zzj(View view) {
        if (this.zzGA != null) {
            zzha zzga = this.zzGA instanceof zzgz ? ((zzgz) this.zzGA).zzga() : this.zzGA;
            if (zzga == null) {
                return;
            }
            zzga.zzj(view);
        }
    }

    AdChoicesView zzp(Context context) {
        return new AdChoicesView(context);
    }
}
