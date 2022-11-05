package com.flurry.android.tumblr;

import android.os.Bundle;
import android.text.TextUtils;
import com.flurry.sdk.eh;
import com.flurry.sdk.jy;
import com.flurry.sdk.kh;
import com.flurry.sdk.ki;
import com.flurry.sdk.km;
import com.flurry.sdk.ma;
import com.flurry.sdk.mg;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public abstract class Post {
    private static final String e = Post.class.getName();
    private static AtomicInteger g = new AtomicInteger(0);

    /* renamed from: a  reason: collision with root package name */
    String f2405a;
    String b;
    String c;
    int d;
    private PostListener f;
    private final kh<eh> h = new kh<eh>() { // from class: com.flurry.android.tumblr.Post.1
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(eh ehVar) {
            final PostListener postListener;
            final eh ehVar2 = ehVar;
            if (ehVar2.c != Post.this.d || ehVar2.b == 0 || (postListener = Post.this.f) == null) {
                return;
            }
            jy.a().a(new ma() { // from class: com.flurry.android.tumblr.Post.1.1
                @Override // com.flurry.sdk.ma
                public final void a() {
                    switch (AnonymousClass2.f2408a[ehVar2.b - 1]) {
                        case 1:
                            km.a(3, Post.e, "Post success for " + ehVar2.c);
                            postListener.onPostSuccess(ehVar2.f);
                            ki.a().b("com.flurry.android.impl.analytics.tumblr.TumblrEvents", Post.this.h);
                            mg.a().a(Post.this.d);
                            return;
                        case 2:
                            String str = ehVar2.e;
                            if (TextUtils.isEmpty(str)) {
                                str = "Internal error.";
                            }
                            km.a(3, Post.e, "Post failed for " + ehVar2.c + " with error code: " + ehVar2.d + "  and error message: " + str);
                            postListener.onPostFailure(str);
                            ki.a().b("com.flurry.android.impl.analytics.tumblr.TumblrEvents", Post.this.h);
                            mg.a().a(Post.this.d);
                            return;
                        default:
                            return;
                    }
                }
            });
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Bundle a();

    /* renamed from: com.flurry.android.tumblr.Post$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2408a = new int[eh.a.a().length];

        static {
            try {
                f2408a[eh.a.f2613a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2408a[eh.a.b - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Post() {
        this.d = 0;
        this.d = g.incrementAndGet();
        ki.a().a("com.flurry.android.impl.analytics.tumblr.TumblrEvents", this.h);
    }

    public void setAndroidDeeplink(String str) {
        this.b = str;
    }

    public void setIOSDeepLink(String str) {
        this.f2405a = str;
    }

    public void setWebLink(String str) {
        this.c = str;
    }

    public void setPostListener(PostListener postListener) {
        this.f = postListener;
    }
}
