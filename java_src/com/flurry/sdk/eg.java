package com.flurry.sdk;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Base64;
import android.widget.ImageView;
import com.mdotm.android.constants.MdotMConstants;
import java.io.File;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class eg {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, String> f2608a;
    private static Map<String, String> b;
    private static Map<String, String> c;

    static {
        f2608a = new HashMap();
        b = new HashMap();
        c = new HashMap();
        try {
            b = lz.a(d("ewogICJlbiI6ICJQb3N0IiwKICAiZGUiOiAiUG9zdGVuIiwKICAiZXMiOiAiUHVibGljYXIiLAogICJmciI6ICJQdWJsaWVyIiwKICAiaXQiOiAiUHViYmxpY2EiLAogICJqYSI6ICLmipXnqL8iLAogICJrbyI6ICLtj6zsiqTtjIUiLAogICJubCI6ICJQbGFhdHNlbiIsCiAgInBsIjogIld5xZtsaWoiLAogICJwdF9QVCI6ICJQdWJsaWNhciIsCiAgInB0X0JSIjogIlB1YmxpY2FyIiwKICAicnUiOiAi0J7Qv9GD0LHQu9C40LouIiwKICAidHIiOiAiR8O2bmRlciIsCiAgInpoX0NOIjogIuWPkeW4liIsCiAgInpoX1RXIjogIuiyvOaWhyIKfQ=="));
            f2608a = lz.a(d("ewogICJlbiI6ICJBZGQgYSBjYXB0aW9uLCBpZiB5b3UgbGlrZSIsCiAgImRlIjogIkbDvGdlIGVpbmUgQmlsZHVudGVyc2NocmlmdCBoaW56dSwgd2VubiBkdSBtYWdzdCIsCiAgImVzIjogIlNpIHF1aWVyZXMsIHB1ZWRlcyBhw7FhZGlyIHVuYSBkZXNjcmlwY2nDs24iLAogICJmciI6ICJBam91dGV6IHVuZSBsw6lnZW5kZSBzaSB2b3VzIHZvdWxleiIsCiAgIml0IjogIkFnZ2l1bmdpIHVuIHRpdG9sbywgc2UgdnVvaSIsCiAgImphIjogIuOCreODo+ODl+OCt+ODp+ODs+OBrui/veWKoCjjgqrjg5fjgrfjg6fjg7MpIiwKICAia28iOiAi7IKs7KeEIOyEpOuqhSDstpTqsIAgKOyYteyFmCkiLAogICJubCI6ICJWb2VnIGVlbiBiaWpzY2hyaWZ0IHRvZSwgYWxzIGplIHdpbCIsCiAgInBsIjogIkplxZtsaSBjaGNlc3osIGRvZGFqIHBvZHBpcyIsCiAgInB0X1BUIjogIkFkaWNpb25lIHVtYSBsZWdlbmRhLCBzZSB2b2PDqiBxdWlzZXIiLAogICJwdF9CUiI6ICJBZGljaW9uYSBsZWdlbmRhLCBzZSBxdWlzZXJlcyIsCiAgInJ1IjogItCV0YHQu9C4INGF0L7RgtC40YLQtSwg0LTQvtCx0LDQstGM0YLQtSDQv9C+0LTQv9C40YHRjCIsCiAgInRyIjogIkRpbGVyc2VuIHJlc2ltIHlhesSxc8SxIGVrbGUiLAogICJ6aF9DTiI6ICLkvaDlj6/ku6XlnKjmraTmt7vliqDor7TmmI4iLAogICJ6aF9UVyI6ICLkvaDkuZ/lj6/ku6XliqDkuIrnhafniYfoqqrmmI4iCn0="));
            c = lz.a(d("ewogICJlbiI6ICJUaXRsZSIsCiAgImRlIjogIlRpdGVsIiwKICAiZXMiOiAiVMOtdHVsbyIsCiAgImZyIjogIlRpdHJlIiwKICAiaXQiOiAiVGl0b2xvIiwKICAiamEiOiAi44K/44Kk44OI44OrIiwKICAia28iOiAi7KCc66qpIiwKICAibmwiOiAiVGl0ZWwiLAogICJwbCI6ICJXecWbbGlqIiwKICAicHRfUFQiOiAiVMOtdHVsbyIsCiAgInB0X0JSIjogIlTDrXR1bG8iLAogICJydSI6ICLQl9Cw0LPQvtC70L7QstC+0LouIiwKICAidHIiOiAiQmHFn2zEsWsiLAogICJ6aF9DTiI6ICLmoIfpopgiLAogICJ6aF9UVyI6ICLmqJnpoYwiCn0="));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static int a(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        try {
            return new JSONObject(str).getJSONObject("meta").getInt("status");
        } catch (JSONException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static List<String> b(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONObject(str).getJSONObject(MdotMConstants.RESPONSE).getJSONObject("user").getJSONArray("blogs");
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(jSONArray.getJSONObject(i).getString("name"));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    public static Long c(String str) {
        long j = Long.MIN_VALUE;
        try {
            return Long.valueOf(new JSONObject(str).getJSONObject(MdotMConstants.RESPONSE).getLong("id"));
        } catch (JSONException e) {
            e.printStackTrace();
            return j;
        }
    }

    private static JSONObject d(String str) throws JSONException {
        return new JSONObject(new String(Base64.decode(str, 0)));
    }

    public static String a() {
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        if (language.equals("zh") || language.equals("pt")) {
            return b.get(locale.toString());
        }
        if (b.containsKey(language)) {
            return b.get(language);
        }
        return "Post";
    }

    public static String b() {
        return "Cancel";
    }

    public static String c() {
        return "Edit";
    }

    public static String d() {
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        if (language.equals("zh") || language.equals("pt")) {
            return f2608a.get(locale.toString());
        }
        if (f2608a.containsKey(language)) {
            return f2608a.get(language);
        }
        return "Add a caption, if you like";
    }

    public static String e() {
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        if (language.equals("zh") || language.equals("pt")) {
            return c.get(locale.toString());
        }
        if (c.containsKey(language)) {
            return c.get(language);
        }
        return "Title";
    }

    /* loaded from: classes2.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        Bitmap f2609a;
        private String b;
        private WeakReference<ImageView> c;

        public a(String str, ImageView imageView) {
            this.b = str;
            this.c = new WeakReference<>(imageView);
        }

        @Override // java.lang.Runnable
        public final void run() {
            HttpURLConnection httpURLConnection;
            InputStream inputStream;
            InputStream inputStream2;
            InputStream inputStream3 = null;
            final ImageView imageView = this.c.get();
            if (imageView == null || this.b == null) {
                return;
            }
            if (!this.b.startsWith("http://") && !this.b.startsWith("https://")) {
                if (!new File(this.b).exists()) {
                    return;
                }
                this.f2609a = BitmapFactory.decodeFile(this.b);
                jy.a().b.post(new Runnable() { // from class: com.flurry.sdk.eg.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        imageView.setImageBitmap(a.this.f2609a);
                    }
                });
                return;
            }
            try {
                httpURLConnection = (HttpURLConnection) new URL(this.b).openConnection();
                try {
                    try {
                        httpURLConnection.setConnectTimeout(10000);
                        httpURLConnection.setReadTimeout(30000);
                        httpURLConnection.setInstanceFollowRedirects(true);
                        HttpURLConnection.setFollowRedirects(true);
                        inputStream2 = httpURLConnection.getInputStream();
                    } catch (Throwable th) {
                        th = th;
                        if (0 != 0) {
                            try {
                                inputStream3.close();
                            } catch (Exception e) {
                            }
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    inputStream = null;
                }
                try {
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode == 200) {
                        this.f2609a = BitmapFactory.decodeStream(inputStream2, null, null);
                        if (this.f2609a != null) {
                            jy.a().b.post(new Runnable() { // from class: com.flurry.sdk.eg.a.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    imageView.setImageBitmap(a.this.f2609a);
                                }
                            });
                        }
                    } else if (responseCode == 301) {
                        jy.a().c.post(new a(httpURLConnection.getHeaderField("Location"), imageView));
                    }
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (Exception e3) {
                        }
                    }
                    if (httpURLConnection == null) {
                        return;
                    }
                    httpURLConnection.disconnect();
                } catch (Exception e4) {
                    inputStream = inputStream2;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception e5) {
                        }
                    }
                    if (httpURLConnection == null) {
                        return;
                    }
                    httpURLConnection.disconnect();
                }
            } catch (Exception e6) {
                inputStream = null;
                httpURLConnection = null;
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection = null;
            }
        }
    }
}
