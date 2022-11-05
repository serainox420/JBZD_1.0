package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Base64;
import android.view.View;
import android.widget.Toast;
import com.mopub.common.AdReport;
import com.mopub.common.util.DateAndTime;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import java.io.ByteArrayOutputStream;
import java.text.SimpleDateFormat;
import java.util.Locale;
/* loaded from: classes3.dex */
public class AdAlertReporter {

    /* renamed from: a  reason: collision with root package name */
    private final String f4402a = new SimpleDateFormat("M/d/yy hh:mm:ss a z", Locale.US).format(DateAndTime.now());
    private final View b;
    private final Context c;
    private Intent d;
    private String e;
    private String f;

    public AdAlertReporter(Context context, View view, AdReport adReport) {
        this.b = view;
        this.c = context;
        a();
        String a2 = a(b());
        this.e = "";
        this.f = "";
        if (adReport != null) {
            this.e = adReport.toString();
            this.f = adReport.getResponseString();
        }
        c();
        a(this.e, this.f, a2);
    }

    public void send() {
        try {
            Intents.startActivity(this.c, this.d);
        } catch (IntentNotResolvableException e) {
            Toast.makeText(this.c, "No email client available", 0).show();
        }
    }

    private void a() {
        this.d = new Intent("android.intent.action.SENDTO");
        this.d.setData(Uri.parse("mailto:creative-review@mopub.com"));
    }

    private Bitmap b() {
        if (this.b == null || this.b.getRootView() == null) {
            return null;
        }
        View rootView = this.b.getRootView();
        boolean isDrawingCacheEnabled = rootView.isDrawingCacheEnabled();
        rootView.setDrawingCacheEnabled(true);
        Bitmap drawingCache = rootView.getDrawingCache();
        if (drawingCache == null) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawingCache);
        rootView.setDrawingCacheEnabled(isDrawingCacheEnabled);
        return createBitmap;
    }

    private String a(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.JPEG, 25, byteArrayOutputStream);
            return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
        } catch (Exception e) {
            return null;
        }
    }

    private void c() {
        this.d.putExtra("android.intent.extra.SUBJECT", "New creative violation report - " + this.f4402a);
    }

    private void a(String... strArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < strArr.length; i++) {
            sb.append(strArr[i]);
            if (i != strArr.length - 1) {
                sb.append("\n=================\n");
            }
        }
        this.d.putExtra("android.intent.extra.TEXT", sb.toString());
    }
}
