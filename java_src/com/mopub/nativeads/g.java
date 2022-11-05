package com.mopub.nativeads;

import android.content.Context;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
/* compiled from: PositioningUrlGenerator.java */
/* loaded from: classes3.dex */
class g extends BaseUrlGenerator {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4633a;
    private String b;

    public g(Context context) {
        this.f4633a = context;
    }

    public g withAdUnitId(String str) {
        this.b = str;
        return this;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        a(str, Constants.POSITIONING_HANDLER);
        a(this.b);
        k("1");
        ClientMetadata clientMetadata = ClientMetadata.getInstance(this.f4633a);
        b(clientMetadata.getSdkVersion());
        a(clientMetadata.getDeviceManufacturer(), clientMetadata.getDeviceModel(), clientMetadata.getDeviceProduct());
        l(clientMetadata.getAppVersion());
        b();
        return a();
    }

    private void a(String str) {
        b("id", str);
    }

    private void b(String str) {
        b("nsv", str);
    }
}
