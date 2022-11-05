package com.smartadserver.android.library.preview;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Toast;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import com.smartadserver.android.library.g.b;
import com.smartadserver.android.library.g.c;
import java.io.Serializable;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class SASPreviewHandlerActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private static HashMap<String, PreviewConfig> f5456a;

    /* loaded from: classes3.dex */
    public static class PreviewConfig implements Serializable {
        public String formatId;
        public int insertionId = -1;
        public String pageId;
        public long previewDuration;
        public long previewUrlExpirationDate;
        public String siteId;
        public long startTime;
        public String target;

        /* JADX INFO: Access modifiers changed from: private */
        public String a() {
            return SASPreviewHandlerActivity.b(this.pageId, this.formatId, this.target);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        try {
            a(intent.getData());
            if (intent.getBooleanExtra("startMainActivity", true)) {
                Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(getPackageName());
                launchIntentForPackage.setFlags(335544320);
                startActivity(launchIntentForPackage);
            }
        } catch (Exception e) {
            Toast.makeText(this, "Can not enable preview:" + e.getMessage(), 1).show();
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str, String str2, String str3) {
        return str + "/" + str2 + "/" + str3;
    }

    private void a(Uri uri) throws Exception {
        int i;
        String host = uri.getHost();
        String scheme = uri.getScheme();
        String substring = scheme.substring(3, scheme.length());
        String queryParameter = uri.getQueryParameter("pid");
        String queryParameter2 = uri.getQueryParameter("fid");
        String queryParameter3 = uri.getQueryParameter("t");
        if (queryParameter3 == null) {
            queryParameter3 = "";
        }
        String queryParameter4 = uri.getQueryParameter(PhoenixConstants.IMPRESSION_ID_PARAM);
        String queryParameter5 = uri.getQueryParameter(PhoenixConstants.DEBUG_PARAM);
        String queryParameter6 = uri.getQueryParameter("e");
        String queryParameter7 = uri.getQueryParameter("s");
        try {
            i = Integer.parseInt(uri.getQueryParameter("v"));
        } catch (NumberFormatException e) {
            i = -1;
        }
        if (!"previewresetall".equalsIgnoreCase(host) && (i > 1 || i < 0)) {
            throw new IllegalArgumentException("Unsupported preview API version (current:1 requested:" + i + ")");
        }
        PreviewConfig previewConfig = new PreviewConfig();
        previewConfig.siteId = substring;
        previewConfig.pageId = queryParameter;
        previewConfig.formatId = queryParameter2;
        previewConfig.target = queryParameter3;
        String str = substring + queryParameter + queryParameter2 + queryParameter3 + queryParameter4 + queryParameter5 + "jG1976!LgDM87!Tg1985:E@6016";
        if ("preview".equalsIgnoreCase(host)) {
            if (queryParameter7.equals(c.d(str))) {
                try {
                    previewConfig.insertionId = Integer.parseInt(queryParameter4);
                    long parseLong = Long.parseLong(queryParameter6);
                    if (parseLong > System.currentTimeMillis() / 1000) {
                        previewConfig.previewUrlExpirationDate = parseLong;
                        previewConfig.previewDuration = Integer.parseInt(queryParameter5);
                        previewConfig.startTime = -1L;
                        a(this, previewConfig);
                        return;
                    }
                    throw new IllegalArgumentException("Preview expiration date is passed already");
                } catch (NumberFormatException e2) {
                }
            }
        } else if ("previewreset".equalsIgnoreCase(host)) {
            previewConfig.insertionId = -1;
            a(this, previewConfig);
        } else if ("previewresetall".equalsIgnoreCase(host)) {
            a(this, null);
        }
    }

    private static HashMap<String, PreviewConfig> a(Context context) {
        if (f5456a == null) {
            f5456a = (HashMap) b.b(context, "preview", "previewPlacements.bin");
        }
        if (f5456a == null) {
            f5456a = new HashMap<>();
        }
        return f5456a;
    }

    public static synchronized void a(Context context, PreviewConfig previewConfig) {
        synchronized (SASPreviewHandlerActivity.class) {
            if (previewConfig != null) {
                if (previewConfig.insertionId >= 0) {
                    a(context).put(previewConfig.a(), previewConfig);
                } else {
                    a(context).remove(previewConfig.a());
                }
            } else {
                a(context).clear();
            }
            b.a(context, f5456a, "preview", "previewPlacements.bin");
        }
    }

    public static synchronized PreviewConfig a(Context context, String str, String str2, String str3) {
        PreviewConfig previewConfig;
        synchronized (SASPreviewHandlerActivity.class) {
            previewConfig = a(context).get(b(str, str2, str3));
        }
        return previewConfig;
    }
}
