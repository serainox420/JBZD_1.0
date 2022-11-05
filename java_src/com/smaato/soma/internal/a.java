package com.smaato.soma.internal;

import android.content.Context;
import com.smaato.soma.AdType;
import com.smaato.soma.bannerutilities.e;
import com.smaato.soma.bannerutilities.f;
import com.smaato.soma.exception.CreateBannerPackageFailedException;
import com.smaato.soma.exception.HttpConnectorFactoryInstantiationException;
import com.smaato.soma.exception.UnableToGenerateImageBanner;
import com.smaato.soma.exception.UnableToGenerateRichMediaBanner;
import com.smaato.soma.exception.UnableToGenerateTextBanner;
import com.smaato.soma.exception.XmlParserFactoryInstantiationException;
import com.smaato.soma.internal.c.i;
import com.smaato.soma.internal.requests.c;
import com.smaato.soma.internal.requests.d;
import com.smaato.soma.j;
import com.smaato.soma.l;
import com.smaato.soma.p;
/* compiled from: DefaultFactory.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f4965a = null;

    public static a a() {
        if (f4965a == null) {
            f4965a = new a();
        }
        return f4965a;
    }

    public com.smaato.soma.b a(final Context context, final j jVar) {
        return new l<com.smaato.soma.internal.requests.a>() { // from class: com.smaato.soma.internal.a.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public com.smaato.soma.internal.requests.a b() throws Exception {
                return new com.smaato.soma.internal.requests.a(context, jVar);
            }
        }.c();
    }

    public d b() throws HttpConnectorFactoryInstantiationException {
        try {
            return new c();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new HttpConnectorFactoryInstantiationException(e2);
        }
    }

    public com.smaato.soma.internal.c.l c() throws XmlParserFactoryInstantiationException {
        try {
            return new i();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new XmlParserFactoryInstantiationException(e2);
        }
    }

    public final com.smaato.soma.bannerutilities.a a(AdType adType) throws CreateBannerPackageFailedException {
        try {
            switch (adType) {
                case TEXT:
                    return new e();
                case RICHMEDIA:
                    return new com.smaato.soma.bannerutilities.d();
                case IMAGE:
                    return new com.smaato.soma.bannerutilities.c();
                case MEDIATION:
                    return new com.smaato.soma.bannerutilities.a() { // from class: com.smaato.soma.internal.a.2
                        @Override // com.smaato.soma.bannerutilities.a
                        protected StringBuffer a(p pVar, int i, int i2, boolean z) throws UnableToGenerateTextBanner, UnableToGenerateImageBanner, UnableToGenerateRichMediaBanner {
                            return null;
                        }
                    };
                default:
                    return new f();
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new CreateBannerPackageFailedException(e2);
        }
    }
}
