package com.smaato.soma.internal.connector;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.util.Patterns;
import android.webkit.JavascriptInterface;
import android.webkit.WebBackForwardList;
import android.webkit.WebView;
import com.google.android.gms.drive.DriveFile;
import com.openx.view.mraid.JSInterface;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.debug.b;
import com.smaato.soma.exception.PageRedirectionFailed;
import com.smaato.soma.internal.c.f;
import com.smaato.soma.internal.c.g;
import com.smaato.soma.internal.c.j;
import com.smaato.soma.l;
import com.smaato.soma.measurements.FraudesType;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class OrmmaBridge {
    public static final int MRAID_VERSION = 2;
    public final String TAG = "SOMA_Bridge";

    /* renamed from: a  reason: collision with root package name */
    JSONObject f4984a = null;
    private com.smaato.soma.bannerutilities.a b;
    private Handler c;
    private Context d;
    private boolean e;
    private WebView f;

    public Context getContext() {
        return this.d;
    }

    public OrmmaBridge(Handler handler, Context context, com.smaato.soma.bannerutilities.a aVar) {
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = false;
        this.c = handler;
        this.d = context;
        this.b = aVar;
        this.e = false;
    }

    @JavascriptInterface
    public void showAlert(final String str) {
        new l<Void>() { // from class: com.smaato.soma.internal.connector.OrmmaBridge.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                com.smaato.soma.debug.a.a(new b("SOMA_Bridge", "alert " + str, 1, DebugCategory.INFO));
                return null;
            }
        }.c();
    }

    @JavascriptInterface
    public void activate(String str) {
    }

    @JavascriptInterface
    public void deactivate(String str) {
    }

    @JavascriptInterface
    public void close() {
        new l<Void>() { // from class: com.smaato.soma.internal.connector.OrmmaBridge.8
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                com.smaato.soma.debug.a.a(new b("SOMA_Bridge", "closing ...", 1, DebugCategory.INFO));
                OrmmaBridge.this.c.sendMessage(OrmmaBridge.this.c.obtainMessage(102));
                return null;
            }
        }.c();
    }

    @JavascriptInterface
    public void legacyExpand(int i, int i2, int i3, int i4, String str, String str2) {
        new l<Void>() { // from class: com.smaato.soma.internal.connector.OrmmaBridge.9
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                OrmmaBridge.this.e = true;
                if (!OrmmaBridge.this.b.g()) {
                    com.smaato.soma.debug.a.a(new b("SOMA_Bridge", "legacyExpand", 1, DebugCategory.INFO));
                    return null;
                }
                com.smaato.soma.debug.a.a(new b("SOMA_Bridge", "NOT legacyExpand !mPackage.isOrmma()", 1, DebugCategory.INFO));
                return null;
            }
        }.c();
    }

    @JavascriptInterface
    public void legacyExpand() {
        new l<Void>() { // from class: com.smaato.soma.internal.connector.OrmmaBridge.10
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                OrmmaBridge.this.e = true;
                if (!OrmmaBridge.this.b.g()) {
                    com.smaato.soma.debug.a.a(new b("SOMA_Bridge", "legacyExpand ", 1, DebugCategory.INFO));
                    return null;
                }
                return null;
            }
        }.c();
    }

    @JavascriptInterface
    public void expand(int i, int i2, final int i3, final int i4, final String str, final String str2) {
        new l<Void>() { // from class: com.smaato.soma.internal.connector.OrmmaBridge.11
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                OrmmaBridge.this.e = true;
                if (!OrmmaBridge.this.isUserClicked(str) && i4 == com.smaato.soma.internal.requests.settings.a.a().h()) {
                    OrmmaBridge.this.reportViolation(FraudesType.AUTO_EXPAND, str);
                }
                com.smaato.soma.debug.a.a(new b("SOMA_Bridge", "expanding to : " + i3 + JSInterface.JSON_X + i4 + str2, 1, DebugCategory.INFO));
                return null;
            }
        }.c();
    }

    @JavascriptInterface
    public void hide() {
    }

    @JavascriptInterface
    public void open(final String str) {
        new l<Void>() { // from class: com.smaato.soma.internal.connector.OrmmaBridge.12
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                OrmmaBridge.this.redirectPage(str);
                return null;
            }
        }.c();
    }

    @JavascriptInterface
    public void open(final String str, boolean z, boolean z2, boolean z3) {
        new l<Void>() { // from class: com.smaato.soma.internal.connector.OrmmaBridge.13
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                OrmmaBridge.this.redirectPage(str);
                return null;
            }
        }.c();
    }

    @JavascriptInterface
    protected void redirectPage(final String str) throws PageRedirectionFailed {
        new l<Void>() { // from class: com.smaato.soma.internal.connector.OrmmaBridge.14
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                com.smaato.soma.debug.a.a(new Object());
                if (str != null && OrmmaBridge.this.isUserClicked("redirection")) {
                    com.smaato.soma.debug.a.a(new b("SOMA_Bridge", "Opening URL " + str + " in external browser.", 1, DebugCategory.INFO));
                    if (OrmmaBridge.this.a(str)) {
                        try {
                            Intent parseUri = Intent.parseUri(str, 1);
                            if (!str.equalsIgnoreCase("about:blank")) {
                                parseUri.addFlags(DriveFile.MODE_READ_ONLY);
                                OrmmaBridge.this.d.getApplicationContext().startActivity(parseUri);
                            }
                        } catch (Exception e) {
                        }
                    } else {
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                        OrmmaBridge.this.d.getApplicationContext().startActivity(intent);
                    }
                    if (OrmmaBridge.this.b != null && OrmmaBridge.this.b.j() != null && !OrmmaBridge.this.e) {
                        OrmmaBridge.this.b.j().getBannerAnimatorHandler().sendMessage(OrmmaBridge.this.b.j().getBannerAnimatorHandler().obtainMessage(102));
                        return null;
                    }
                    return null;
                }
                OrmmaBridge.this.reportViolation(FraudesType.AUTO_REDIRECT, str);
                com.smaato.soma.debug.a.a(new b("SOMA_Bridge", "Opening URL " + str + " in external browser. failed. User click not detected ...", 1, DebugCategory.WARNING));
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        try {
            if (Patterns.WEB_URL.matcher(str).matches()) {
                return false;
            }
            return getContext().getPackageManager().resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 0) != null;
        } catch (Exception e) {
            return false;
        }
    }

    @JavascriptInterface
    public void openMap(String str, boolean z) {
    }

    @JavascriptInterface
    public void playAudio(String str, boolean z, boolean z2, boolean z3, int i, String str2, String str3) {
    }

    @JavascriptInterface
    public void playVideo(String str, boolean z, boolean z2, boolean z3, boolean z4, int i, String str2, String str3) {
    }

    @JavascriptInterface
    public void resize(int i, int i2) {
        com.smaato.soma.debug.a.a(new b("SOMA_Bridge", "resize ORMMA", 1, DebugCategory.DEBUG));
    }

    @JavascriptInterface
    public void show() {
    }

    @JavascriptInterface
    public void foundORMMAAd() {
        new l<Void>() { // from class: com.smaato.soma.internal.connector.OrmmaBridge.15
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                com.smaato.soma.debug.a.a(new b("SOMA_Bridge", "Found ORMMA/MRAID banner", 1, DebugCategory.DEBUG));
                OrmmaBridge.this.b.b(true);
                OrmmaBridge.this.e = false;
                return null;
            }
        }.c();
    }

    public WebView getWebView() {
        return this.f;
    }

    public void setWebView(WebView webView) {
        this.f = webView;
    }

    @JavascriptInterface
    public void setResizeProperties(String str) {
        try {
            com.smaato.soma.debug.a.a(new b("SOMA_Bridge", "setResizeProperties=" + str, 1, DebugCategory.INFO));
            this.f4984a = new JSONObject(str);
        } catch (Throwable th) {
            com.smaato.soma.debug.a.a(new b("SOMA_Bridge", "setResizeProperties " + th.getMessage(), 1, DebugCategory.INFO));
        }
    }

    @JavascriptInterface
    public void resize() {
        new l<Void>() { // from class: com.smaato.soma.internal.connector.OrmmaBridge.2
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                String optString = OrmmaBridge.this.f4984a.optString("width");
                String optString2 = OrmmaBridge.this.f4984a.optString("height");
                if (optString != null && optString2 != null && optString.length() > 0 && optString2.length() > 0) {
                    int parseInt = Integer.parseInt(optString);
                    int parseInt2 = Integer.parseInt(optString2);
                    com.smaato.soma.debug.a.a(new b("SOMA_Bridge", "resize : width=" + parseInt + " height=" + parseInt2, 1, DebugCategory.INFO));
                    OrmmaBridge.this.c.sendMessage(OrmmaBridge.this.c.obtainMessage(103, parseInt, parseInt2));
                    return null;
                }
                return null;
            }
        }.c();
    }

    @JavascriptInterface
    public void storePicture(String str) {
        if (!isUserClicked("store picture")) {
            reportViolation(FraudesType.AUTO_DOWNLOAD, str);
        } else {
            new AnonymousClass3(str).c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.smaato.soma.internal.connector.OrmmaBridge$3  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 extends l<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f4993a;

        AnonymousClass3(String str) {
            this.f4993a = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.smaato.soma.internal.connector.OrmmaBridge$3$1  reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 implements Runnable {
            AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (AnonymousClass3.this.f4993a != null && !AnonymousClass3.this.f4993a.equalsIgnoreCase("undefined")) {
                        AlertDialog.Builder builder = new AlertDialog.Builder(OrmmaBridge.this.d);
                        builder.setMessage("Do you want to save this picture into your photo album ?").setCancelable(false).setPositiveButton("Yes", new DialogInterface.OnClickListener() { // from class: com.smaato.soma.internal.connector.OrmmaBridge.3.1.2
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i) {
                                new l<Void>() { // from class: com.smaato.soma.internal.connector.OrmmaBridge.3.1.2.1
                                    @Override // com.smaato.soma.l
                                    /* renamed from: a */
                                    public Void b() throws Exception {
                                        new g().execute(new f(AnonymousClass3.this.f4993a, OrmmaBridge.this.d));
                                        return null;
                                    }
                                }.c();
                            }
                        }).setNegativeButton("No", new DialogInterface.OnClickListener() { // from class: com.smaato.soma.internal.connector.OrmmaBridge.3.1.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(final DialogInterface dialogInterface, int i) {
                                new l<Void>() { // from class: com.smaato.soma.internal.connector.OrmmaBridge.3.1.1.1
                                    @Override // com.smaato.soma.l
                                    /* renamed from: a */
                                    public Void b() throws Exception {
                                        dialogInterface.cancel();
                                        return null;
                                    }
                                }.c();
                            }
                        });
                        builder.create().show();
                    } else {
                        com.smaato.soma.debug.a.a(new b("SOMA_Bridge", "Bad URL: " + AnonymousClass3.this.f4993a, 1, DebugCategory.WARNING));
                    }
                } catch (Throwable th) {
                    com.smaato.soma.debug.a.a(new b("SOMA_Bridge", "Unable to Store Picture !!", 2, DebugCategory.WARNING));
                }
            }
        }

        @Override // com.smaato.soma.l
        /* renamed from: a */
        public Void b() throws Exception {
            ((Activity) OrmmaBridge.this.d).runOnUiThread(new AnonymousClass1());
            return null;
        }
    }

    @JavascriptInterface
    public void createCalendarEvent(final String str) {
        if (!isUserClicked("create calendar event")) {
            reportViolation(FraudesType.AUTO_OPEN, str);
        } else {
            new l<Void>() { // from class: com.smaato.soma.internal.connector.OrmmaBridge.4
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Void b() throws Exception {
                    new com.smaato.soma.internal.c.a(new j(new JSONObject(str)), OrmmaBridge.this.d);
                    return null;
                }
            }.c();
        }
    }

    @JavascriptInterface
    public void playVideo(final String str) {
        if (!isUserClicked("play video")) {
            reportViolation(FraudesType.AUTO_PLAY, str);
        } else {
            new l<Void>() { // from class: com.smaato.soma.internal.connector.OrmmaBridge.5
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Void b() throws Exception {
                    if (str != null && !str.equalsIgnoreCase("undefined") && str.length() > 0) {
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                        OrmmaBridge.this.d.getApplicationContext().startActivity(intent);
                        return null;
                    }
                    com.smaato.soma.debug.a.a(new b("SOMA_Bridge", "Bad URL: " + str, 1, DebugCategory.WARNING));
                    return null;
                }
            }.c();
        }
    }

    public void setContext(Context context) {
        this.d = context;
    }

    public boolean isUserClicked(final String str) {
        return new l<Boolean>() { // from class: com.smaato.soma.internal.connector.OrmmaBridge.6
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Boolean b() throws Exception {
                boolean a2 = ((com.smaato.soma.internal.e.a) OrmmaBridge.this.b.e()).a();
                if (!a2) {
                    com.smaato.soma.debug.a.a(new b("SOMA_Bridge", "User Click not detected, escaping " + str + " ...", 1, DebugCategory.WARNING));
                }
                return Boolean.valueOf(a2);
            }
        }.c().booleanValue();
    }

    public boolean reportViolation(final FraudesType fraudesType, final String str) {
        return new l<Boolean>() { // from class: com.smaato.soma.internal.connector.OrmmaBridge.7
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Boolean b() throws Exception {
                ((com.smaato.soma.internal.e.a) OrmmaBridge.this.b.e()).a(fraudesType, str, OrmmaBridge.this.getURLTraces(OrmmaBridge.this.b.e()));
                return true;
            }
        }.c().booleanValue();
    }

    public List<String> getURLTraces(WebView webView) {
        if (webView != null) {
            try {
                WebBackForwardList copyBackForwardList = ((com.smaato.soma.internal.e.a) webView).copyBackForwardList();
                if (copyBackForwardList == null || copyBackForwardList.getSize() <= 0) {
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < copyBackForwardList.getSize(); i++) {
                    String originalUrl = copyBackForwardList.getItemAtIndex(i).getOriginalUrl();
                    String url = copyBackForwardList.getItemAtIndex(i).getUrl();
                    if (originalUrl != null) {
                        arrayList.add(originalUrl);
                    }
                    if (url != null) {
                        if (originalUrl == null) {
                            arrayList.add(url);
                        } else if (originalUrl != null && !originalUrl.equals(url)) {
                            arrayList.add(url);
                        }
                    }
                }
                return arrayList;
            } catch (Exception e) {
            }
        }
        return null;
    }
}
