package com.smaato.soma.bannerutilities;

import com.smaato.soma.exception.UnableToGenerateRichMediaBanner;
import com.smaato.soma.p;
/* compiled from: RichMediaBanner.java */
/* loaded from: classes3.dex */
public class d extends a {
    private boolean c = false;

    @Override // com.smaato.soma.bannerutilities.a
    protected final StringBuffer a(p pVar, int i, int i2, boolean z) throws UnableToGenerateRichMediaBanner {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.d.1
            });
            c(true);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("<!DOCTYPE html>\n<html>\n<head>\n    <META name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=no\" />\n    <style type='text/css'> .mp_center { position: fixed; top: 50%; left: 50%; margin-left: -160px !important; margin-top: -25px !important; } </style>");
            stringBuffer.append("<body style=\"margin:0;padding:0;\" onClick=\"smaato_bridge.legacyExpand();\">\n");
            stringBuffer.append("    <script src=\"http://soma-assets.smaato.net/js/ormma_bridge.js\" type=\"text/javascript\"></script>\n");
            stringBuffer.append("    <script src=\"http://soma-assets.smaato.net/js/ormma.js\" type=\"text/javascript\"></script>\n");
            stringBuffer.append("    <div class = \"\">");
            com.smaato.soma.internal.b b = com.smaato.soma.a.a.a().b();
            if (b != null && b.e() != null) {
                stringBuffer.append(b.e());
            } else {
                stringBuffer.append(pVar.e());
            }
            stringBuffer.append("    </div>");
            stringBuffer.append("</body>");
            stringBuffer.append("</html>\n");
            return stringBuffer;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToGenerateRichMediaBanner(e2);
        }
    }

    public final void c(boolean z) {
        this.c = z;
    }
}
