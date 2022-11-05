package com.flurry.android.tumblr;

import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes2.dex */
public class TextPost extends Post {
    private String e;
    private String f;

    public TextPost(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Body to post cannot be null or empty");
        }
        this.f = str;
    }

    public void setTitle(String str) {
        this.e = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.flurry.android.tumblr.Post
    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString("com.flurry.android.post_title", this.e);
        bundle.putString("com.flurry.android.post_body", this.f);
        bundle.putString("com.flurry.android.post_ios_deeplinks", this.f2405a);
        bundle.putString("com.flurry.android.post_android_deeplinks", this.b);
        bundle.putString("com.flurry.android.post_weblink", this.c);
        bundle.putBoolean("com.flurry.android.is_text_post", true);
        bundle.putInt("com.flurry.android.post_id", this.d);
        return bundle;
    }
}
