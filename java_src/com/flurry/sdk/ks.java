package com.flurry.sdk;

import com.flurry.sdk.ku;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public final class ks<RequestObjectType, ResponseObjectType> extends ku {

    /* renamed from: a  reason: collision with root package name */
    public a<RequestObjectType, ResponseObjectType> f2978a;
    public RequestObjectType b;
    public lg<RequestObjectType> c;
    public lg<ResponseObjectType> d;
    private ResponseObjectType x;

    /* loaded from: classes2.dex */
    public interface a<RequestObjectType, ResponseObjectType> {
        void a(ks<RequestObjectType, ResponseObjectType> ksVar, ResponseObjectType responseobjecttype);
    }

    @Override // com.flurry.sdk.ku, com.flurry.sdk.ma
    public final void a() {
        this.k = new ku.c() { // from class: com.flurry.sdk.ks.1
            @Override // com.flurry.sdk.ku.c
            public final void a(OutputStream outputStream) throws Exception {
                if (ks.this.b != null && ks.this.c != null) {
                    ks.this.c.a(outputStream, ks.this.b);
                }
            }

            @Override // com.flurry.sdk.ku.c
            public final void a(ku kuVar, InputStream inputStream) throws Exception {
                if (kuVar.d() && ks.this.d != null) {
                    ks.this.x = ks.this.d.a(inputStream);
                }
            }

            @Override // com.flurry.sdk.ku.c
            public final void a(ku kuVar) {
                ks.d(ks.this);
            }
        };
        super.a();
    }

    static /* synthetic */ void d(ks ksVar) {
        if (ksVar.f2978a == null || ksVar.b()) {
            return;
        }
        ksVar.f2978a.a(ksVar, ksVar.x);
    }
}
