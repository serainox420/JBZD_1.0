package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Message;
import android.view.View;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
@zzme
@TargetApi(11)
/* loaded from: classes.dex */
public class zzrd extends WebChromeClient {
    private final zzqw zzIs;

    /* renamed from: com.google.android.gms.internal.zzrd$7  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass7 {
        static final /* synthetic */ int[] zzaaN = new int[ConsoleMessage.MessageLevel.values().length];

        static {
            try {
                zzaaN[ConsoleMessage.MessageLevel.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                zzaaN[ConsoleMessage.MessageLevel.WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                zzaaN[ConsoleMessage.MessageLevel.LOG.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                zzaaN[ConsoleMessage.MessageLevel.TIP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                zzaaN[ConsoleMessage.MessageLevel.DEBUG.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public zzrd(zzqw zzqwVar) {
        this.zzIs = zzqwVar;
    }

    private final Context zza(WebView webView) {
        if (!(webView instanceof zzqw)) {
            return webView.getContext();
        }
        zzqw zzqwVar = (zzqw) webView;
        Activity zzlr = zzqwVar.zzlr();
        return zzlr == null ? zzqwVar.getContext() : zzlr;
    }

    private static void zza(AlertDialog.Builder builder, String str, final JsResult jsResult) {
        builder.setMessage(str).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.zzrd.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                jsResult.confirm();
            }
        }).setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.zzrd.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                jsResult.cancel();
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.zzrd.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                jsResult.cancel();
            }
        }).create().show();
    }

    private static void zza(Context context, AlertDialog.Builder builder, String str, String str2, final JsPromptResult jsPromptResult) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(context);
        textView.setText(str);
        final EditText editText = new EditText(context);
        editText.setText(str2);
        linearLayout.addView(textView);
        linearLayout.addView(editText);
        builder.setView(linearLayout).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.zzrd.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                jsPromptResult.confirm(editText.getText().toString());
            }
        }).setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.zzrd.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                jsPromptResult.cancel();
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.zzrd.4
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                jsPromptResult.cancel();
            }
        }).create().show();
    }

    private final boolean zzml() {
        return com.google.android.gms.ads.internal.zzw.zzcM().zze(this.zzIs.getContext(), this.zzIs.getContext().getPackageName(), "android.permission.ACCESS_FINE_LOCATION") || com.google.android.gms.ads.internal.zzw.zzcM().zze(this.zzIs.getContext(), this.zzIs.getContext().getPackageName(), "android.permission.ACCESS_COARSE_LOCATION");
    }

    @Override // android.webkit.WebChromeClient
    public final void onCloseWindow(WebView webView) {
        if (!(webView instanceof zzqw)) {
            zzpk.zzbh("Tried to close a WebView that wasn't an AdWebView.");
            return;
        }
        com.google.android.gms.ads.internal.overlay.zze zzlt = ((zzqw) webView).zzlt();
        if (zzlt == null) {
            zzpk.zzbh("Tried to close an AdWebView not associated with an overlay.");
        } else {
            zzlt.close();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String valueOf = String.valueOf(consoleMessage.message());
        String valueOf2 = String.valueOf(consoleMessage.sourceId());
        String sb = new StringBuilder(String.valueOf(valueOf).length() + 19 + String.valueOf(valueOf2).length()).append("JS: ").append(valueOf).append(" (").append(valueOf2).append(":").append(consoleMessage.lineNumber()).append(")").toString();
        if (sb.contains("Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        switch (AnonymousClass7.zzaaN[consoleMessage.messageLevel().ordinal()]) {
            case 1:
                zzpk.e(sb);
                break;
            case 2:
                zzpk.zzbh(sb);
                break;
            case 3:
            case 4:
                zzpk.zzbg(sb);
                break;
            case 5:
                zzpk.zzbf(sb);
                break;
            default:
                zzpk.zzbg(sb);
                break;
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebView webView2 = new WebView(webView.getContext());
        webView2.setWebViewClient(this.zzIs.zzlv());
        ((WebView.WebViewTransport) message.obj).setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        long j4 = 5242880 - j3;
        if (j4 <= 0) {
            quotaUpdater.updateQuota(j);
            return;
        }
        if (j == 0) {
            if (j2 > j4 || j2 > 1048576) {
                j2 = 0;
            }
        } else if (j2 == 0) {
            j2 = Math.min(Math.min(131072L, j4) + j, 1048576L);
        } else {
            if (j2 <= Math.min(1048576 - j, j4)) {
                j += j2;
            }
            j2 = j;
        }
        quotaUpdater.updateQuota(j2);
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        if (callback != null) {
            callback.invoke(str, zzml(), true);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onHideCustomView() {
        com.google.android.gms.ads.internal.overlay.zze zzlt = this.zzIs.zzlt();
        if (zzlt == null) {
            zzpk.zzbh("Could not get ad overlay when hiding custom view.");
        } else {
            zzlt.zzhD();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zza(webView), str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zza(webView), str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zza(webView), str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return zza(zza(webView), str, str2, str3, null, jsPromptResult, true);
    }

    @Override // android.webkit.WebChromeClient
    public final void onReachedMaxAppCacheSize(long j, long j2, WebStorage.QuotaUpdater quotaUpdater) {
        long j3 = 131072 + j;
        if (5242880 - j2 < j3) {
            quotaUpdater.updateQuota(0L);
        } else {
            quotaUpdater.updateQuota(j3);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        zza(view, -1, customViewCallback);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zza(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        com.google.android.gms.ads.internal.overlay.zze zzlt = this.zzIs.zzlt();
        if (zzlt == null) {
            zzpk.zzbh("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
            return;
        }
        zzlt.zza(view, customViewCallback);
        zzlt.setRequestedOrientation(i);
    }

    protected boolean zza(Context context, String str, String str2, String str3, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        try {
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setTitle(str);
            if (z) {
                zza(context, builder, str2, str3, jsPromptResult);
            } else {
                zza(builder, str2, jsResult);
            }
            return true;
        } catch (WindowManager.BadTokenException e) {
            zzpk.zzc("Fail to display Dialog.", e);
            return true;
        }
    }
}
