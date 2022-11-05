package com.apprupt.sdk;

import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.amazon.device.ads.AdWebViewClient;
import com.apprupt.sdk.Logger;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.drive.DriveFile;
import com.loopme.common.VideoUtils;
import com.openx.view.mraid.JSInterface;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class CvLauncher {

    /* renamed from: a  reason: collision with root package name */
    private Context f1849a;
    private int b = 0;
    private ResizeProperties c = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class ResizeProperties {
        private int b;
        private int c;
        private String d;

        ResizeProperties(CvLauncher cvLauncher, int i, int i2, String str) {
            this(i, i2);
            this.d = str;
        }

        ResizeProperties(int i, int i2) {
            this.b = 0;
            this.c = 0;
            this.d = null;
            this.b = i;
            this.c = i2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int a() {
            return this.b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int b() {
            return this.c;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String c() {
            return this.d;
        }
    }

    public CvLauncher(Context context) {
        this.f1849a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ResizeProperties b() {
        return this.c;
    }

    public boolean a(String str, CvAdType cvAdType) {
        this.b = 0;
        Uri parse = Uri.parse(str);
        if (parse.getScheme().equals("webcal") || ((parse.getScheme().equals("http") || parse.getScheme().equals("https")) && parse.getPath().endsWith(".ics"))) {
            b(str);
            return false;
        } else if (parse.getScheme().equals("http") || parse.getScheme().equals("https")) {
            if (parse.getPath().endsWith(VideoUtils.MP4_FORMAT) || parse.getPath().endsWith(".ics") || parse.getHost().equals("webapps.apprupt.com") || parse.getHost().equals("market.android.com") || parse.getHost().matches("^(.+\\.)?(youtube\\.)([a-z]+)$")) {
                b(parse);
                return false;
            } else if (cvAdType == CvAdType.IN_PLACE) {
                return true;
            } else {
                Logger.a("LAUNCHER").a("Launcher", "Running browser overlay: " + parse);
                a(str);
                return false;
            }
        } else if (parse.getScheme().equals("browserhttp") || parse.getScheme().equals("browserhttps")) {
            b(Uri.parse(parse.toString().substring(7)));
            return false;
        } else if (parse.getScheme().equals(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)) {
            b(Uri.parse("http" + parse.toString().substring(5)));
            return false;
        } else if (parse.getScheme().equals("resize")) {
            a(parse);
            return false;
        } else if (parse.getScheme().equals("tel")) {
            d(parse);
            return false;
        } else if (parse.getScheme().equals(AdWebViewClient.MAILTO)) {
            c(parse);
            return false;
        } else {
            b(parse);
            return false;
        }
    }

    private void a(Uri uri) {
        byte[] b;
        String host = uri.getHost();
        if (host.matches("^[0-9]+x[0-9]+$")) {
            int indexOf = host.indexOf(JSInterface.JSON_X);
            int intValue = Integer.valueOf(host.substring(0, indexOf)).intValue();
            int intValue2 = Integer.valueOf(host.substring(indexOf + 1)).intValue();
            String str = null;
            String path = uri.getPath();
            if (path != null && path.length() > 0) {
                String replaceAll = path.replaceAll("((^\\/)|(\\/$))", "");
                if (replaceAll.length() > 0 && (b = CvBase64.b(replaceAll)) != null) {
                    str = new String(b);
                    if (Uri.parse(str) == null) {
                        return;
                    }
                }
            }
            if (str != null) {
                this.c = new ResizeProperties(this, intValue, intValue2, str);
            } else {
                this.c = new ResizeProperties(intValue, intValue2);
            }
            this.b = 2;
        }
    }

    private boolean a(Intent intent) {
        return this.f1849a.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    private void b(Intent intent) {
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        if (Build.VERSION.SDK_INT < 21) {
            intent.addFlags(524288);
        }
        intent.addFlags(1073741824);
    }

    private Intent a(Uri uri, String str) {
        Intent intent = new Intent(str, uri);
        b(intent);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(Uri uri) {
        return b(uri, "android.intent.action.VIEW");
    }

    private boolean b(Uri uri, String str) {
        return c(a(uri, str));
    }

    private boolean c(Intent intent) {
        boolean z = false;
        z = false;
        try {
            if (!a(intent)) {
                Logger.a("LAUNCHER").d("Intent not callable " + intent.getData().toString());
            } else {
                this.f1849a.startActivity(intent);
                z = true;
            }
        } catch (ActivityNotFoundException e) {
            Logger.log a2 = Logger.a("LAUNCHER");
            Object[] objArr = new Object[2];
            char c = z ? 1 : 0;
            char c2 = z ? 1 : 0;
            char c3 = z ? 1 : 0;
            objArr[c] = "Cannot find proper activity for intent";
            objArr[1] = e;
            a2.d(objArr);
        }
        return z;
    }

    private boolean c(Uri uri) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("plain/text");
        intent.putExtra("android.intent.extra.EMAIL", new String[]{uri.getSchemeSpecificPart()});
        b(intent);
        return c(intent);
    }

    private void b(String str) {
        new CvICSLoader(this.f1849a, str);
    }

    private void d(final Uri uri) {
        AlertDialog create = new AlertDialog.Builder(this.f1849a).create();
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.apprupt.sdk.CvLauncher.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i == -1) {
                    CvLauncher.this.b(uri);
                }
            }
        };
        String uri2 = uri.toString();
        String substring = uri2.substring(uri2.indexOf(":") + 1);
        if (substring.contains("%")) {
            try {
                substring = URLDecoder.decode(substring, AudienceNetworkActivity.WEBVIEW_ENCODING);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        create.setMessage(substring);
        create.setButton(-1, CvLocale.BUTTON_CALL.a(), onClickListener);
        create.setButton(-2, CvLocale.BUTTON_CANCEL.a(), onClickListener);
        create.show();
    }

    void a(String str) {
        a(str, true);
    }

    void a(String str, boolean z) {
        new CvOverlayLoader(this.f1849a, z).a(str);
    }
}
