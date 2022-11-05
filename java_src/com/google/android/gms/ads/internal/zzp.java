package com.google.android.gms.ads.internal;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.facebook.applinks.AppLinkData;
import com.google.android.gms.ads.internal.zzg;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzgv;
import com.google.android.gms.internal.zzgw;
import com.google.android.gms.internal.zzhf;
import com.google.android.gms.internal.zzid;
import com.google.android.gms.internal.zzjv;
import com.google.android.gms.internal.zzke;
import com.google.android.gms.internal.zzkf;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzqw;
import com.google.android.gms.internal.zzqx;
import com.google.firebase.a.a;
import com.intentsoftware.addapptr.ad.NativeAd;
import com.madsdk.AdView;
import java.io.ByteArrayOutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzp {
    private static zzgv zza(zzke zzkeVar) throws RemoteException {
        return new zzgv(zzkeVar.getHeadline(), zzkeVar.getImages(), zzkeVar.getBody(), zzkeVar.zzfQ(), zzkeVar.getCallToAction(), zzkeVar.getStarRating(), zzkeVar.getStore(), zzkeVar.getPrice(), null, zzkeVar.getExtras(), null, null);
    }

    private static zzgw zza(zzkf zzkfVar) throws RemoteException {
        return new zzgw(zzkfVar.getHeadline(), zzkfVar.getImages(), zzkfVar.getBody(), zzkfVar.zzfV(), zzkfVar.getCallToAction(), zzkfVar.getAdvertiser(), null, zzkfVar.getExtras(), null, null);
    }

    static zzid zza(final zzke zzkeVar, final zzkf zzkfVar, final zzg.zza zzaVar) {
        return new zzid() { // from class: com.google.android.gms.ads.internal.zzp.5
            @Override // com.google.android.gms.internal.zzid
            public void zza(zzqw zzqwVar, Map<String, String> map) {
                View view = zzqwVar.getView();
                if (view == null) {
                    return;
                }
                try {
                    if (zzke.this != null) {
                        if (!zzke.this.getOverrideClickHandling()) {
                            zzke.this.zzl(com.google.android.gms.dynamic.zzd.zzA(view));
                            zzaVar.onClick();
                        } else {
                            zzp.zza(zzqwVar);
                        }
                    } else if (zzkfVar != null) {
                        if (!zzkfVar.getOverrideClickHandling()) {
                            zzkfVar.zzl(com.google.android.gms.dynamic.zzd.zzA(view));
                            zzaVar.onClick();
                        } else {
                            zzp.zza(zzqwVar);
                        }
                    }
                } catch (RemoteException e) {
                    zzpk.zzc("Unable to call handleClick on mapper", e);
                }
            }
        };
    }

    static zzid zza(final CountDownLatch countDownLatch) {
        return new zzid() { // from class: com.google.android.gms.ads.internal.zzp.3
            @Override // com.google.android.gms.internal.zzid
            public void zza(zzqw zzqwVar, Map<String, String> map) {
                countDownLatch.countDown();
                zzqwVar.getView().setVisibility(0);
            }
        };
    }

    private static String zza(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (bitmap == null) {
            zzpk.zzbh("Bitmap is null. Returning empty string");
            return "";
        }
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        String encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
        String valueOf = String.valueOf("data:image/png;base64,");
        String valueOf2 = String.valueOf(encodeToString);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    static String zza(zzhf zzhfVar) {
        if (zzhfVar == null) {
            zzpk.zzbh("Image is null. Returning empty string");
            return "";
        }
        try {
            Uri uri = zzhfVar.getUri();
            if (uri != null) {
                return uri.toString();
            }
        } catch (RemoteException e) {
            zzpk.zzbh("Unable to get image uri. Trying data uri next");
        }
        return zzb(zzhfVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject zza(Bundle bundle, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (bundle == null || TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject(str);
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (bundle.containsKey(next)) {
                if (AdView.DEFAULT_IMAGE_NAME.equals(jSONObject2.getString(next))) {
                    Object obj = bundle.get(next);
                    if (obj instanceof Bitmap) {
                        jSONObject.put(next, zza((Bitmap) obj));
                    } else {
                        zzpk.zzbh("Invalid type. An image type extra should return a bitmap");
                    }
                } else if (bundle.get(next) instanceof Bitmap) {
                    zzpk.zzbh("Invalid asset type. Bitmap should be returned only for image type");
                } else {
                    jSONObject.put(next, String.valueOf(bundle.get(next)));
                }
            }
        }
        return jSONObject;
    }

    public static void zza(zzpb zzpbVar, zzg.zza zzaVar) {
        zzkf zzkfVar = null;
        if (zzpbVar == null || !zzh(zzpbVar)) {
            return;
        }
        zzqw zzqwVar = zzpbVar.zzNH;
        View view = zzqwVar != null ? zzqwVar.getView() : null;
        if (view == null) {
            zzpk.zzbh("AdWebView is null");
            return;
        }
        try {
            List<String> list = zzpbVar.zzLi != null ? zzpbVar.zzLi.zzKB : null;
            if (list == null || list.isEmpty()) {
                zzpk.zzbh("No template ids present in mediation response");
                return;
            }
            zzke zzhc = zzpbVar.zzLj != null ? zzpbVar.zzLj.zzhc() : null;
            if (zzpbVar.zzLj != null) {
                zzkfVar = zzpbVar.zzLj.zzhd();
            }
            if (list.contains("2") && zzhc != null) {
                zzhc.zzm(com.google.android.gms.dynamic.zzd.zzA(view));
                if (!zzhc.getOverrideImpressionRecording()) {
                    zzhc.recordImpression();
                }
                zzqwVar.zzlv().zza("/nativeExpressViewClicked", zza(zzhc, (zzkf) null, zzaVar));
            } else if (!list.contains("1") || zzkfVar == null) {
                zzpk.zzbh("No matching template id and mapper");
            } else {
                zzkfVar.zzm(com.google.android.gms.dynamic.zzd.zzA(view));
                if (!zzkfVar.getOverrideImpressionRecording()) {
                    zzkfVar.recordImpression();
                }
                zzqwVar.zzlv().zza("/nativeExpressViewClicked", zza((zzke) null, zzkfVar, zzaVar));
            }
        } catch (RemoteException e) {
            zzpk.zzc("Error occurred while recording impression and registering for clicks", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(zzqw zzqwVar) {
        View.OnClickListener zzlK = zzqwVar.zzlK();
        if (zzlK != null) {
            zzlK.onClick(zzqwVar.getView());
        }
    }

    private static void zza(final zzqw zzqwVar, final zzgv zzgvVar, final String str) {
        zzqwVar.zzlv().zza(new zzqx.zza() { // from class: com.google.android.gms.ads.internal.zzp.1
            @Override // com.google.android.gms.internal.zzqx.zza
            public void zza(zzqw zzqwVar2, boolean z) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(NativeAd.TITLE_TEXT_ASSET, zzgv.this.getHeadline());
                    jSONObject.put(com.millennialmedia.NativeAd.COMPONENT_ID_BODY, zzgv.this.getBody());
                    jSONObject.put("call_to_action", zzgv.this.getCallToAction());
                    jSONObject.put(a.b.PRICE, zzgv.this.getPrice());
                    jSONObject.put("star_rating", String.valueOf(zzgv.this.getStarRating()));
                    jSONObject.put("store", zzgv.this.getStore());
                    jSONObject.put(NativeAd.ICON_IMAGE_ASSET, zzp.zza(zzgv.this.zzfQ()));
                    JSONArray jSONArray = new JSONArray();
                    List<Object> images = zzgv.this.getImages();
                    if (images != null) {
                        for (Object obj : images) {
                            jSONArray.put(zzp.zza(zzp.zze(obj)));
                        }
                    }
                    jSONObject.put("images", jSONArray);
                    jSONObject.put(AppLinkData.ARGUMENTS_EXTRAS_KEY, zzp.zza(zzgv.this.getExtras(), str));
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("assets", jSONObject);
                    jSONObject2.put("template_id", "2");
                    zzqwVar.zza("google.afma.nativeExpressAds.loadAssets", jSONObject2);
                } catch (JSONException e) {
                    zzpk.zzc("Exception occurred when loading assets", e);
                }
            }
        });
    }

    private static void zza(final zzqw zzqwVar, final zzgw zzgwVar, final String str) {
        zzqwVar.zzlv().zza(new zzqx.zza() { // from class: com.google.android.gms.ads.internal.zzp.2
            @Override // com.google.android.gms.internal.zzqx.zza
            public void zza(zzqw zzqwVar2, boolean z) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(NativeAd.TITLE_TEXT_ASSET, zzgw.this.getHeadline());
                    jSONObject.put(com.millennialmedia.NativeAd.COMPONENT_ID_BODY, zzgw.this.getBody());
                    jSONObject.put("call_to_action", zzgw.this.getCallToAction());
                    jSONObject.put(NativeAd.ADVERTISER_TEXT_ASSET, zzgw.this.getAdvertiser());
                    jSONObject.put("logo", zzp.zza(zzgw.this.zzfV()));
                    JSONArray jSONArray = new JSONArray();
                    List<Object> images = zzgw.this.getImages();
                    if (images != null) {
                        for (Object obj : images) {
                            jSONArray.put(zzp.zza(zzp.zze(obj)));
                        }
                    }
                    jSONObject.put("images", jSONArray);
                    jSONObject.put(AppLinkData.ARGUMENTS_EXTRAS_KEY, zzp.zza(zzgw.this.getExtras(), str));
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("assets", jSONObject);
                    jSONObject2.put("template_id", "1");
                    zzqwVar.zza("google.afma.nativeExpressAds.loadAssets", jSONObject2);
                } catch (JSONException e) {
                    zzpk.zzc("Exception occurred when loading assets", e);
                }
            }
        });
    }

    private static void zza(zzqw zzqwVar, CountDownLatch countDownLatch) {
        zzqwVar.zzlv().zza("/nativeExpressAssetsLoaded", zza(countDownLatch));
        zzqwVar.zzlv().zza("/nativeExpressAssetsLoadingFailed", zzb(countDownLatch));
    }

    public static boolean zza(zzqw zzqwVar, zzjv zzjvVar, CountDownLatch countDownLatch) {
        boolean z = false;
        try {
            z = zzb(zzqwVar, zzjvVar, countDownLatch);
        } catch (RemoteException e) {
            zzpk.zzc("Unable to invoke load assets", e);
        } catch (RuntimeException e2) {
            countDownLatch.countDown();
            throw e2;
        }
        if (!z) {
            countDownLatch.countDown();
        }
        return z;
    }

    static zzid zzb(final CountDownLatch countDownLatch) {
        return new zzid() { // from class: com.google.android.gms.ads.internal.zzp.4
            @Override // com.google.android.gms.internal.zzid
            public void zza(zzqw zzqwVar, Map<String, String> map) {
                zzpk.zzbh("Adapter returned an ad, but assets substitution failed");
                countDownLatch.countDown();
                zzqwVar.destroy();
            }
        };
    }

    private static String zzb(zzhf zzhfVar) {
        String zza;
        try {
            IObjectWrapper zzfP = zzhfVar.zzfP();
            if (zzfP == null) {
                zzpk.zzbh("Drawable is null. Returning empty string");
                zza = "";
            } else {
                Drawable drawable = (Drawable) com.google.android.gms.dynamic.zzd.zzF(zzfP);
                if (!(drawable instanceof BitmapDrawable)) {
                    zzpk.zzbh("Drawable is not an instance of BitmapDrawable. Returning empty string");
                    zza = "";
                } else {
                    zza = zza(((BitmapDrawable) drawable).getBitmap());
                }
            }
            return zza;
        } catch (RemoteException e) {
            zzpk.zzbh("Unable to get drawable. Returning empty string");
            return "";
        }
    }

    private static boolean zzb(zzqw zzqwVar, zzjv zzjvVar, CountDownLatch countDownLatch) throws RemoteException {
        View view = zzqwVar.getView();
        if (view == null) {
            zzpk.zzbh("AdWebView is null");
            return false;
        }
        view.setVisibility(4);
        List<String> list = zzjvVar.zzLi.zzKB;
        if (list == null || list.isEmpty()) {
            zzpk.zzbh("No template ids present in mediation response");
            return false;
        }
        zza(zzqwVar, countDownLatch);
        zzke zzhc = zzjvVar.zzLj.zzhc();
        zzkf zzhd = zzjvVar.zzLj.zzhd();
        if (list.contains("2") && zzhc != null) {
            zza(zzqwVar, zza(zzhc), zzjvVar.zzLi.zzKA);
        } else if (!list.contains("1") || zzhd == null) {
            zzpk.zzbh("No matching template id and mapper");
            return false;
        } else {
            zza(zzqwVar, zza(zzhd), zzjvVar.zzLi.zzKA);
        }
        String str = zzjvVar.zzLi.zzKy;
        String str2 = zzjvVar.zzLi.zzKz;
        if (str2 != null) {
            zzqwVar.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
        } else {
            zzqwVar.loadData(str, "text/html", "UTF-8");
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzhf zze(Object obj) {
        if (obj instanceof IBinder) {
            return zzhf.zza.zzB((IBinder) obj);
        }
        return null;
    }

    public static View zzg(zzpb zzpbVar) {
        if (zzpbVar == null) {
            zzpk.e("AdState is null");
            return null;
        } else if (zzh(zzpbVar) && zzpbVar.zzNH != null) {
            return zzpbVar.zzNH.getView();
        } else {
            try {
                IObjectWrapper view = zzpbVar.zzLj != null ? zzpbVar.zzLj.getView() : null;
                if (view != null) {
                    return (View) com.google.android.gms.dynamic.zzd.zzF(view);
                }
                zzpk.zzbh("View in mediation adapter is null.");
                return null;
            } catch (RemoteException e) {
                zzpk.zzc("Could not get View from mediation adapter.", e);
                return null;
            }
        }
    }

    public static boolean zzh(zzpb zzpbVar) {
        return (zzpbVar == null || !zzpbVar.zzSn || zzpbVar.zzLi == null || zzpbVar.zzLi.zzKy == null) ? false : true;
    }
}
