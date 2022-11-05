package com.revmob.ads.banner.a;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.madsdk.AdView;
import com.mopub.common.AdType;
import com.mopub.mobileads.VastIconXmlManager;
import com.openx.view.mraid.JSInterface;
import com.revmob.RevMobAdsListener;
import com.revmob.ads.a.e;
import com.revmob.ads.a.f;
import com.revmob.internal.RMLog;
import com.revmob.internal.c;
import com.revmob.internal.u;
import com.revmob.internal.w;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.security.NoSuchAlgorithmException;
import org.apache.http.util.ByteArrayBuffer;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class a extends com.revmob.ads.a.b {
    private Activity d;

    public a(com.revmob.ads.a.a aVar, RevMobAdsListener revMobAdsListener, Activity activity) {
        super(aVar, revMobAdsListener);
        this.d = activity;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
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
                    u.a(e2, this.c.c, w.c, null, "downloadFileBanner1");
                    e2.printStackTrace();
                    str2 = lastPathSegment;
                }
                file = new File(path, str2);
            } catch (IOException e3) {
                file = null;
                e = e3;
                if (url != null) {
                    u.a(e, this.c.c, w.f4815a, url.toString(), "downloadFileBanner2");
                }
                e.printStackTrace();
                return file;
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
            } catch (IOException e4) {
                e = e4;
                if (url != null) {
                }
                e.printStackTrace();
                return file;
            }
        } catch (IOException e5) {
            url = null;
            file = null;
            e = e5;
        }
        return file;
    }

    @Override // com.revmob.ads.a.b, com.revmob.client.f
    public final void a(String str) {
        JSONObject jSONObject = new JSONObject(str).getJSONArray("banners").getJSONObject(0);
        String b = b(jSONObject);
        boolean c = c(jSONObject);
        JSONArray jSONArray = jSONObject.getJSONArray("links");
        String a2 = a(jSONArray);
        boolean a3 = a(jSONObject);
        String b2 = b(jSONArray);
        String c2 = c(jSONArray);
        String a4 = a(jSONArray, AdType.HTML);
        String a5 = a(jSONArray, "dsp_url");
        String a6 = a(jSONArray, "dsp_html");
        String a7 = a(jSONArray, "imageSize");
        if (jSONObject.has("refreshTime")) {
            jSONObject.getInt("refreshTime");
        }
        int[] iArr = {0, 0};
        if (a7 != null) {
            String[] strArr = null;
            try {
                if (a7.contains(",")) {
                    strArr = a7.split(",");
                } else if (a7.contains(JSInterface.JSON_X)) {
                    strArr = a7.split(JSInterface.JSON_X);
                }
                iArr[0] = Integer.parseInt(strArr[0]);
                iArr[1] = Integer.parseInt(strArr[1]);
            } catch (Exception e) {
                iArr[0] = 0;
                iArr[1] = 0;
                u.a(e, this.c.c, w.c, null, "handleResponse1");
            }
        }
        f fVar = new f();
        e eVar = new e();
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("animation");
            long j = jSONObject2.getLong(VastIconXmlManager.DURATION);
            fVar.a(j);
            eVar.a(j);
            JSONArray jSONArray2 = jSONObject2.getJSONArray("show");
            for (int i = 0; i < jSONArray2.length(); i++) {
                fVar.a(jSONArray2.getString(i));
            }
            JSONArray jSONArray3 = jSONObject2.getJSONArray("close");
            for (int i2 = 0; i2 < jSONArray3.length(); i2++) {
                eVar.a(jSONArray3.getString(i2));
            }
        } catch (JSONException e2) {
        }
        String str2 = new String();
        new String();
        try {
            JSONObject jSONObject3 = jSONObject.getJSONObject("sound");
            str2 = jSONObject3.getString("on_show");
            jSONObject3.getString("on_click");
        } catch (JSONException e3) {
        }
        Bitmap bitmap = null;
        double currentTimeMillis = System.currentTimeMillis();
        if (a5 != null || a6 != null) {
            RMLog.d("Banner DSP");
        } else if (a4 == null) {
            String a8 = a(jSONArray, AdView.DEFAULT_IMAGE_NAME);
            try {
                File c3 = c(a8);
                int a9 = c.a(c.a(c3), com.revmob.a.a.a(), com.revmob.a.a.b());
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inSampleSize = a9;
                bitmap = BitmapFactory.decodeFile(c3.getAbsolutePath(), options);
            } catch (Exception e4) {
                if (a8 != null) {
                    u.a(e4, this.c.c, w.f4815a, a8, "handleResponse4");
                }
            }
        }
        if ((a2 == null || (a4 == null && bitmap == null)) && a5 == null && a6 == null) {
            return;
        }
        b bVar = new b(c2, b2, a2, a3, bitmap, a4, a5, a6, fVar, eVar, b, c, str2);
        bVar.d = this.c.c;
        bVar.f = this.c.b;
        com.revmob.a.e.a(bVar.f, (System.currentTimeMillis() - currentTimeMillis) / 1000.0d);
        this.b.updateWithData(bVar);
    }
}
