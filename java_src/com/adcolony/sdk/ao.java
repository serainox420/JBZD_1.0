package com.adcolony.sdk;

import android.content.Intent;
import android.graphics.Bitmap;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Environment;
import android.os.Vibrator;
import android.view.View;
import android.widget.Toast;
import com.facebook.GraphResponse;
import com.facebook.internal.NativeProtocol;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.firebase.a.a;
import com.millennialmedia.NativeAd;
import com.mobsandgeeks.saripaar.DateFormats;
import com.mopub.common.AdType;
import com.mopub.mraid.MraidNativeCommandHandler;
import com.pubmatic.sdk.common.CommonConstants;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ao {
    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        a.a("System.open_store", new ac() { // from class: com.adcolony.sdk.ao.1
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                ao.this.b(zVar);
            }
        });
        a.a("System.save_screenshot", new ac() { // from class: com.adcolony.sdk.ao.8
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                ao.this.c(zVar);
            }
        });
        a.a("System.telephone", new ac() { // from class: com.adcolony.sdk.ao.9
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                ao.this.d(zVar);
            }
        });
        a.a("System.sms", new ac() { // from class: com.adcolony.sdk.ao.10
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                ao.this.e(zVar);
            }
        });
        a.a("System.vibrate", new ac() { // from class: com.adcolony.sdk.ao.11
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                ao.this.f(zVar);
            }
        });
        a.a("System.open_browser", new ac() { // from class: com.adcolony.sdk.ao.12
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                ao.this.g(zVar);
            }
        });
        a.a("System.mail", new ac() { // from class: com.adcolony.sdk.ao.13
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                ao.this.h(zVar);
            }
        });
        a.a("System.launch_app", new ac() { // from class: com.adcolony.sdk.ao.14
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                ao.this.i(zVar);
            }
        });
        a.a("System.create_calendar_event", new ac() { // from class: com.adcolony.sdk.ao.15
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                ao.this.j(zVar);
            }
        });
        a.a("System.check_app_presence", new ac() { // from class: com.adcolony.sdk.ao.2
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                ao.this.k(zVar);
            }
        });
        a.a("System.check_social_presence", new ac() { // from class: com.adcolony.sdk.ao.3
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                ao.this.l(zVar);
            }
        });
        a.a("System.social_post", new ac() { // from class: com.adcolony.sdk.ao.4
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                ao.this.m(zVar);
            }
        });
        a.a("System.make_in_app_purchase", new ac() { // from class: com.adcolony.sdk.ao.5
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                ao.this.a(zVar);
            }
        });
    }

    boolean a(z zVar) {
        String b = s.b(zVar.b, "ad_session_id");
        AdColonyInterstitial adColonyInterstitial = a.m.g.b.get(b);
        ax axVar = a.m.g.e.get(b);
        if ((adColonyInterstitial == null || adColonyInterstitial.f980a == null || adColonyInterstitial.b == null) && (axVar == null || axVar.c == null || axVar.b == null)) {
            return false;
        }
        if (axVar == null) {
            new z("AdUnit.make_in_app_purchase", adColonyInterstitial.b.l).b();
        } else {
            new z("AdUnit.make_in_app_purchase", axVar.b.l).b();
        }
        b(s.b(zVar.b, "ad_session_id"));
        return true;
    }

    boolean b(z zVar) {
        if (a.l == null) {
            return false;
        }
        JSONObject a2 = s.a();
        String b = s.b(zVar.b, "product_id");
        if (b.equals("")) {
            b = s.b(zVar.b, "handle");
        }
        try {
            a.l.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(b)));
            s.a(a2, GraphResponse.SUCCESS_KEY, true);
            zVar.a(a2).b();
            a(s.b(zVar.b, "ad_session_id"));
            b(s.b(zVar.b, "ad_session_id"));
            return true;
        } catch (Exception e) {
            a("Unable to open.", 0);
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            return false;
        }
    }

    boolean c(final z zVar) {
        if (a.l == null) {
            return false;
        }
        b(s.b(zVar.b, "ad_session_id"));
        final JSONObject a2 = s.a();
        String str = Environment.getExternalStorageDirectory().toString() + "/Pictures/AdColony_Screenshots/AdColony_Screenshot_" + System.currentTimeMillis() + ".jpg";
        View rootView = a.l.getWindow().getDecorView().getRootView();
        rootView.setDrawingCacheEnabled(true);
        Bitmap createBitmap = Bitmap.createBitmap(rootView.getDrawingCache());
        rootView.setDrawingCacheEnabled(false);
        try {
            File file = new File(Environment.getExternalStorageDirectory().toString() + "/Pictures");
            File file2 = new File(Environment.getExternalStorageDirectory().toString() + "/Pictures/AdColony_Screenshots");
            file.mkdir();
            file2.mkdir();
        } catch (Exception e) {
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(str));
            createBitmap.compress(Bitmap.CompressFormat.JPEG, 90, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            MediaScannerConnection.scanFile(a.l, new String[]{str}, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: com.adcolony.sdk.ao.6
                @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                public void onScanCompleted(String str2, Uri uri) {
                    ao.this.a("Screenshot saved to Gallery!", 0);
                    s.a(a2, GraphResponse.SUCCESS_KEY, true);
                    zVar.a(a2).b();
                }
            });
            return true;
        } catch (FileNotFoundException e2) {
            a("Error saving screenshot.", 0);
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            return false;
        } catch (IOException e3) {
            a("Error saving screenshot.", 0);
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            return false;
        }
    }

    boolean d(z zVar) {
        if (a.l == null) {
            return false;
        }
        JSONObject a2 = s.a();
        try {
            a.l.startActivity(new Intent("android.intent.action.DIAL").setData(Uri.parse("tel:" + s.b(zVar.b, "phone_number"))));
            s.a(a2, GraphResponse.SUCCESS_KEY, true);
            zVar.a(a2).b();
            a(s.b(zVar.b, "ad_session_id"));
            b(s.b(zVar.b, "ad_session_id"));
            return true;
        } catch (Exception e) {
            a("Failed to dial number.", 0);
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            return false;
        }
    }

    boolean e(z zVar) {
        if (a.l == null) {
            return false;
        }
        JSONObject a2 = s.a();
        JSONArray g = s.g(zVar.b, "recipients");
        String str = "";
        int i = 0;
        while (i < g.length()) {
            if (i != 0) {
                str = str + ";";
            }
            String str2 = str + s.b(g, i);
            i++;
            str = str2;
        }
        try {
            a.l.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("smsto:" + str)).putExtra("sms_body", s.b(zVar.b, NativeAd.COMPONENT_ID_BODY)));
            s.a(a2, GraphResponse.SUCCESS_KEY, true);
            zVar.a(a2).b();
            a(s.b(zVar.b, "ad_session_id"));
            b(s.b(zVar.b, "ad_session_id"));
            return true;
        } catch (Exception e) {
            a("Failed to create sms.", 0);
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            return false;
        }
    }

    boolean f(z zVar) {
        if (a.l == null) {
            return false;
        }
        int a2 = s.a(zVar.b, "length_ms", 500);
        JSONObject a3 = s.a();
        JSONArray v = a.m.m.v();
        boolean z = false;
        for (int i = 0; i < v.length(); i++) {
            if (s.b(v, i).equals("android.permission.VIBRATE")) {
                z = true;
            }
        }
        if (!z) {
            u.e.b("No vibrate permission detected.");
            s.a(a3, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a3).b();
            return false;
        }
        try {
            ((Vibrator) a.l.getSystemService("vibrator")).vibrate(a2);
            s.a(a3, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a3).b();
            return true;
        } catch (Exception e) {
            u.e.b("Vibrate command failed.");
            s.a(a3, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a3).b();
            return false;
        }
    }

    boolean g(z zVar) {
        if (a.l == null) {
            return false;
        }
        JSONObject a2 = s.a();
        try {
            String b = s.b(zVar.b, "url");
            if (b.startsWith("browser")) {
                b = b.replaceFirst("browser", "http");
            }
            if (b.startsWith("safari")) {
                b = b.replaceFirst("safari", "http");
            }
            a.l.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(b)));
            s.a(a2, GraphResponse.SUCCESS_KEY, true);
            zVar.a(a2).b();
            a(s.b(zVar.b, "ad_session_id"));
            b(s.b(zVar.b, "ad_session_id"));
            return true;
        } catch (Exception e) {
            a("Failed to launch browser.", 0);
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            return false;
        }
    }

    boolean h(z zVar) {
        if (a.l == null) {
            return false;
        }
        JSONObject a2 = s.a();
        JSONArray g = s.g(zVar.b, "recipients");
        boolean d = s.d(zVar.b, AdType.HTML);
        String b = s.b(zVar.b, "subject");
        String b2 = s.b(zVar.b, NativeAd.COMPONENT_ID_BODY);
        String[] strArr = new String[g.length()];
        for (int i = 0; i < g.length(); i++) {
            strArr[i] = s.b(g, i);
        }
        try {
            Intent intent = new Intent("android.intent.action.SEND");
            if (!d) {
                intent.setType("plain/text");
            }
            intent.putExtra("android.intent.extra.SUBJECT", b).putExtra("android.intent.extra.TEXT", b2).putExtra("android.intent.extra.EMAIL", strArr);
            a.l.startActivity(intent);
            s.a(a2, GraphResponse.SUCCESS_KEY, true);
            zVar.a(a2).b();
            a(s.b(zVar.b, "ad_session_id"));
            b(s.b(zVar.b, "ad_session_id"));
            return true;
        } catch (Exception e) {
            a("Failed to send email.", 0);
            e.printStackTrace();
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            return false;
        }
    }

    boolean i(z zVar) {
        if (a.l == null) {
            return false;
        }
        JSONObject a2 = s.a();
        if (s.d(zVar.b, "deep_link")) {
            return b(zVar);
        }
        try {
            a.l.startActivity(a.l.getPackageManager().getLaunchIntentForPackage(s.b(zVar.b, "handle")));
            s.a(a2, GraphResponse.SUCCESS_KEY, true);
            zVar.a(a2).b();
            a(s.b(zVar.b, "ad_session_id"));
            b(s.b(zVar.b, "ad_session_id"));
            return true;
        } catch (Exception e) {
            a("Failed to launch external application.", 0);
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            return false;
        }
    }

    boolean j(z zVar) {
        Date date;
        Date date2;
        Date date3;
        long j;
        Intent putExtra;
        String str;
        String str2;
        String str3;
        if (a.l == null) {
            return false;
        }
        JSONObject a2 = s.a();
        Date date4 = null;
        Date date5 = null;
        String str4 = "";
        String str5 = "";
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'hh:mmZ");
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd'T'hh:mm:ssZ");
        SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat(DateFormats.YMD);
        JSONObject f = s.f(zVar.b, NativeProtocol.WEB_DIALOG_PARAMS);
        JSONObject f2 = s.f(f, "recurrence");
        JSONArray b = s.b();
        JSONArray b2 = s.b();
        JSONArray b3 = s.b();
        String b4 = s.b(f, "description");
        s.b(f, a.b.LOCATION);
        String b5 = s.b(f, SASNativeVideoAdElement.TRACKING_EVENT_NAME_START);
        String b6 = s.b(f, "end");
        String b7 = s.b(f, "summary");
        if (f2 != null && f2.length() > 0) {
            str5 = s.b(f2, "expires");
            str4 = s.b(f2, "frequency");
            b = s.g(f2, "daysInWeek");
            b2 = s.g(f2, "daysInMonth");
            b3 = s.g(f2, "daysInYear");
        }
        String str6 = b7.equals("") ? b4 : b7;
        try {
            date4 = simpleDateFormat.parse(b5);
            date5 = simpleDateFormat.parse(b6);
        } catch (Exception e) {
        }
        if (date4 == null) {
            try {
                date4 = simpleDateFormat2.parse(b5);
                date5 = simpleDateFormat2.parse(b6);
                date = date4;
            } catch (Exception e2) {
                date = date4;
            }
        } else {
            date = date4;
        }
        try {
            date2 = simpleDateFormat.parse(str5);
        } catch (Exception e3) {
            date2 = null;
        }
        if (date2 == null) {
            try {
                date3 = simpleDateFormat3.parse(str5);
            } catch (Exception e4) {
                date3 = date2;
            }
        } else {
            date3 = date2;
        }
        if (date == null) {
            a("Unable to create Calendar Event", 0);
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            return false;
        }
        long time = date.getTime();
        long time2 = date5.getTime();
        long j2 = 0;
        if (date3 != null) {
            j2 = (date3.getTime() - date.getTime()) / 1000;
        }
        if (str4.equals("DAILY")) {
            j = (j2 / 86400) + 1;
        } else if (str4.equals("WEEKLY")) {
            j = (j2 / 604800) + 1;
        } else if (str4.equals("MONTHLY")) {
            j = (j2 / 2629800) + 1;
        } else if (!str4.equals("YEARLY")) {
            j = 0;
        } else {
            j = (j2 / 31557600) + 1;
        }
        if (f2 != null && f2.length() > 0) {
            String str7 = "FREQ=" + str4 + ";COUNT=" + j;
            try {
                if (b.length() != 0) {
                    String str8 = "";
                    for (int i = 0; i < b.length(); i++) {
                        if (i > 0) {
                            str8 = str8 + ",";
                        }
                        switch (b.getInt(i)) {
                            case 1:
                                str8 = str8 + "MO";
                                break;
                            case 2:
                                str8 = str8 + "TU";
                                break;
                            case 3:
                                str8 = str8 + "WE";
                                break;
                            case 4:
                                str8 = str8 + "TH";
                                break;
                            case 5:
                                str8 = str8 + "FR";
                                break;
                            case 6:
                                str8 = str8 + "SA";
                                break;
                            case 7:
                                str8 = str8 + "SU";
                                break;
                        }
                    }
                    str2 = str7 + ";BYDAY=" + str8;
                } else {
                    str2 = str7;
                }
                try {
                    if (b2.length() != 0) {
                        String str9 = "";
                        for (int i2 = 0; i2 < b2.length(); i2++) {
                            if (i2 > 0) {
                                str9 = str9 + ",";
                            }
                            str9 = str9 + b2.getInt(i2);
                        }
                        str3 = str2 + ";BYMONTHDAY=" + str9;
                    } else {
                        str3 = str2;
                    }
                    try {
                        if (b3.length() != 0) {
                            String str10 = "";
                            for (int i3 = 0; i3 < b3.length(); i3++) {
                                if (i3 > 0) {
                                    str10 = str10 + ",";
                                }
                                str10 = str10 + b3.getInt(i3);
                            }
                            str = str3 + ";BYYEARDAY=" + str10;
                        } else {
                            str = str3;
                        }
                    } catch (JSONException e5) {
                        str = str3;
                    }
                } catch (JSONException e6) {
                    str = str2;
                }
            } catch (JSONException e7) {
                str = str7;
            }
            putExtra = new Intent("android.intent.action.EDIT").setType(MraidNativeCommandHandler.ANDROID_CALENDAR_CONTENT_TYPE).putExtra("title", str6).putExtra("description", b4).putExtra("beginTime", time).putExtra("endTime", time2).putExtra("rrule", str);
        } else {
            putExtra = new Intent("android.intent.action.EDIT").setType(MraidNativeCommandHandler.ANDROID_CALENDAR_CONTENT_TYPE).putExtra("title", str6).putExtra("description", b4).putExtra("beginTime", time).putExtra("endTime", time2);
        }
        try {
            a.l.startActivity(putExtra);
            s.a(a2, GraphResponse.SUCCESS_KEY, true);
            zVar.a(a2).b();
            a(s.b(zVar.b, "ad_session_id"));
            b(s.b(zVar.b, "ad_session_id"));
            return true;
        } catch (Exception e8) {
            a("Unable to create Calendar Event.", 0);
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            return false;
        }
    }

    boolean k(z zVar) {
        JSONObject a2 = s.a();
        String b = s.b(zVar.b, "name");
        boolean a3 = au.a(b);
        s.a(a2, GraphResponse.SUCCESS_KEY, true);
        s.a(a2, "result", a3);
        s.a(a2, "name", b);
        s.a(a2, "service", b);
        zVar.a(a2).b();
        return true;
    }

    boolean l(z zVar) {
        return k(zVar);
    }

    boolean m(z zVar) {
        if (a.l == null) {
            return false;
        }
        JSONObject a2 = s.a();
        try {
            a.l.startActivity(Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", s.b(zVar.b, CommonConstants.RESPONSE_TEXT) + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + s.b(zVar.b, "url")), "Share this post via..."));
            s.a(a2, GraphResponse.SUCCESS_KEY, true);
            zVar.a(a2).b();
            a(s.b(zVar.b, "ad_session_id"));
            b(s.b(zVar.b, "ad_session_id"));
            return true;
        } catch (Exception e) {
            a("Unable to create social post.", 0);
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            return false;
        }
    }

    void a(final String str, final int i) {
        if (a.l != null) {
            a.l.runOnUiThread(new Runnable() { // from class: com.adcolony.sdk.ao.7
                @Override // java.lang.Runnable
                public void run() {
                    Toast.makeText(a.l, str, i).show();
                }
            });
        }
    }

    void a(String str) {
        if (a.m != null && a.m.g != null) {
            AdColonyInterstitial adColonyInterstitial = a.m.g.b.get(str);
            if (adColonyInterstitial != null && adColonyInterstitial.f980a != null) {
                adColonyInterstitial.f980a.onLeftApplication(adColonyInterstitial);
                return;
            }
            ax axVar = a.m.g.e.get(str);
            if (axVar != null && axVar.c != null && (axVar.c instanceof AdColonyNativeAdViewListener)) {
                ((AdColonyNativeAdViewListener) axVar.c).onLeftApplication((AdColonyNativeAdView) axVar);
            }
        }
    }

    void b(String str) {
        if (a.m != null && a.m.g != null) {
            AdColonyInterstitial adColonyInterstitial = a.m.g.b.get(str);
            if (adColonyInterstitial != null && adColonyInterstitial.f980a != null) {
                adColonyInterstitial.f980a.onClicked(adColonyInterstitial);
                return;
            }
            ax axVar = a.m.g.e.get(str);
            if (axVar != null && axVar.c != null && (axVar.c instanceof AdColonyNativeAdViewListener)) {
                ((AdColonyNativeAdViewListener) axVar.c).onClicked((AdColonyNativeAdView) axVar);
            }
        }
    }
}
