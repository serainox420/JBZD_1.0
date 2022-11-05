package com.commit451.youtubeextractor;

import okhttp3.OkHttpClient;
import retrofit2.Call;
/* compiled from: YouTubeExtractor.java */
/* loaded from: classes.dex */
public class e extends a<b> implements b {
    public static e b() {
        return new e();
    }

    private e() {
        this(new OkHttpClient.Builder());
    }

    private e(OkHttpClient.Builder builder) {
        super(b.class, builder, null);
    }

    @Override // com.commit451.youtubeextractor.b
    public Call<YouTubeExtractionResult> a(String str) {
        return a().a(str);
    }
}
