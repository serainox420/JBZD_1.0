package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
/* loaded from: classes3.dex */
public class WebViewAdUrlGenerator extends AdUrlGenerator {
    private final boolean e;

    public WebViewAdUrlGenerator(Context context, boolean z) {
        super(context);
        this.e = z;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        a(str, Constants.AD_HANDLER);
        k("6");
        a(ClientMetadata.getInstance(this.f4317a));
        a(true);
        b(this.e);
        return a();
    }
}
