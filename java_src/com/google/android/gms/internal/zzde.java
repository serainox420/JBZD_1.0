package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.pubmatic.sdk.common.CommonConstants;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
@TargetApi(14)
/* loaded from: classes.dex */
public class zzde extends Thread {
    private final zzdc zzxP;
    private final zzmd zzxQ;
    private boolean mStarted = false;
    private boolean zzxO = false;
    private boolean zzal = false;
    private final Object zzrJ = new Object();
    private final int zzxp = zzgd.zzCd.get().intValue();
    private final int zzxS = zzgd.zzCe.get().intValue();
    private final int zzxr = zzgd.zzCf.get().intValue();
    private final int zzxT = zzgd.zzCg.get().intValue();
    private final int zzxU = zzgd.zzCj.get().intValue();
    private final int zzxV = zzgd.zzCl.get().intValue();
    private final int zzxW = zzgd.zzCm.get().intValue();
    private final int zzxR = zzgd.zzCh.get().intValue();
    private final String zzxX = zzgd.zzCo.get();

    /* JADX INFO: Access modifiers changed from: package-private */
    @zzme
    /* loaded from: classes.dex */
    public class zza {
        final int zzyf;
        final int zzyg;

        zza(zzde zzdeVar, int i, int i2) {
            this.zzyf = i;
            this.zzyg = i2;
        }
    }

    public zzde(zzdc zzdcVar, zzmd zzmdVar) {
        this.zzxP = zzdcVar;
        this.zzxQ = zzmdVar;
        setName("ContentFetchTask");
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (true) {
            try {
                if (zzek()) {
                    Activity activity = com.google.android.gms.ads.internal.zzw.zzcP().getActivity();
                    if (activity == null) {
                        zzpk.zzbf("ContentFetchThread: no activity. Sleeping.");
                        zzem();
                    } else {
                        zza(activity);
                    }
                } else {
                    zzpk.zzbf("ContentFetchTask: sleeping");
                    zzem();
                }
                Thread.sleep(this.zzxR * 1000);
            } catch (InterruptedException e) {
                zzpk.zzb("Error in ContentFetchTask", e);
            } catch (Throwable th) {
                zzpk.zzb("Error in ContentFetchTask", th);
                this.zzxQ.zza(th, "ContentFetchTask.run");
            }
            synchronized (this.zzrJ) {
                while (this.zzxO) {
                    try {
                        zzpk.zzbf("ContentFetchTask: waiting");
                        this.zzrJ.wait();
                    } catch (InterruptedException e2) {
                    }
                }
            }
        }
    }

    public void wakeup() {
        synchronized (this.zzrJ) {
            this.zzxO = false;
            this.zzrJ.notifyAll();
            zzpk.zzbf("ContentFetchThread: wakeup");
        }
    }

    zza zza(View view, zzdb zzdbVar) {
        int i = 0;
        if (view == null) {
            return new zza(this, 0, 0);
        }
        Context context = com.google.android.gms.ads.internal.zzw.zzcP().getContext();
        if (context != null) {
            String str = (String) view.getTag(context.getResources().getIdentifier(zzgd.zzCn.get(), "id", context.getPackageName()));
            if (!TextUtils.isEmpty(this.zzxX) && str != null && str.equals(this.zzxX)) {
                return new zza(this, 0, 0);
            }
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new zza(this, 0, 0);
            }
            zzdbVar.zzb(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
            return new zza(this, 1, 0);
        } else if ((view instanceof WebView) && !(view instanceof zzqw)) {
            zzdbVar.zzef();
            return zza((WebView) view, zzdbVar, globalVisibleRect) ? new zza(this, 0, 1) : new zza(this, 0, 0);
        } else if (!(view instanceof ViewGroup)) {
            return new zza(this, 0, 0);
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            int i2 = 0;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                zza zza2 = zza(viewGroup.getChildAt(i3), zzdbVar);
                i2 += zza2.zzyf;
                i += zza2.zzyg;
            }
            return new zza(this, i2, i);
        }
    }

    void zza(Activity activity) {
        if (activity == null) {
            return;
        }
        View view = null;
        try {
            if (activity.getWindow() != null && activity.getWindow().getDecorView() != null) {
                view = activity.getWindow().getDecorView().findViewById(16908290);
            }
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzw.zzcQ().zza(th, "ContentFetchTask.extractContent");
            zzpk.zzbf("Failed getting root view of activity. Content not extracted.");
        }
        if (view == null) {
            return;
        }
        zzh(view);
    }

    void zza(zzdb zzdbVar, WebView webView, String str, boolean z) {
        zzdbVar.zzee();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString(CommonConstants.RESPONSE_TEXT);
                if (!TextUtils.isEmpty(webView.getTitle())) {
                    String valueOf = String.valueOf(webView.getTitle());
                    zzdbVar.zza(new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(optString).length()).append(valueOf).append("\n").append(optString).toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    zzdbVar.zza(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (!zzdbVar.zzdZ()) {
                return;
            }
            this.zzxP.zzb(zzdbVar);
        } catch (JSONException e) {
            zzpk.zzbf("Json string may be malformed.");
        } catch (Throwable th) {
            zzpk.zza("Failed to get webview content.", th);
            this.zzxQ.zza(th, "ContentFetchTask.processWebViewContent");
        }
    }

    boolean zza(ActivityManager.RunningAppProcessInfo runningAppProcessInfo) {
        return runningAppProcessInfo.importance == 100;
    }

    @TargetApi(19)
    boolean zza(final WebView webView, final zzdb zzdbVar, final boolean z) {
        if (!com.google.android.gms.common.util.zzt.zzzl()) {
            return false;
        }
        zzdbVar.zzef();
        webView.post(new Runnable() { // from class: com.google.android.gms.internal.zzde.2
            ValueCallback<String> zzya = new ValueCallback<String>() { // from class: com.google.android.gms.internal.zzde.2.1
                @Override // android.webkit.ValueCallback
                /* renamed from: zzE */
                public void onReceiveValue(String str) {
                    zzde.this.zza(zzdbVar, webView, str, z);
                }
            };

            @Override // java.lang.Runnable
            public void run() {
                if (webView.getSettings().getJavaScriptEnabled()) {
                    try {
                        webView.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.zzya);
                    } catch (Throwable th) {
                        this.zzya.onReceiveValue("");
                    }
                }
            }
        });
        return true;
    }

    public void zzej() {
        synchronized (this.zzrJ) {
            if (this.mStarted) {
                zzpk.zzbf("Content hash thread already started, quiting...");
                return;
            }
            this.mStarted = true;
            start();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
        if (zza(r0) == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004d, code lost:
        if (r1.inKeyguardRestrictedInputMode() != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0053, code lost:
        if (zzi(r3) == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0055, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    boolean zzek() {
        try {
            Context context = com.google.android.gms.ads.internal.zzw.zzcP().getContext();
            if (context == null) {
                return false;
            }
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null) {
                return false;
            }
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses == null) {
                return false;
            }
            Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ActivityManager.RunningAppProcessInfo next = it.next();
                if (Process.myPid() == next.pid) {
                    break;
                }
            }
            return false;
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzw.zzcQ().zza(th, "ContentFetchTask.isInForeground");
            return false;
        }
    }

    public zzdb zzel() {
        return this.zzxP.zzei();
    }

    public void zzem() {
        synchronized (this.zzrJ) {
            this.zzxO = true;
            zzpk.zzbf(new StringBuilder(42).append("ContentFetchThread: paused, mPause = ").append(this.zzxO).toString());
        }
    }

    public boolean zzen() {
        return this.zzxO;
    }

    boolean zzh(final View view) {
        if (view == null) {
            return false;
        }
        view.post(new Runnable() { // from class: com.google.android.gms.internal.zzde.1
            @Override // java.lang.Runnable
            public void run() {
                zzde.this.zzi(view);
            }
        });
        return true;
    }

    void zzi(View view) {
        try {
            zzdb zzdbVar = new zzdb(this.zzxp, this.zzxS, this.zzxr, this.zzxT, this.zzxU, this.zzxV, this.zzxW);
            zza zza2 = zza(view, zzdbVar);
            zzdbVar.zzeg();
            if (zza2.zzyf == 0 && zza2.zzyg == 0) {
                return;
            }
            if (zza2.zzyg == 0 && zzdbVar.zzeh() == 0) {
                return;
            }
            if (zza2.zzyg == 0 && this.zzxP.zza(zzdbVar)) {
                return;
            }
            this.zzxP.zzc(zzdbVar);
        } catch (Exception e) {
            zzpk.zzb("Exception in fetchContentOnUIThread", e);
            this.zzxQ.zza(e, "ContentFetchTask.fetchContent");
        }
    }

    boolean zzi(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            return false;
        }
        return powerManager.isScreenOn();
    }
}
