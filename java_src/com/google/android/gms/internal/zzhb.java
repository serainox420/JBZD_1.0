package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.common.util.UriUtil;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzha;
import com.google.android.gms.internal.zzhf;
import com.google.android.gms.internal.zzlw;
import com.google.android.gms.internal.zzqx;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.mdotm.android.constants.MdotMConstants;
import com.openx.view.mraid.JSInterface;
import com.pubmatic.sdk.common.CommonConstants;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzhb implements zzha {
    private final Context mContext;
    private final com.google.android.gms.ads.internal.zzs zzGJ;
    private final JSONObject zzGM;
    private final zzlw zzGN;
    private final zzha.zza zzGO;
    private final zzaw zzGP;
    boolean zzGQ;
    private String zzGR;
    private zzov zztF;
    private final zzqh zztt;
    private final Object zzrJ = new Object();
    private WeakReference<View> zzGS = null;

    /* loaded from: classes2.dex */
    private static class zza {
        private final WeakReference<zzqw> zzGU;
        private String zzGV;

        public zza(zzqw zzqwVar) {
            this.zzGU = new WeakReference<>(zzqwVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public zzid zzf(final zzjj zzjjVar) {
            return new zzid() { // from class: com.google.android.gms.internal.zzhb.zza.1
                @Override // com.google.android.gms.internal.zzid
                public void zza(zzqw zzqwVar, final Map<String, String> map) {
                    zzqw zzqwVar2 = (zzqw) zza.this.zzGU.get();
                    if (zzqwVar2 == null) {
                        zzjjVar.zzb("/loadHtml", this);
                        return;
                    }
                    zzqwVar2.zzlv().zza(new zzqx.zza() { // from class: com.google.android.gms.internal.zzhb.zza.1.1
                        @Override // com.google.android.gms.internal.zzqx.zza
                        public void zza(zzqw zzqwVar3, boolean z) {
                            zza.this.zzGV = (String) map.get("id");
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject.put("messageType", "htmlLoaded");
                                jSONObject.put("id", zza.this.zzGV);
                                zzjjVar.zzb("sendMessageToNativeJs", jSONObject);
                            } catch (JSONException e) {
                                zzpk.zzb("Unable to dispatch sendMessageToNativeJs event", e);
                            }
                        }
                    });
                    String str = map.get("overlayHtml");
                    String str2 = map.get("baseUrl");
                    if (TextUtils.isEmpty(str2)) {
                        zzqwVar2.loadData(str, "text/html", "UTF-8");
                    } else {
                        zzqwVar2.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
                    }
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public zzid zzg(final zzjj zzjjVar) {
            return new zzid() { // from class: com.google.android.gms.internal.zzhb.zza.2
                @Override // com.google.android.gms.internal.zzid
                public void zza(zzqw zzqwVar, Map<String, String> map) {
                    zzqw zzqwVar2 = (zzqw) zza.this.zzGU.get();
                    if (zzqwVar2 == null) {
                        zzjjVar.zzb("/showOverlay", this);
                    } else {
                        zzqwVar2.getView().setVisibility(0);
                    }
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public zzid zzh(final zzjj zzjjVar) {
            return new zzid() { // from class: com.google.android.gms.internal.zzhb.zza.3
                @Override // com.google.android.gms.internal.zzid
                public void zza(zzqw zzqwVar, Map<String, String> map) {
                    zzqw zzqwVar2 = (zzqw) zza.this.zzGU.get();
                    if (zzqwVar2 == null) {
                        zzjjVar.zzb("/hideOverlay", this);
                    } else {
                        zzqwVar2.getView().setVisibility(8);
                    }
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public zzid zzi(final zzjj zzjjVar) {
            return new zzid() { // from class: com.google.android.gms.internal.zzhb.zza.4
                @Override // com.google.android.gms.internal.zzid
                public void zza(zzqw zzqwVar, Map<String, String> map) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        for (String str : map.keySet()) {
                            jSONObject.put(str, map.get(str));
                        }
                        jSONObject.put("id", zza.this.zzGV);
                        zzjjVar.zzb("sendMessageToNativeJs", jSONObject);
                    } catch (JSONException e) {
                        zzpk.zzb("Unable to dispatch sendMessageToNativeJs event", e);
                    }
                }
            };
        }

        public zzlw.zza zzgh() {
            return new zzlw.zza() { // from class: com.google.android.gms.internal.zzhb.zza.5
                @Override // com.google.android.gms.internal.zzlw.zza
                public void zze(zzjj zzjjVar) {
                    zzqw zzqwVar = (zzqw) zza.this.zzGU.get();
                    if (zzqwVar == null) {
                        return;
                    }
                    zzjjVar.zza("/loadHtml", zza.this.zzf(zzjjVar));
                    zzjjVar.zza("/showOverlay", zza.this.zzg(zzjjVar));
                    zzjjVar.zza("/hideOverlay", zza.this.zzh(zzjjVar));
                    zzqwVar.zzlv().zza("/sendMessageToSdk", zza.this.zzi(zzjjVar));
                }
            };
        }
    }

    public zzhb(Context context, com.google.android.gms.ads.internal.zzs zzsVar, zzlw zzlwVar, zzaw zzawVar, JSONObject jSONObject, zzha.zza zzaVar, zzqh zzqhVar, String str) {
        this.mContext = context;
        this.zzGJ = zzsVar;
        this.zzGN = zzlwVar;
        this.zzGP = zzawVar;
        this.zzGM = jSONObject;
        this.zzGO = zzaVar;
        this.zztt = zzqhVar;
        this.zzGR = str;
    }

    private JSONObject zza(Map<String, WeakReference<View>> map, View view) {
        JSONObject jSONObject = new JSONObject();
        if (map == null || view == null) {
            return jSONObject;
        }
        try {
            int[] zzk = zzk(view);
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view2 = entry.getValue().get();
                if (view2 != null) {
                    int[] zzk2 = zzk(view2);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("width", zzC(zzl(view2)));
                    jSONObject2.put("height", zzC(zzm(view2)));
                    jSONObject2.put(JSInterface.JSON_X, zzC(zzk2[0] - zzk[0]));
                    jSONObject2.put(JSInterface.JSON_Y, zzC(zzk2[1] - zzk[1]));
                    jSONObject.put(entry.getKey(), jSONObject2);
                }
            }
        } catch (JSONException e) {
            zzpk.zzbh("Unable to get all view rectangles");
        }
        return jSONObject;
    }

    private JSONObject zzb(Rect rect) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(JSInterface.JSON_X, zzC(rect.left));
        jSONObject.put(JSInterface.JSON_Y, zzC(rect.top));
        jSONObject.put("width", zzC(rect.right - rect.left));
        jSONObject.put("height", zzC(rect.bottom - rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }

    private JSONObject zzb(Map<String, WeakReference<View>> map, View view) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (map == null || view == null) {
            return jSONObject2;
        }
        int[] zzk = zzk(view);
        for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
            View view2 = entry.getValue().get();
            if (view2 != null) {
                int[] zzk2 = zzk(view2);
                JSONObject jSONObject3 = new JSONObject();
                JSONObject jSONObject4 = new JSONObject();
                try {
                    jSONObject4.put("width", zzC(zzl(view2)));
                    jSONObject4.put("height", zzC(zzm(view2)));
                    jSONObject4.put(JSInterface.JSON_X, zzC(zzk2[0] - zzk[0]));
                    jSONObject4.put(JSInterface.JSON_Y, zzC(zzk2[1] - zzk[1]));
                    jSONObject4.put("relative_to", "ad_view");
                    jSONObject3.put(MdotMConstants.EXTRA_FRAME, jSONObject4);
                    Rect rect = new Rect();
                    if (view2.getLocalVisibleRect(rect)) {
                        jSONObject = zzb(rect);
                    } else {
                        jSONObject = new JSONObject();
                        jSONObject.put(JSInterface.JSON_X, zzC(zzk2[0] - zzk[0]));
                        jSONObject.put(JSInterface.JSON_Y, zzC(zzk2[1] - zzk[1]));
                        jSONObject.put("width", 0);
                        jSONObject.put("height", 0);
                        jSONObject.put("relative_to", "ad_view");
                    }
                    jSONObject3.put("visible_bounds", jSONObject);
                    if (view2 instanceof TextView) {
                        TextView textView = (TextView) view2;
                        jSONObject3.put("text_color", textView.getCurrentTextColor());
                        jSONObject3.put("font_size", textView.getTextSize());
                        jSONObject3.put(CommonConstants.RESPONSE_TEXT, textView.getText());
                    }
                    jSONObject2.put(entry.getKey(), jSONObject3);
                } catch (JSONException e) {
                    zzpk.zzbh("Unable to get asset views information");
                }
            }
        }
        return jSONObject2;
    }

    private JSONObject zzn(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view != null) {
            try {
                jSONObject.put("width", zzC(zzl(view)));
                jSONObject.put("height", zzC(zzm(view)));
            } catch (Exception e) {
                zzpk.zzbh("Unable to get native ad view bounding box");
            }
        }
        return jSONObject;
    }

    private JSONObject zzo(View view) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (view != null) {
            try {
                int[] zzk = zzk(view);
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("width", zzC(zzl(view)));
                jSONObject3.put("height", zzC(zzm(view)));
                jSONObject3.put(JSInterface.JSON_X, zzC(zzk[0]));
                jSONObject3.put(JSInterface.JSON_Y, zzC(zzk[1]));
                jSONObject3.put("relative_to", "window");
                jSONObject2.put(MdotMConstants.EXTRA_FRAME, jSONObject3);
                Rect rect = new Rect();
                if (view.getGlobalVisibleRect(rect)) {
                    jSONObject = zzb(rect);
                } else {
                    jSONObject = new JSONObject();
                    jSONObject.put(JSInterface.JSON_X, zzC(zzk[0]));
                    jSONObject.put(JSInterface.JSON_Y, zzC(zzk[1]));
                    jSONObject.put("width", 0);
                    jSONObject.put("height", 0);
                    jSONObject.put("relative_to", "window");
                }
                jSONObject2.put("visible_bounds", jSONObject);
            } catch (Exception e) {
                zzpk.zzbh("Unable to get native ad view bounding box");
            }
        }
        return jSONObject2;
    }

    @Override // com.google.android.gms.internal.zzha
    public Context getContext() {
        return this.mContext;
    }

    int zzC(int i) {
        return zzel.zzeT().zzc(this.mContext, i);
    }

    @Override // com.google.android.gms.internal.zzha
    public View zza(View.OnClickListener onClickListener, boolean z) {
        zzgs zzfT = this.zzGO.zzfT();
        if (zzfT == null) {
            return null;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (!z) {
            switch (zzfT.zzfN()) {
                case 0:
                    layoutParams.addRule(10);
                    layoutParams.addRule(9);
                    break;
                case 1:
                default:
                    layoutParams.addRule(10);
                    layoutParams.addRule(11);
                    break;
                case 2:
                    layoutParams.addRule(12);
                    layoutParams.addRule(11);
                    break;
                case 3:
                    layoutParams.addRule(12);
                    layoutParams.addRule(9);
                    break;
            }
        }
        zzgt zzgtVar = new zzgt(this.mContext, zzfT, layoutParams);
        zzgtVar.setOnClickListener(onClickListener);
        zzgtVar.setContentDescription(zzgd.zzEu.get());
        return zzgtVar;
    }

    @Override // com.google.android.gms.internal.zzha
    public void zza(View view, zzgy zzgyVar) {
        zzhf zze;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        View zzfU = this.zzGO.zzfU();
        if (zzfU != null) {
            ViewParent parent = zzfU.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(zzfU);
            }
            ((FrameLayout) view).addView(zzfU, layoutParams);
            this.zzGJ.zza(zzgyVar);
        } else if (!(this.zzGO instanceof zzha.zzb)) {
        } else {
            zzha.zzb zzbVar = (zzha.zzb) this.zzGO;
            if (zzbVar.getImages() == null || zzbVar.getImages().size() <= 0 || (zze = zze(zzbVar.getImages().get(0))) == null) {
                return;
            }
            try {
                IObjectWrapper zzfP = zze.zzfP();
                if (zzfP == null) {
                    return;
                }
                ImageView zzgf = zzgf();
                zzgf.setImageDrawable((Drawable) com.google.android.gms.dynamic.zzd.zzF(zzfP));
                zzgf.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                ((FrameLayout) view).addView(zzgf, layoutParams);
            } catch (RemoteException e) {
                zzpk.zzbh("Could not get drawable from image");
            }
        }
    }

    @Override // com.google.android.gms.internal.zzha
    public void zza(View view, String str, JSONObject jSONObject, Map<String, WeakReference<View>> map, View view2) {
        com.google.android.gms.common.internal.zzac.zzdj("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(UriUtil.LOCAL_ASSET_SCHEME, str);
            jSONObject2.put("template", this.zzGO.zzfS());
            final JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(AdDatabaseHelper.TABLE_AD, this.zzGM);
            jSONObject3.put("click", jSONObject2);
            jSONObject3.put("has_custom_click_handler", this.zzGJ.zzz(this.zzGO.getCustomTemplateId()) != null);
            if (zzgd.zzEw.get().booleanValue()) {
                if (zzgd.zzEx.get().booleanValue()) {
                    jSONObject3.put("asset_view_signal", zzb(map, view2));
                    jSONObject3.put("ad_view_signal", zzo(view2));
                } else {
                    jSONObject3.put("view_rectangles", zza(map, view2));
                    jSONObject3.put("native_view_rectangle", zzn(view2));
                }
            }
            if (jSONObject != null) {
                jSONObject3.put("click_point", jSONObject);
            }
            try {
                JSONObject optJSONObject = this.zzGM.optJSONObject("tracking_urls_and_actions");
                if (optJSONObject == null) {
                    optJSONObject = new JSONObject();
                }
                jSONObject2.put("click_signals", this.zzGP.zzT().zza(this.mContext, optJSONObject.optString("click_string"), view));
            } catch (Exception e) {
                zzpk.zzb("Exception obtaining click signals", e);
            }
            jSONObject3.put("ads_id", this.zzGR);
            this.zzGN.zza(new zzlw.zza(this) { // from class: com.google.android.gms.internal.zzhb.1
                @Override // com.google.android.gms.internal.zzlw.zza
                public void zze(zzjj zzjjVar) {
                    zzjjVar.zza("google.afma.nativeAds.handleClickGmsg", jSONObject3);
                }
            });
        } catch (JSONException e2) {
            zzpk.zzb("Unable to create click JSON.", e2);
        }
    }

    public void zza(View view, Map<String, WeakReference<View>> map, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        if (!zzgd.zzEr.get().booleanValue()) {
            return;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        if (map == null) {
            return;
        }
        for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
            View view2 = entry.getValue().get();
            if (view2 != null) {
                view2.setOnTouchListener(onTouchListener);
                view2.setClickable(true);
                view2.setOnClickListener(onClickListener);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzha
    public void zza(View view, Map<String, WeakReference<View>> map, JSONObject jSONObject, View view2) {
        com.google.android.gms.common.internal.zzac.zzdj("performClick must be called on the main UI thread.");
        if (map != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                if (view.equals(entry.getValue().get())) {
                    zza(view, entry.getKey(), jSONObject, map, view2);
                    return;
                }
            }
        }
        if ("2".equals(this.zzGO.zzfS())) {
            zza(view, "2099", jSONObject, map, view2);
        } else if ("1".equals(this.zzGO.zzfS())) {
            zza(view, "1099", jSONObject, map, view2);
        }
    }

    @Override // com.google.android.gms.internal.zzha
    public void zzb(View view, Map<String, WeakReference<View>> map) {
        com.google.android.gms.common.internal.zzac.zzdj("recordImpression must be called on the main UI thread.");
        zzq(true);
        try {
            final JSONObject jSONObject = new JSONObject();
            jSONObject.put(AdDatabaseHelper.TABLE_AD, this.zzGM);
            jSONObject.put("ads_id", this.zzGR);
            if (zzgd.zzEw.get().booleanValue()) {
                if (zzgd.zzEx.get().booleanValue()) {
                    jSONObject.put("asset_view_signal", zzb(map, view));
                    jSONObject.put("ad_view_signal", zzo(view));
                } else {
                    jSONObject.put("view_rectangles", zza(map, view));
                    jSONObject.put("native_view_rectangle", zzn(view));
                }
            }
            this.zzGN.zza(new zzlw.zza(this) { // from class: com.google.android.gms.internal.zzhb.2
                @Override // com.google.android.gms.internal.zzlw.zza
                public void zze(zzjj zzjjVar) {
                    zzjjVar.zza("google.afma.nativeAds.handleImpressionPing", jSONObject);
                }
            });
        } catch (JSONException e) {
            zzpk.zzb("Unable to create impression JSON.", e);
        }
        this.zzGJ.zza(this);
        this.zzGJ.zzbL();
    }

    @Override // com.google.android.gms.internal.zzha
    public void zzc(View view, Map<String, WeakReference<View>> map) {
        if (zzgd.zzEq.get().booleanValue()) {
            return;
        }
        view.setOnTouchListener(null);
        view.setClickable(false);
        view.setOnClickListener(null);
        if (map == null) {
            return;
        }
        for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
            View view2 = entry.getValue().get();
            if (view2 != null) {
                view2.setOnTouchListener(null);
                view2.setClickable(false);
                view2.setOnClickListener(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzha
    public void zzd(MotionEvent motionEvent) {
        this.zzGP.zza(motionEvent);
    }

    @Override // com.google.android.gms.internal.zzha
    public void zzd(View view, Map<String, WeakReference<View>> map) {
        synchronized (this.zzrJ) {
            if (this.zzGQ) {
                return;
            }
            if (!view.isShown()) {
                return;
            }
            if (!view.getGlobalVisibleRect(new Rect(), null)) {
                return;
            }
            zzb(view, map);
        }
    }

    zzhf zze(Object obj) {
        if (obj instanceof IBinder) {
            return zzhf.zza.zzB((IBinder) obj);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzha
    public boolean zzfY() {
        zzgs zzfT = this.zzGO.zzfT();
        return zzfT != null && zzfT.zzfO();
    }

    public zzqw zzgb() {
        if (this.zzGM == null || this.zzGM.optJSONObject("overlay") == null) {
            return null;
        }
        zzqw zzge = zzge();
        zzge.getView().setVisibility(8);
        this.zzGN.zza(new zza(zzge).zzgh());
        return zzge;
    }

    @Override // com.google.android.gms.internal.zzha
    public View zzgc() {
        if (this.zzGS != null) {
            return this.zzGS.get();
        }
        return null;
    }

    public void zzgd() {
        this.zzGJ.zzcv();
    }

    zzqw zzge() {
        return com.google.android.gms.ads.internal.zzw.zzcN().zza(this.mContext, zzeg.zzk(this.mContext), false, false, this.zzGP, this.zztt);
    }

    ImageView zzgf() {
        return new ImageView(this.mContext);
    }

    public zzov zzgg() {
        if (com.google.android.gms.ads.internal.zzw.zzdl().zzjS()) {
            if (this.zztF == null) {
                this.zztF = new zzov(this.mContext, this.zzGJ.getAdUnitId());
            }
            return this.zztF;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzha
    public void zzj(View view) {
        this.zzGS = new WeakReference<>(view);
    }

    int[] zzk(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr;
    }

    int zzl(View view) {
        return view.getMeasuredWidth();
    }

    int zzm(View view) {
        return view.getMeasuredHeight();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzq(boolean z) {
        this.zzGQ = z;
    }
}
