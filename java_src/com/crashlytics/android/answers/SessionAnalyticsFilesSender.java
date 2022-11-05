package com.crashlytics.android.answers;

import io.fabric.sdk.android.h;
import io.fabric.sdk.android.services.b.f;
import io.fabric.sdk.android.services.common.a;
import io.fabric.sdk.android.services.common.p;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.c;
import java.io.File;
import java.util.List;
/* loaded from: classes.dex */
class SessionAnalyticsFilesSender extends a implements f {
    static final String FILE_CONTENT_TYPE = "application/vnd.crashlytics.android.events";
    static final String FILE_PARAM_NAME = "session_analytics_file_";
    private final String apiKey;

    public SessionAnalyticsFilesSender(h hVar, String str, String str2, c cVar, String str3) {
        super(hVar, str, str2, cVar, HttpMethod.POST);
        this.apiKey = str3;
    }

    @Override // io.fabric.sdk.android.services.b.f
    public boolean send(List<File> list) {
        HttpRequest a2 = getHttpRequest().a(a.HEADER_CLIENT_TYPE, a.ANDROID_CLIENT_TYPE).a(a.HEADER_CLIENT_VERSION, this.kit.getVersion()).a(a.HEADER_API_KEY, this.apiKey);
        int i = 0;
        for (File file : list) {
            a2.a(FILE_PARAM_NAME + i, file.getName(), FILE_CONTENT_TYPE, file);
            i++;
        }
        io.fabric.sdk.android.c.h().a(Answers.TAG, "Sending " + list.size() + " analytics files to " + getUrl());
        int b = a2.b();
        io.fabric.sdk.android.c.h().a(Answers.TAG, "Response code for analytics file send is " + b);
        return p.a(b) == 0;
    }
}
