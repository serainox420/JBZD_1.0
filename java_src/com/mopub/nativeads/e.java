package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
/* compiled from: NativeUrlGenerator.java */
/* loaded from: classes3.dex */
class e extends AdUrlGenerator {
    private String e;
    private String f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Context context) {
        super(context);
    }

    @Override // com.mopub.common.AdUrlGenerator
    /* renamed from: withAdUnitId  reason: collision with other method in class */
    public e mo553withAdUnitId(String str) {
        this.b = str;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e a(RequestParameters requestParameters) {
        if (requestParameters != null) {
            this.c = requestParameters.getKeywords();
            this.d = requestParameters.getLocation();
            this.e = requestParameters.getDesiredAssets();
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e a(int i) {
        this.f = String.valueOf(i);
        return this;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        a(str, Constants.AD_HANDLER);
        a(ClientMetadata.getInstance(this.f4317a));
        d();
        c();
        return a();
    }

    private void c() {
        if (!TextUtils.isEmpty(this.f)) {
            b("MAGIC_NO", this.f);
        }
    }

    private void d() {
        if (!TextUtils.isEmpty(this.e)) {
            b("assets", this.e);
        }
    }

    @Override // com.mopub.common.AdUrlGenerator
    protected void b(String str) {
        b("nsv", str);
    }
}
