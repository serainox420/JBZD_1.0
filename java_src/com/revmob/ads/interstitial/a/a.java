package com.revmob.ads.interstitial.a;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import com.madsdk.AdView;
import com.mopub.common.AdType;
import com.mopub.common.FullAdType;
import com.mopub.mobileads.VastIconXmlManager;
import com.openx.view.mraid.JSInterface;
import com.revmob.RevMobAdsListener;
import com.revmob.ads.a.e;
import com.revmob.ads.a.f;
import com.revmob.ads.a.g;
import com.revmob.internal.c;
import com.revmob.internal.u;
import com.revmob.internal.w;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.util.ByteArrayBuffer;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class a extends com.revmob.ads.a.b {
    private Activity d;
    private boolean e;
    private boolean f;

    public a(com.revmob.ads.a.a aVar, RevMobAdsListener revMobAdsListener, Activity activity) {
        super(aVar, revMobAdsListener);
        this.d = activity;
        this.f = true;
    }

    private b a(String str, RevMobAdsListener revMobAdsListener) {
        String str2;
        Bitmap bitmap;
        boolean z;
        Bitmap bitmap2;
        Bitmap bitmap3;
        int i;
        String str3;
        Bitmap bitmap4;
        File file;
        Bitmap bitmap5;
        int i2;
        boolean z2;
        Bitmap bitmap6;
        JSONObject jSONObject = new JSONObject(str).getJSONObject("fullscreen");
        String b = b(jSONObject);
        boolean c = c(jSONObject);
        JSONArray jSONArray = jSONObject.getJSONArray("links");
        int i3 = this.d.getResources().getConfiguration().orientation;
        String a2 = a(jSONArray);
        boolean a3 = a(jSONObject);
        String b2 = b(jSONArray);
        String c2 = c(jSONArray);
        String a4 = a(jSONArray, AdType.HTML);
        String a5 = a(jSONArray, "dsp_url");
        String a6 = a(jSONArray, "dsp_html");
        String a7 = a(jSONArray, "image_portrait");
        String a8 = a(jSONArray, "image_landscape");
        String a9 = a(jSONArray, "framePortrait");
        String a10 = a(jSONArray, "frameLandscape");
        String a11 = a(jSONArray, "preRoll", "landscape");
        String a12 = a(jSONArray, "preRoll", "portrait");
        String a13 = a(jSONArray, "preRoll", ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        int b3 = b(jSONArray, "preRoll", "red");
        int b4 = b(jSONArray, "preRoll", "green");
        int b5 = b(jSONArray, "preRoll", "blue");
        int b6 = b(jSONArray, "preRoll", "alpha");
        String a14 = a(jSONArray, "postRoll", ShareConstants.WEB_DIALOG_PARAM_HREF);
        String a15 = a(jSONArray, "postRoll", ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        int b7 = b(jSONArray, "preRoll", "red");
        int b8 = b(jSONArray, "preRoll", "green");
        int b9 = b(jSONArray, "preRoll", "blue");
        int b10 = b(jSONArray, "preRoll", "alpha");
        Bitmap bitmap7 = null;
        Bitmap bitmap8 = null;
        Bitmap bitmap9 = null;
        double d = 0.0d;
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        int a16 = a(jSONObject, "orientation");
        int a17 = a(jSONObject, "orientationLock");
        String a18 = a(jSONArray, AdView.DEFAULT_IMAGE_NAME);
        String a19 = a(jSONArray, "imageSize");
        double b11 = b(jSONObject, "videoSkipTime");
        a(jSONObject, "timeLeftTime");
        int a20 = a(jSONObject, "videoEnd");
        double b12 = b(jSONObject, "fullscreenPercentage");
        String a21 = a(jSONArray, AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
        String a22 = a(jSONArray, "replay_button");
        String a23 = a(jSONArray, "revmob_logo");
        a(jSONArray, "volume_mute");
        a(jSONArray, "volume_up");
        String a24 = a(jSONArray, "sound");
        String a25 = a(jSONArray, "sound_off");
        String a26 = a(jSONArray, "close_button");
        String a27 = a(jSONArray, "download_button");
        int i4 = 0;
        int i5 = 0;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        boolean z3 = false;
        this.e = true;
        arrayList3.add("clicks");
        arrayList4.add("errors");
        arrayList5.add("impressions");
        int[] iArr = {0, 0};
        if (a19 != null) {
            String[] strArr = null;
            if (a19.contains(",")) {
                strArr = a19.split(",");
            } else if (a19.contains(JSInterface.JSON_X)) {
                strArr = a19.split(JSInterface.JSON_X);
            }
            try {
                iArr[0] = Integer.parseInt(strArr[0]);
                iArr[1] = Integer.parseInt(strArr[1]);
            } catch (Exception e) {
                iArr[0] = 0;
                iArr[1] = 0;
                u.a(e, this.c.c, w.c, null, "createData1");
            }
        }
        if (a21 != null && jSONObject.has(FullAdType.VAST)) {
            JSONObject jSONObject2 = jSONObject.getJSONObject(FullAdType.VAST);
            JSONArray jSONArray2 = jSONObject2.has("trackingEvents") ? jSONObject2.getJSONArray("trackingEvents") : null;
            JSONArray jSONArray3 = jSONObject2.has("clicks") ? jSONObject2.getJSONArray("clicks") : null;
            JSONArray jSONArray4 = jSONObject2.has("impressions") ? jSONObject2.getJSONArray("impressions") : null;
            JSONArray jSONArray5 = jSONObject2.has("errors") ? jSONObject2.getJSONArray("errors") : null;
            if (jSONArray2 != null) {
                a(arrayList6, arrayList, jSONArray2);
            }
            if (jSONArray3 != null) {
                a(jSONArray3, arrayList3);
            }
            if (jSONArray5 != null) {
                a(jSONArray5, arrayList4);
            }
            if (jSONArray4 != null) {
                a(jSONArray4, arrayList5);
            }
            arrayList2.add(arrayList3);
            arrayList2.add(arrayList5);
            arrayList2.add(arrayList4);
        }
        int i6 = 0;
        f fVar = new f();
        e eVar = new e();
        try {
            JSONObject jSONObject3 = jSONObject.getJSONObject("animation");
            long j = jSONObject3.getLong(VastIconXmlManager.DURATION);
            fVar.a(j);
            eVar.a(j);
            JSONArray jSONArray6 = jSONObject3.getJSONArray("show");
            for (int i7 = 0; i7 < jSONArray6.length(); i7++) {
                fVar.a(jSONArray6.getString(i7));
            }
            JSONArray jSONArray7 = jSONObject3.getJSONArray("close");
            for (int i8 = 0; i8 < jSONArray7.length(); i8++) {
                eVar.a(jSONArray7.getString(i8));
            }
            i6 = jSONObject3.getInt("parallax_delta");
        } catch (JSONException e2) {
        }
        String str4 = null;
        try {
            if (jSONObject.has("sound")) {
                JSONObject jSONObject4 = jSONObject.getJSONObject("sound");
                if (jSONObject4.has("on_show")) {
                    str4 = jSONObject4.getString("on_show");
                }
                try {
                    if (jSONObject4.has("on_click")) {
                        jSONObject4.getString("on_click");
                    }
                } catch (JSONException e3) {
                    str2 = str4;
                }
            }
            str2 = str4;
        } catch (JSONException e4) {
            str2 = null;
        }
        c cVar = new c();
        Bitmap bitmap10 = null;
        if (a5 != null || a6 != null) {
            if (a9 != null) {
                bitmap = BitmapFactory.decodeFile(c(a9).getAbsolutePath());
                this.e = true;
            } else {
                bitmap = null;
            }
            if (a10 != null) {
                bitmap2 = BitmapFactory.decodeFile(c(a10).getAbsolutePath());
                this.e = true;
                z = false;
                bitmap3 = null;
                i = a17;
                str3 = null;
                bitmap4 = null;
            } else {
                z = false;
                bitmap2 = null;
                bitmap3 = null;
                i = a17;
                str3 = null;
                bitmap4 = null;
            }
        } else if (a4 != null) {
            HttpResponse b13 = cVar.b(a4);
            bitmap2 = null;
            bitmap = null;
            bitmap3 = null;
            i = a17;
            bitmap4 = null;
            str3 = (b13 == null || b13.getEntity() == null) ? null : c.a(b13.getEntity());
            z = false;
        } else if (a7 != null && a8 != null) {
            bitmap3 = BitmapFactory.decodeFile(c(a7).getAbsolutePath());
            Bitmap decodeFile = BitmapFactory.decodeFile(c(a8).getAbsolutePath());
            if (bitmap3 == null || decodeFile == null) {
                bitmap5 = null;
            } else {
                i5 = bitmap3.getWidth();
                i4 = bitmap3.getHeight();
                int width = decodeFile.getWidth();
                if ((decodeFile.getHeight() == i4 || i5 == width) && ((i4 <= i5 || i3 != 2) && (i4 >= i5 || i3 != 1))) {
                    i2 = 1;
                    z2 = true;
                    bitmap6 = bitmap3;
                } else {
                    z2 = false;
                    i2 = a17;
                    bitmap6 = null;
                }
                if (iArr[0] == 0 || iArr[1] == 0) {
                    z3 = z2;
                    a17 = i2;
                    bitmap5 = bitmap6;
                } else {
                    z3 = (i4 == 0 || i4 == iArr[0] || i4 == iArr[1] || i4 % iArr[0] == 0 || i4 % iArr[1] == 0 || iArr[0] % i4 == 0 || iArr[1] % i4 == 0) ? z2 : true;
                    if (i5 == 0 || i5 == iArr[0] || i5 == iArr[1] || i5 % iArr[0] == 0 || i5 % iArr[1] == 0 || iArr[0] % i5 == 0 || iArr[1] % i5 == 0) {
                        a17 = i2;
                        bitmap5 = bitmap6;
                    } else {
                        z3 = true;
                        a17 = i2;
                        bitmap5 = bitmap6;
                    }
                }
            }
            if (!z3) {
                if (a9 != null) {
                    bitmap = BitmapFactory.decodeFile(c(a9).getAbsolutePath());
                    this.e = true;
                } else {
                    bitmap = null;
                }
                if (a10 != null) {
                    Bitmap decodeFile2 = BitmapFactory.decodeFile(c(a10).getAbsolutePath());
                    this.e = true;
                    bitmap2 = decodeFile2;
                    i = a17;
                    bitmap10 = decodeFile;
                    bitmap4 = bitmap5;
                    z = z3;
                    str3 = null;
                } else {
                    bitmap2 = null;
                    i = a17;
                    bitmap10 = decodeFile;
                    bitmap4 = bitmap5;
                    z = z3;
                    str3 = null;
                }
            } else {
                bitmap2 = null;
                bitmap = null;
                i = a17;
                bitmap10 = decodeFile;
                bitmap4 = bitmap5;
                z = z3;
                str3 = null;
            }
        } else if (a18 != null) {
            Bitmap decodeFile3 = BitmapFactory.decodeFile(c(a18).getAbsolutePath());
            i5 = decodeFile3.getWidth();
            i4 = decodeFile3.getHeight();
            bitmap2 = null;
            bitmap = null;
            bitmap3 = null;
            i = a17;
            bitmap4 = decodeFile3;
            z = false;
            str3 = null;
        } else {
            bitmap2 = null;
            bitmap = null;
            bitmap3 = null;
            i = a17;
            bitmap4 = null;
            z = false;
            str3 = null;
        }
        if (a26 != null) {
            g.a(Drawable.createFromPath(c(a26).getAbsolutePath()));
        }
        Bitmap decodeFile4 = a22 != null ? BitmapFactory.decodeFile(c(a22).getAbsolutePath()) : null;
        Bitmap decodeFile5 = a24 != null ? BitmapFactory.decodeFile(c(a24).getAbsolutePath()) : null;
        Bitmap decodeFile6 = a25 != null ? BitmapFactory.decodeFile(c(a25).getAbsolutePath()) : null;
        Bitmap decodeFile7 = a27 != null ? BitmapFactory.decodeFile(c(a27).getAbsolutePath()) : null;
        try {
            jSONObject.getBoolean("rewarded");
        } catch (JSONException e5) {
        }
        Bitmap decodeFile8 = a23 != null ? BitmapFactory.decodeFile(c(a23).getAbsolutePath()) : null;
        if (a21 != null) {
            file = c(a21);
            if (a11 != null && a12 != null) {
                bitmap8 = BitmapFactory.decodeFile(c(a11).getAbsolutePath());
                bitmap7 = BitmapFactory.decodeFile(c(a12).getAbsolutePath());
                if (bitmap7 != null) {
                    d = bitmap7.getWidth();
                    d2 = bitmap7.getHeight();
                }
            }
            if (a14 != null && (bitmap9 = BitmapFactory.decodeFile(c(a14).getAbsolutePath())) != null) {
                d3 = bitmap9.getWidth();
                d4 = bitmap9.getHeight();
            }
        } else {
            file = null;
        }
        if (z) {
            bitmap = null;
            bitmap2 = null;
        }
        if (this.e) {
            return new b(c2, b2, a2, a3, revMobAdsListener, a4, str3, a5, a6, bitmap4, bitmap10, bitmap3, fVar, eVar, b, c, str2, i6, b11, a20, a21, decodeFile4, decodeFile8, file, decodeFile5, decodeFile6, arrayList, arrayList2, bitmap, bitmap2, i4, i5, bitmap7, bitmap8, bitmap9, d2, d, d4, d3, a13, a15, b3, b4, b5, b6, b7, b8, b9, b10, a16, b12, i, decodeFile7);
        }
        return null;
    }

    private static void a(List list, ArrayList arrayList, JSONArray jSONArray) {
        for (int i = 0; i < 13; i++) {
            String str = null;
            switch (i) {
                case 0:
                    str = SASNativeVideoAdElement.TRACKING_EVENT_NAME_MIDPOINT;
                    break;
                case 1:
                    str = SASNativeVideoAdElement.TRACKING_EVENT_NAME_THIRD_QUARTILE;
                    break;
                case 2:
                    str = SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE;
                    break;
                case 3:
                    str = SASNativeVideoAdElement.TRACKING_EVENT_NAME_CREATIVE_VIEW;
                    break;
                case 4:
                    str = SASNativeVideoAdElement.TRACKING_EVENT_NAME_START;
                    break;
                case 5:
                    str = SASNativeVideoAdElement.TRACKING_EVENT_NAME_FIRST_QUARTILE;
                    break;
                case 6:
                    str = SASNativeVideoAdElement.TRACKING_EVENT_NAME_MUTE;
                    break;
                case 7:
                    str = SASNativeVideoAdElement.TRACKING_EVENT_NAME_UNMUTE;
                    break;
                case 8:
                    str = "close";
                    break;
                case 9:
                    str = SASNativeVideoAdElement.TRACKING_EVENT_NAME_PAUSE;
                    break;
                case 10:
                    str = SASNativeVideoAdElement.TRACKING_EVENT_NAME_RESUME;
                    break;
                case 11:
                    str = "fullscreenPortraitView";
                    break;
                case 12:
                    str = "fullscreenLandscapeView";
                    break;
            }
            list.add(str);
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(list.get(i2));
            arrayList.add(arrayList2);
            a(jSONArray, (String) arrayList2.get(0), arrayList2);
            for (int i3 = 1; i3 < arrayList2.size(); i3++) {
            }
        }
    }

    private File c(String str) {
        URL url;
        File file;
        IOException e;
        String str2;
        new com.revmob.a.a();
        try {
            url = new URL(str);
            try {
                String path = this.d.getApplicationContext().getCacheDir().getPath();
                try {
                    str2 = com.revmob.a.a.a(str);
                } catch (NoSuchAlgorithmException e2) {
                    String lastPathSegment = Uri.parse(str).getLastPathSegment();
                    u.a(e2, this.c.c, w.c, null, "downloadFile1");
                    e2.printStackTrace();
                    str2 = lastPathSegment;
                }
                file = new File(path, str2);
            } catch (IOException e3) {
                file = null;
                e = e3;
            }
        } catch (IOException e4) {
            url = null;
            file = null;
            e = e4;
        }
        try {
            file.getAbsolutePath();
            if (!file.exists()) {
                System.currentTimeMillis();
                BufferedInputStream bufferedInputStream = new BufferedInputStream(url.openConnection().getInputStream());
                ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(50);
                while (true) {
                    int read = bufferedInputStream.read();
                    if (read == -1) {
                        break;
                    }
                    byteArrayBuffer.append((byte) read);
                }
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                fileOutputStream.write(byteArrayBuffer.toByteArray());
                fileOutputStream.close();
            }
        } catch (IOException e5) {
            e = e5;
            this.e = false;
            if (url != null) {
                u.a(e, this.c.c, w.f4815a, url.toString(), "downloadFile2");
            }
            e.printStackTrace();
            return file;
        }
        return file;
    }

    public final void a() {
        this.f = false;
    }

    @Override // com.revmob.ads.a.b, com.revmob.client.f
    public final void a(String str) {
        double currentTimeMillis = System.currentTimeMillis();
        b a2 = a(str, this.f4741a);
        if (a2 != null && this.f) {
            a2.d = this.c.c;
            a2.f = this.c.b;
            com.revmob.a.e.a(a2.f, (System.currentTimeMillis() - currentTimeMillis) / 1000.0d);
            this.b.updateWithData(a2);
        } else if (!this.f) {
            this.f = true;
        } else if (this.f4741a == null) {
        } else {
            this.f4741a.onRevMobAdNotReceived("An error occurred during the ad download.");
        }
    }

    public final boolean b() {
        return this.f;
    }
}
