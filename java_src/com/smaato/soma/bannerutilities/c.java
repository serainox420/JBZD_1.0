package com.smaato.soma.bannerutilities;

import com.smaato.soma.exception.UnableToGenerateImageBanner;
import com.smaato.soma.n;
import com.smaato.soma.p;
/* compiled from: ImageBanner.java */
/* loaded from: classes3.dex */
public class c extends a {
    @Override // com.smaato.soma.bannerutilities.a
    protected final StringBuffer a(p pVar, int i, int i2, boolean z) throws UnableToGenerateImageBanner {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.c.1
            });
            float p = p();
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("<html>\n");
            stringBuffer.append("    <head>\n");
            stringBuffer.append("        <META name=\"viewport\" content=\"initial-scale=1.0, user-scalable=no\" />\n");
            stringBuffer.append("        <style>body { margin: 0px; padding: 0px;\n");
            stringBuffer.append("            }\n");
            stringBuffer.append("        </style>\n");
            stringBuffer.append("        <script>");
            stringBuffer.append("             var clicked=false;");
            stringBuffer.append("             function isClicked(){if(!clicked){clicked = true; return false;}return clicked;}");
            stringBuffer.append("        </script>");
            stringBuffer.append("    </head>\n");
            stringBuffer.append("    <body >\n");
            stringBuffer.append("    <div >");
            stringBuffer.append("            <center><img src='" + pVar.j() + "' onclick=\"if(!isClicked()){smaato_bridge.legacyExpand(); location.href = '" + pVar.f() + "'; } else{}\" border='0' vertical-align='top' ");
            if (z) {
                if (i == -1) {
                    stringBuffer.append("height=\"100%\" width=\"100%");
                } else if (com.smaato.soma.internal.requests.f.b().e()) {
                    stringBuffer.append("height=\"" + ((int) (i2 / p)));
                    stringBuffer.append(" \" width=\"" + ((int) (i / p)));
                } else {
                    stringBuffer.append("height=\"" + ((int) (i / p)));
                    stringBuffer.append(" \" width=\"" + ((int) (i2 / p)));
                }
            } else if (this.b.k() && !(this.b instanceof n.a)) {
                stringBuffer.append("height=\"" + ((int) (i2 / p)));
            }
            stringBuffer.append(" \" ></center>");
            stringBuffer.append("    </div>");
            stringBuffer.append("    </body>\n");
            stringBuffer.append("</html>\n");
            return stringBuffer;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToGenerateImageBanner(e2);
        }
    }
}
