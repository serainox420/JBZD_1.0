package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Looper;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.facebook.GraphResponse;
import com.facebook.common.util.UriUtil;
import com.google.android.gms.internal.zzha;
import com.google.android.gms.internal.zzlw;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzpv;
import com.google.android.gms.internal.zzql;
import com.madsdk.AdView;
import com.pubmatic.sdk.common.CommonConstants;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzlx implements Callable<zzpb> {
    static long zzQl = TimeUnit.SECONDS.toMillis(60);
    private final Context mContext;
    private final zzlw zzGN;
    private final zzaw zzGP;
    private final zzpb.zza zzPR;
    private int zzPY;
    private final zzpv zzQu;
    private final com.google.android.gms.ads.internal.zzs zzQv;
    private boolean zzQw;
    private List<String> zzQx;
    private JSONObject zzQy;
    private String zzQz;
    private final Object zzrJ = new Object();
    private final zzgl zzsn;

    /* loaded from: classes2.dex */
    public interface zza<T extends zzha.zza> {
        T zza(zzlx zzlxVar, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class zzb {
        public zzid zzQU;

        zzb(zzlx zzlxVar) {
        }
    }

    public zzlx(Context context, com.google.android.gms.ads.internal.zzs zzsVar, zzpv zzpvVar, zzaw zzawVar, zzpb.zza zzaVar, zzgl zzglVar) {
        this.mContext = context;
        this.zzQv = zzsVar;
        this.zzQu = zzpvVar;
        this.zzPR = zzaVar;
        this.zzGP = zzawVar;
        this.zzsn = zzglVar;
        this.zzGN = zza(context, zzaVar, zzsVar, zzawVar);
        this.zzGN.zziT();
        this.zzQw = false;
        this.zzPY = -2;
        this.zzQx = null;
        this.zzQz = null;
    }

    private zzha.zza zza(zza zzaVar, JSONObject jSONObject, String str) throws ExecutionException, InterruptedException, JSONException {
        if (zzjf() || zzaVar == null || jSONObject == null) {
            return null;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject("tracking_urls_and_actions");
        String[] zzd = zzd(jSONObject2, "impression_tracking_urls");
        this.zzQx = zzd == null ? null : Arrays.asList(zzd);
        this.zzQy = jSONObject2.optJSONObject("active_view");
        this.zzQz = jSONObject.optString("debug_signals");
        zzha.zza zza2 = zzaVar.zza(this, jSONObject);
        if (zza2 == null) {
            zzpk.e("Failed to retrieve ad assets.");
            return null;
        }
        zza2.zzb(new zzhb(this.mContext, this.zzQv, this.zzGN, this.zzGP, jSONObject, zza2, this.zzPR.zzTi.zzvn, str));
        return zza2;
    }

    private zzqm<zzgu> zza(JSONObject jSONObject, final boolean z, boolean z2) throws JSONException {
        final String string = z ? jSONObject.getString("url") : jSONObject.optString("url");
        final double optDouble = jSONObject.optDouble("scale", 1.0d);
        final boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        if (!TextUtils.isEmpty(string)) {
            return z2 ? new zzqk(new zzgu(null, Uri.parse(string), optDouble)) : this.zzQu.zza(string, new zzpv.zza<zzgu>() { // from class: com.google.android.gms.internal.zzlx.6
                @Override // com.google.android.gms.internal.zzpv.zza
                @TargetApi(19)
                /* renamed from: zzg */
                public zzgu zzh(InputStream inputStream) {
                    Bitmap bitmap;
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inDensity = (int) (160.0d * optDouble);
                    if (!optBoolean) {
                        options.inPreferredConfig = Bitmap.Config.RGB_565;
                    }
                    long uptimeMillis = SystemClock.uptimeMillis();
                    try {
                        bitmap = BitmapFactory.decodeStream(inputStream, null, options);
                    } catch (Exception e) {
                        zzpk.zzb("Error grabbing image.", e);
                        bitmap = null;
                    }
                    if (bitmap == null) {
                        zzlx.this.zza(2, z);
                        return null;
                    }
                    long uptimeMillis2 = SystemClock.uptimeMillis();
                    if (com.google.android.gms.common.util.zzt.zzzl() && zzpk.zzkI()) {
                        int width = bitmap.getWidth();
                        zzpk.v(new StringBuilder(108).append("Decoded image w: ").append(width).append(" h:").append(bitmap.getHeight()).append(" bytes: ").append(bitmap.getAllocationByteCount()).append(" time: ").append(uptimeMillis2 - uptimeMillis).append(" on ui thread: ").append(Looper.getMainLooper().getThread() == Thread.currentThread()).toString());
                    }
                    return new zzgu(new BitmapDrawable(Resources.getSystem(), bitmap), Uri.parse(string), optDouble);
                }

                @Override // com.google.android.gms.internal.zzpv.zza
                /* renamed from: zzjh */
                public zzgu zzji() {
                    zzlx.this.zza(2, z);
                    return null;
                }
            });
        }
        zza(0, z);
        return new zzqk(null);
    }

    private void zza(zzha.zza zzaVar) {
        if (!(zzaVar instanceof zzgx)) {
            return;
        }
        final zzgx zzgxVar = (zzgx) zzaVar;
        zzb zzbVar = new zzb(this);
        final zzid zzidVar = new zzid() { // from class: com.google.android.gms.internal.zzlx.3
            @Override // com.google.android.gms.internal.zzid
            public void zza(zzqw zzqwVar, Map<String, String> map) {
                zzlx.this.zzb(zzgxVar, map.get(UriUtil.LOCAL_ASSET_SCHEME));
            }
        };
        zzbVar.zzQU = zzidVar;
        this.zzGN.zza(new zzlw.zza(this) { // from class: com.google.android.gms.internal.zzlx.4
            @Override // com.google.android.gms.internal.zzlw.zza
            public void zze(zzjj zzjjVar) {
                zzjjVar.zza("/nativeAdCustomClick", zzidVar);
            }
        });
    }

    private JSONObject zzaH(final String str) throws ExecutionException, InterruptedException, TimeoutException, JSONException {
        if (zzjf()) {
            return null;
        }
        final zzqj zzqjVar = new zzqj();
        final zzb zzbVar = new zzb(this);
        this.zzGN.zza(new zzlw.zza() { // from class: com.google.android.gms.internal.zzlx.1
            @Override // com.google.android.gms.internal.zzlw.zza
            public void zze(final zzjj zzjjVar) {
                zzid zzidVar = new zzid() { // from class: com.google.android.gms.internal.zzlx.1.1
                    @Override // com.google.android.gms.internal.zzid
                    public void zza(zzqw zzqwVar, Map<String, String> map) {
                        JSONObject jSONObject;
                        boolean z;
                        try {
                            String str2 = map.get(GraphResponse.SUCCESS_KEY);
                            String str3 = map.get("failure");
                            if (!TextUtils.isEmpty(str3)) {
                                jSONObject = new JSONObject(str3);
                                z = false;
                            } else {
                                jSONObject = new JSONObject(str2);
                                z = true;
                            }
                        } catch (JSONException e) {
                            zzpk.zzb("Malformed native JSON response.", e);
                        }
                        if (!str.equals(jSONObject.optString("ads_id", ""))) {
                            return;
                        }
                        zzjjVar.zzb("/nativeAdPreProcess", zzbVar.zzQU);
                        if (z) {
                            JSONArray optJSONArray = jSONObject.optJSONArray("ads");
                            if (optJSONArray != null && optJSONArray.length() > 0) {
                                zzqjVar.zzh(optJSONArray.getJSONObject(0));
                                return;
                            }
                            zzlx.this.zzU(3);
                            zzqjVar.zzh(null);
                            return;
                        }
                        zzlx.this.zzU(0);
                        com.google.android.gms.common.internal.zzac.zza(zzlx.this.zzjf(), "Unable to set the ad state error!");
                        zzqjVar.zzh(null);
                    }
                };
                zzbVar.zzQU = zzidVar;
                zzjjVar.zza("/nativeAdPreProcess", zzidVar);
                try {
                    JSONObject jSONObject = new JSONObject(zzlx.this.zzPR.zzWm.body);
                    jSONObject.put("ads_id", str);
                    zzjjVar.zza("google.afma.nativeAds.preProcessJsonGmsg", jSONObject);
                } catch (JSONException e) {
                    zzpk.zzc("Exception occurred while invoking javascript", e);
                    zzqjVar.zzh(null);
                }
            }

            @Override // com.google.android.gms.internal.zzlw.zza
            public void zzjd() {
                zzqjVar.zzh(null);
            }
        });
        return (JSONObject) zzqjVar.get(zzQl, TimeUnit.MILLISECONDS);
    }

    private zzpb zzb(zzha.zza zzaVar) {
        int i;
        synchronized (this.zzrJ) {
            i = this.zzPY;
            if (zzaVar == null && this.zzPY == -2) {
                i = 0;
            }
        }
        return new zzpb(this.zzPR.zzTi.zzRy, null, this.zzPR.zzWm.zzKF, i, this.zzPR.zzWm.zzKG, this.zzQx, this.zzPR.zzWm.orientation, this.zzPR.zzWm.zzKL, this.zzPR.zzTi.zzRB, false, null, null, null, null, null, 0L, this.zzPR.zzvr, this.zzPR.zzWm.zzSm, this.zzPR.zzWg, this.zzPR.zzWh, this.zzPR.zzWm.zzSs, this.zzQy, i != -2 ? null : zzaVar, null, null, null, this.zzPR.zzWm.zzSF, this.zzPR.zzWm.zzSG, null, this.zzPR.zzWm.zzKI, this.zzQz);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzqw zzb(zzqm<zzqw> zzqmVar) {
        try {
            return zzqmVar.get(zzgd.zzEs.get().intValue(), TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            zzpk.zzc("InterruptedException occurred while waiting for video to load", e);
            Thread.currentThread().interrupt();
            return null;
        } catch (CancellationException e2) {
            e = e2;
            zzpk.zzc("Exception occurred while waiting for video to load", e);
            return null;
        } catch (ExecutionException e3) {
            e = e3;
            zzpk.zzc("Exception occurred while waiting for video to load", e);
            return null;
        } catch (TimeoutException e4) {
            e = e4;
            zzpk.zzc("Exception occurred while waiting for video to load", e);
            return null;
        }
    }

    private Integer zzb(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzb(zzhn zzhnVar, String str) {
        try {
            zzhr zzz = this.zzQv.zzz(zzhnVar.getCustomTemplateId());
            if (zzz == null) {
                return;
            }
            zzz.zza(zzhnVar, str);
        } catch (RemoteException e) {
            zzpk.zzc(new StringBuilder(String.valueOf(str).length() + 40).append("Failed to call onCustomClick for asset ").append(str).append(".").toString(), e);
        }
    }

    private String[] zzd(JSONObject jSONObject, String str) throws JSONException {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return null;
        }
        String[] strArr = new String[optJSONArray.length()];
        for (int i = 0; i < optJSONArray.length(); i++) {
            strArr[i] = optJSONArray.getString(i);
        }
        return strArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<Drawable> zzh(List<zzgu> list) throws RemoteException {
        ArrayList arrayList = new ArrayList();
        for (zzgu zzguVar : list) {
            arrayList.add((Drawable) com.google.android.gms.dynamic.zzd.zzF(zzguVar.zzfP()));
        }
        return arrayList;
    }

    public void zzU(int i) {
        synchronized (this.zzrJ) {
            this.zzQw = true;
            this.zzPY = i;
        }
    }

    zzlw zza(Context context, zzpb.zza zzaVar, com.google.android.gms.ads.internal.zzs zzsVar, zzaw zzawVar) {
        return new zzlw(context, zzaVar, zzsVar, zzawVar);
    }

    zzly zza(Context context, zzaw zzawVar, zzpb.zza zzaVar, zzgl zzglVar, com.google.android.gms.ads.internal.zzs zzsVar) {
        return new zzly(context, zzawVar, zzaVar, zzglVar, zzsVar);
    }

    public zzqm<zzgu> zza(JSONObject jSONObject, String str, boolean z, boolean z2) throws JSONException {
        JSONObject jSONObject2 = z ? jSONObject.getJSONObject(str) : jSONObject.optJSONObject(str);
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        return zza(jSONObject2, z, z2);
    }

    public List<zzqm<zzgu>> zza(JSONObject jSONObject, String str, boolean z, boolean z2, boolean z3) throws JSONException {
        JSONArray jSONArray = z ? jSONObject.getJSONArray(str) : jSONObject.optJSONArray(str);
        ArrayList arrayList = new ArrayList();
        if (jSONArray == null || jSONArray.length() == 0) {
            zza(0, z);
            return arrayList;
        }
        int length = z3 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            if (jSONObject2 == null) {
                jSONObject2 = new JSONObject();
            }
            arrayList.add(zza(jSONObject2, z, z2));
        }
        return arrayList;
    }

    public Future<zzgu> zza(JSONObject jSONObject, String str, boolean z) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONObject(str);
        boolean optBoolean = jSONObject2.optBoolean("require", true);
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        return zza(jSONObject2, optBoolean, z);
    }

    public void zza(int i, boolean z) {
        if (z) {
            zzU(i);
        }
    }

    protected zza zzc(JSONObject jSONObject) throws ExecutionException, InterruptedException, JSONException, TimeoutException {
        if (zzjf() || jSONObject == null) {
            return null;
        }
        String string = jSONObject.getString("template_id");
        boolean z = this.zzPR.zzTi.zzvF != null ? this.zzPR.zzTi.zzvF.zzHa : false;
        boolean z2 = this.zzPR.zzTi.zzvF != null ? this.zzPR.zzTi.zzvF.zzHc : false;
        if ("2".equals(string)) {
            return new zzlz(z, z2);
        }
        if ("1".equals(string)) {
            return new zzma(z, z2);
        }
        if ("3".equals(string)) {
            final String string2 = jSONObject.getString("custom_template_id");
            final zzqj zzqjVar = new zzqj();
            zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.internal.zzlx.2
                @Override // java.lang.Runnable
                public void run() {
                    zzqjVar.zzh(zzlx.this.zzQv.zzcu().get(string2));
                }
            });
            if (zzqjVar.get(zzQl, TimeUnit.MILLISECONDS) != null) {
                return new zzmb(z);
            }
            String valueOf = String.valueOf(jSONObject.getString("custom_template_id"));
            zzpk.e(valueOf.length() != 0 ? "No handler for custom template: ".concat(valueOf) : new String("No handler for custom template: "));
        } else {
            zzU(0);
        }
        return null;
    }

    public zzqm<zzqw> zzc(JSONObject jSONObject, String str) throws JSONException {
        JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject == null) {
            return new zzqk(null);
        }
        if (!TextUtils.isEmpty(optJSONObject.optString("vast_xml"))) {
            return zza(this.mContext, this.zzGP, this.zzPR, this.zzsn, this.zzQv).zze(optJSONObject);
        }
        zzpk.zzbh("Required field 'vast_xml' is missing");
        return new zzqk(null);
    }

    public zzqm<zzgs> zzd(JSONObject jSONObject) throws JSONException {
        JSONObject optJSONObject = jSONObject.optJSONObject("attribution");
        if (optJSONObject == null) {
            return new zzqk(null);
        }
        final String optString = optJSONObject.optString(CommonConstants.RESPONSE_TEXT);
        final int optInt = optJSONObject.optInt("text_size", -1);
        final Integer zzb2 = zzb(optJSONObject, "text_color");
        final Integer zzb3 = zzb(optJSONObject, "bg_color");
        final int optInt2 = optJSONObject.optInt("animation_ms", 1000);
        final int optInt3 = optJSONObject.optInt("presentation_ms", 4000);
        final int i = (this.zzPR.zzTi.zzvF == null || this.zzPR.zzTi.zzvF.versionCode < 2) ? 1 : this.zzPR.zzTi.zzvF.zzHd;
        final boolean optBoolean = optJSONObject.optBoolean("allow_pub_rendering");
        List<zzqm<zzgu>> arrayList = new ArrayList<>();
        if (optJSONObject.optJSONArray("images") != null) {
            arrayList = zza(optJSONObject, "images", false, false, true);
        } else {
            arrayList.add(zza(optJSONObject, AdView.DEFAULT_IMAGE_NAME, false, false));
        }
        return zzql.zza(zzql.zzo(arrayList), new zzql.zza<List<zzgu>, zzgs>(this) { // from class: com.google.android.gms.internal.zzlx.5
            @Override // com.google.android.gms.internal.zzql.zza
            /* renamed from: zzj */
            public zzgs apply(List<zzgu> list) {
                zzgs zzgsVar;
                if (list != null) {
                    try {
                        if (!list.isEmpty()) {
                            zzgsVar = new zzgs(optString, zzlx.zzh(list), zzb3, zzb2, optInt > 0 ? Integer.valueOf(optInt) : null, optInt3 + optInt2, i, optBoolean);
                            return zzgsVar;
                        }
                    } catch (RemoteException e) {
                        zzpk.zzb("Could not get attribution icon", e);
                        return null;
                    }
                }
                zzgsVar = null;
                return zzgsVar;
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    @Override // java.util.concurrent.Callable
    /* renamed from: zzje */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzpb call() {
        try {
            this.zzGN.zziU();
            String zzjg = zzjg();
            JSONObject zzaH = zzaH(zzjg);
            zzha.zza zza2 = zza(zzc(zzaH), zzaH, zzjg);
            zza(zza2);
            return zzb(zza2);
        } catch (InterruptedException e) {
            if (!this.zzQw) {
                zzU(0);
            }
            return zzb((zzha.zza) null);
        } catch (CancellationException e2) {
            if (!this.zzQw) {
            }
            return zzb((zzha.zza) null);
        } catch (ExecutionException e3) {
            if (!this.zzQw) {
            }
            return zzb((zzha.zza) null);
        } catch (TimeoutException e4) {
            zzpk.zzc("Timeout when loading native ad.", e4);
            if (!this.zzQw) {
            }
            return zzb((zzha.zza) null);
        } catch (JSONException e5) {
            zzpk.zzc("Malformed native JSON response.", e5);
            if (!this.zzQw) {
            }
            return zzb((zzha.zza) null);
        }
    }

    public boolean zzjf() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzQw;
        }
        return z;
    }

    String zzjg() {
        return UUID.randomUUID().toString();
    }
}
