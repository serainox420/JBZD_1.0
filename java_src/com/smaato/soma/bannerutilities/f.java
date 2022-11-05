package com.smaato.soma.bannerutilities;

import com.smaato.soma.bannerutilities.g;
import com.smaato.soma.exception.VideoViewInstantiationException;
import com.smaato.soma.j;
import com.smaato.soma.p;
/* compiled from: VideoBanner.java */
/* loaded from: classes3.dex */
public class f extends a {
    @Override // com.smaato.soma.bannerutilities.a
    protected StringBuffer a(p pVar, int i, int i2, boolean z) {
        return new StringBuffer("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(j jVar) throws VideoViewInstantiationException {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.f.1
            });
            g gVar = new g(this);
            gVar.getClass();
            a(new g.c());
            m().a(jVar, f().h(), f().f());
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new VideoViewInstantiationException(e2);
        }
    }
}
