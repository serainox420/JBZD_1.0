package com.flurry.android.tumblr;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import com.flurry.sdk.er;
import com.flurry.sdk.fo;
import com.flurry.sdk.hi;
import com.flurry.sdk.hr;
import com.flurry.sdk.jy;
import com.flurry.sdk.km;
import com.flurry.sdk.mg;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class TumblrShare {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2409a = TumblrShare.class.getName();

    public static Bitmap getTumblrImage() {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2409a, "Device SDK Version older than 10");
            return null;
        } else if (jy.a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized.");
        } else {
            hi hiVar = new hi();
            hiVar.g();
            return hiVar.j;
        }
    }

    public static void setOAuthConfig(String str, String str2) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2409a, "Device SDK Version older than 10");
        } else if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Consumer api key cannot be null or empty.");
        } else {
            if (TextUtils.isEmpty(str2)) {
                throw new IllegalArgumentException("Consumer secret cannot be null or empty.");
            }
            er.a(str);
            er.b(str2);
        }
    }

    public static void post(Context context, Post post) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2409a, "Device SDK Version older than 10");
        } else if (jy.a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before posting on Tumblr");
        } else {
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null.");
            }
            if (!(context instanceof Activity)) {
                throw new IllegalArgumentException("Context cannot be null.");
            }
            if (post == null) {
                throw new IllegalArgumentException("Post object cannot be null.");
            }
            if (TextUtils.isEmpty(er.a())) {
                throw new IllegalArgumentException("Consumer api key cannot be null or empty. Please set consumer key using setOAuthConfig().");
            }
            if (TextUtils.isEmpty(er.b())) {
                throw new IllegalArgumentException("Consumer secret cannot be null or empty. Please set consumer secret using setOAuthConfig().");
            }
            hr.a();
            hr.a("ShareClick", post.b, new HashMap());
            mg a2 = mg.a();
            a2.f3059a.append(post.d, post);
            fo.a(context, post.a());
        }
    }
}
