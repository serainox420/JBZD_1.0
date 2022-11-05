package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.DownloadManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.http.SslError;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;
@zzme
@TargetApi(8)
/* loaded from: classes.dex */
public class zzpp {

    @TargetApi(9)
    /* loaded from: classes2.dex */
    public static class zza extends zzpp {
        public zza() {
            super();
        }

        @Override // com.google.android.gms.internal.zzpp
        public boolean zza(DownloadManager.Request request) {
            request.setShowRunningNotification(true);
            return true;
        }

        @Override // com.google.android.gms.internal.zzpp
        public int zzkQ() {
            return 6;
        }

        @Override // com.google.android.gms.internal.zzpp
        public int zzkR() {
            return 7;
        }
    }

    @TargetApi(11)
    /* loaded from: classes2.dex */
    public static class zzb extends zza {
        @Override // com.google.android.gms.internal.zzpp.zza, com.google.android.gms.internal.zzpp
        public boolean zza(DownloadManager.Request request) {
            request.allowScanningByMediaScanner();
            request.setNotificationVisibility(1);
            return true;
        }

        @Override // com.google.android.gms.internal.zzpp
        public boolean zza(final Context context, final WebSettings webSettings) {
            super.zza(context, webSettings);
            return ((Boolean) zzqb.zzb(new Callable<Boolean>(this) { // from class: com.google.android.gms.internal.zzpp.zzb.1
                @Override // java.util.concurrent.Callable
                /* renamed from: zzbX */
                public Boolean call() {
                    if (context.getCacheDir() != null) {
                        webSettings.setAppCachePath(context.getCacheDir().getAbsolutePath());
                        webSettings.setAppCacheMaxSize(0L);
                        webSettings.setAppCacheEnabled(true);
                    }
                    webSettings.setDatabasePath(context.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath());
                    webSettings.setDatabaseEnabled(true);
                    webSettings.setDomStorageEnabled(true);
                    webSettings.setDisplayZoomControls(false);
                    webSettings.setBuiltInZoomControls(true);
                    webSettings.setSupportZoom(true);
                    webSettings.setAllowContentAccess(false);
                    return true;
                }
            })).booleanValue();
        }

        @Override // com.google.android.gms.internal.zzpp
        public boolean zza(Window window) {
            window.setFlags(16777216, 16777216);
            return true;
        }

        @Override // com.google.android.gms.internal.zzpp
        public zzqx zzb(zzqw zzqwVar, boolean z) {
            return new zzre(zzqwVar, z);
        }

        @Override // com.google.android.gms.internal.zzpp
        public Set<String> zzh(Uri uri) {
            return uri.getQueryParameterNames();
        }

        @Override // com.google.android.gms.internal.zzpp
        public WebChromeClient zzn(zzqw zzqwVar) {
            return new zzrd(zzqwVar);
        }

        @Override // com.google.android.gms.internal.zzpp
        public boolean zzt(View view) {
            view.setLayerType(0, null);
            return true;
        }

        @Override // com.google.android.gms.internal.zzpp
        public boolean zzu(View view) {
            view.setLayerType(1, null);
            return true;
        }
    }

    @TargetApi(14)
    /* loaded from: classes2.dex */
    public static class zzc extends zzb {
        @Override // com.google.android.gms.internal.zzpp
        public String zza(SslError sslError) {
            return sslError.getUrl();
        }

        @Override // com.google.android.gms.internal.zzpp.zzb, com.google.android.gms.internal.zzpp
        public WebChromeClient zzn(zzqw zzqwVar) {
            return new zzrf(zzqwVar);
        }
    }

    @TargetApi(17)
    /* loaded from: classes2.dex */
    public static class zzd extends zzf {
        @Override // com.google.android.gms.internal.zzpp
        public String getDefaultUserAgent(Context context) {
            return zzqc.zzld().zzac(context);
        }

        @Override // com.google.android.gms.internal.zzpp
        public void zzW(Context context) {
            zzqc.zzld().zzab(context);
            com.google.android.gms.ads.internal.zzw.zzcQ().zzkB();
        }

        @Override // com.google.android.gms.internal.zzpp
        public Drawable zza(Context context, Bitmap bitmap, boolean z, float f) {
            if (!z || f <= BitmapDescriptorFactory.HUE_RED || f > 25.0f) {
                return new BitmapDrawable(context.getResources(), bitmap);
            }
            try {
                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth(), bitmap.getHeight(), false);
                Bitmap createBitmap = Bitmap.createBitmap(createScaledBitmap);
                RenderScript create = RenderScript.create(context);
                ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
                Allocation createFromBitmap = Allocation.createFromBitmap(create, createScaledBitmap);
                Allocation createFromBitmap2 = Allocation.createFromBitmap(create, createBitmap);
                create2.setRadius(f);
                create2.setInput(createFromBitmap);
                create2.forEach(createFromBitmap2);
                createFromBitmap2.copyTo(createBitmap);
                return new BitmapDrawable(context.getResources(), createBitmap);
            } catch (RuntimeException e) {
                return new BitmapDrawable(context.getResources(), bitmap);
            }
        }

        @Override // com.google.android.gms.internal.zzpp.zzf, com.google.android.gms.internal.zzpp.zzb, com.google.android.gms.internal.zzpp
        public boolean zza(Context context, WebSettings webSettings) {
            super.zza(context, webSettings);
            webSettings.setMediaPlaybackRequiresUserGesture(false);
            return true;
        }
    }

    @TargetApi(18)
    /* loaded from: classes2.dex */
    public static class zze extends zzd {
        @Override // com.google.android.gms.internal.zzpp
        public boolean isAttachedToWindow(View view) {
            return super.isAttachedToWindow(view) || view.getWindowId() != null;
        }

        @Override // com.google.android.gms.internal.zzpp
        public int zzkS() {
            return 14;
        }
    }

    @TargetApi(16)
    /* loaded from: classes2.dex */
    public static class zzf extends zzc {
        @Override // com.google.android.gms.internal.zzpp
        public void zza(View view, Drawable drawable) {
            view.setBackground(drawable);
        }

        @Override // com.google.android.gms.internal.zzpp
        public void zza(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }

        @Override // com.google.android.gms.internal.zzpp.zzb, com.google.android.gms.internal.zzpp
        public boolean zza(Context context, WebSettings webSettings) {
            super.zza(context, webSettings);
            webSettings.setAllowFileAccessFromFileURLs(false);
            webSettings.setAllowUniversalAccessFromFileURLs(false);
            return true;
        }

        @Override // com.google.android.gms.internal.zzpp
        public void zzb(Activity activity, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            Window window = activity.getWindow();
            if (window == null || window.getDecorView() == null || window.getDecorView().getViewTreeObserver() == null) {
                return;
            }
            zza(window.getDecorView().getViewTreeObserver(), onGlobalLayoutListener);
        }
    }

    @TargetApi(19)
    /* loaded from: classes2.dex */
    public static class zzg extends zze {
        @Override // com.google.android.gms.internal.zzpp.zze, com.google.android.gms.internal.zzpp
        public boolean isAttachedToWindow(View view) {
            return view.isAttachedToWindow();
        }

        @Override // com.google.android.gms.internal.zzpp
        public ViewGroup.LayoutParams zzkT() {
            return new ViewGroup.LayoutParams(-1, -1);
        }
    }

    @TargetApi(21)
    /* loaded from: classes2.dex */
    public static class zzh extends zzg {
        @Override // com.google.android.gms.internal.zzpp
        public CookieManager zzX(Context context) {
            try {
                return CookieManager.getInstance();
            } catch (Exception e) {
                zzpk.zzb("Failed to obtain CookieManager.", e);
                com.google.android.gms.ads.internal.zzw.zzcQ().zza(e, "ApiLevelUtil.getCookieManager");
                return null;
            }
        }

        @Override // com.google.android.gms.internal.zzpp.zzb, com.google.android.gms.internal.zzpp
        public zzqx zzb(zzqw zzqwVar, boolean z) {
            return new zzrh(zzqwVar, z);
        }
    }

    private zzpp() {
    }

    public static zzpp zzaj(int i) {
        return i >= 21 ? new zzh() : i >= 19 ? new zzg() : i >= 18 ? new zze() : i >= 17 ? new zzd() : i >= 16 ? new zzf() : i >= 14 ? new zzc() : i >= 11 ? new zzb() : i >= 9 ? new zza() : new zzpp();
    }

    public String getDefaultUserAgent(Context context) {
        return "";
    }

    public boolean isAttachedToWindow(View view) {
        return (view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true;
    }

    public void zzW(Context context) {
        com.google.android.gms.ads.internal.zzw.zzcQ().zzkB();
    }

    public CookieManager zzX(Context context) {
        try {
            CookieSyncManager.createInstance(context);
            return CookieManager.getInstance();
        } catch (Exception e) {
            zzpk.zzb("Failed to obtain CookieManager.", e);
            com.google.android.gms.ads.internal.zzw.zzcQ().zza(e, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    public Drawable zza(Context context, Bitmap bitmap, boolean z, float f) {
        return new BitmapDrawable(context.getResources(), bitmap);
    }

    public String zza(SslError sslError) {
        return "";
    }

    public void zza(View view, Drawable drawable) {
        view.setBackgroundDrawable(drawable);
    }

    public void zza(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        viewTreeObserver.removeGlobalOnLayoutListener(onGlobalLayoutListener);
    }

    public boolean zza(DownloadManager.Request request) {
        return false;
    }

    public boolean zza(Context context, WebSettings webSettings) {
        return false;
    }

    public boolean zza(Window window) {
        return false;
    }

    public zzqx zzb(zzqw zzqwVar, boolean z) {
        return new zzqx(zzqwVar, z);
    }

    public void zzb(Activity activity, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        Window window = activity.getWindow();
        if (window == null || window.getDecorView() == null || window.getDecorView().getViewTreeObserver() == null) {
            return;
        }
        zza(window.getDecorView().getViewTreeObserver(), onGlobalLayoutListener);
    }

    public Set<String> zzh(Uri uri) {
        String encodedQuery;
        if (!uri.isOpaque() && (encodedQuery = uri.getEncodedQuery()) != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int i = 0;
            do {
                int indexOf = encodedQuery.indexOf(38, i);
                if (indexOf == -1) {
                    indexOf = encodedQuery.length();
                }
                int indexOf2 = encodedQuery.indexOf(61, i);
                if (indexOf2 > indexOf || indexOf2 == -1) {
                    indexOf2 = indexOf;
                }
                linkedHashSet.add(Uri.decode(encodedQuery.substring(i, indexOf2)));
                i = indexOf + 1;
            } while (i < encodedQuery.length());
            return Collections.unmodifiableSet(linkedHashSet);
        }
        return Collections.emptySet();
    }

    public int zzkQ() {
        return 0;
    }

    public int zzkR() {
        return 1;
    }

    public int zzkS() {
        return 5;
    }

    public ViewGroup.LayoutParams zzkT() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    public boolean zzl(zzqw zzqwVar) {
        if (zzqwVar == null) {
            return false;
        }
        zzqwVar.onPause();
        return true;
    }

    public boolean zzm(zzqw zzqwVar) {
        if (zzqwVar == null) {
            return false;
        }
        zzqwVar.onResume();
        return true;
    }

    public WebChromeClient zzn(zzqw zzqwVar) {
        return null;
    }

    public boolean zzt(View view) {
        return false;
    }

    public boolean zzu(View view) {
        return false;
    }
}
