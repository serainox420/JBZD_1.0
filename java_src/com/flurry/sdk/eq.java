package com.flurry.sdk;

import android.text.TextUtils;
import android.util.Base64;
import com.flurry.sdk.ku;
import java.io.UnsupportedEncodingException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2.dex */
public abstract class eq {
    Map<String, String> b;
    Map<String, String> c;
    private Map<String, String> g;
    private static final String d = eq.class.getName();

    /* renamed from: a  reason: collision with root package name */
    public static final el f2624a = new el("", "");
    private static final Pattern e = Pattern.compile("oauth_token=([^&]+)");
    private static final Pattern f = Pattern.compile("oauth_token_secret=([^&]*)");

    protected abstract ku.a a();

    protected abstract String b();

    public abstract void c();

    public eq() {
        this.b = new HashMap();
        this.c = new HashMap();
        this.g = new HashMap();
        this.b = new HashMap();
        this.c = new HashMap();
        this.g = new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(String str, String str2) {
        this.b.put(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(String str, String str2) {
        this.c.put(str, str2);
    }

    private String d() {
        Map<String, String> map = this.b;
        StringBuilder sb = new StringBuilder(map.size() * 20);
        sb.append("OAuth ");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (sb.length() > 6) {
                sb.append(", ");
            }
            sb.append(String.format("%s=\"%s\"", entry.getKey(), ee.a(entry.getValue())));
        }
        return sb.toString();
    }

    private static String c(String str, String str2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes("UTF-8"), "HmacSHA1");
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(secretKeySpec);
            return a(mac.doFinal(str.getBytes("UTF-8"))).replace("\r\n", "");
        } catch (Exception e2) {
            km.a(5, d, "Error while signing:" + e2);
            return null;
        }
    }

    private static String a(byte[] bArr) {
        try {
            return new String(Base64.encode(bArr, 2), "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            km.a(5, d, "Error while encoding." + e2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static el a(String str) {
        if (TextUtils.isEmpty(str)) {
            km.a(5, d, "Cannot extract token. Invalid response: " + str);
            return null;
        }
        return new el(a(str, e), a(str, f));
    }

    private static String a(String str, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find() && matcher.groupCount() > 0) {
            return ee.b(matcher.group(1));
        }
        km.a(5, d, "Cannot extract token from response");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(ks<?, ?> ksVar, el elVar) {
        String replaceAll;
        et etVar = new et();
        if (!TextUtils.isEmpty(elVar.f2617a)) {
            a("oauth_token", elVar.f2617a);
        }
        a("oauth_callback", er.c());
        a("oauth_timestamp", String.valueOf(et.a()));
        a("oauth_nonce", String.valueOf(et.a().longValue() + Integer.valueOf(etVar.f2627a.f2628a.nextInt()).intValue()));
        a("oauth_consumer_key", er.a());
        a("oauth_signature_method", er.d());
        a("oauth_version", er.e());
        String aVar = a().toString();
        String b = b();
        if (b.startsWith("http://") && (b.endsWith(":80") || b.contains(":80/"))) {
            replaceAll = b.replaceAll("\\?.*", "").replaceAll(":80", "");
        } else if (b.startsWith("https://") && (b.endsWith(":443") || b.contains(":443/"))) {
            replaceAll = b.replaceAll("\\?.*", "").replaceAll(":443", "");
        } else {
            replaceAll = b.replaceAll("\\?.*", "");
        }
        String a2 = ee.a(aVar);
        String a3 = ee.a(replaceAll);
        ek ekVar = new ek();
        ekVar.a(new ek(this.g));
        ekVar.a(new ek(this.c));
        ekVar.a(new ek(this.b));
        ek ekVar2 = new ek(ekVar.f2616a);
        Collections.sort(ekVar2.f2616a);
        a("oauth_signature", c(String.format("%s&%s&%s", a2, a3, ee.a(ekVar2.a())), ee.a(er.b()) + '&' + ee.a(elVar.b)));
        a("Authorization", d());
        for (Map.Entry<String, String> entry : this.b.entrySet()) {
            ksVar.a(entry.getKey(), entry.getValue());
        }
    }
}
