package com.smaato.soma.bannerutilities;

import com.smaato.soma.exception.UnableToGenerateTextBanner;
import com.smaato.soma.p;
/* compiled from: TextBanner.java */
/* loaded from: classes3.dex */
public class e extends a {
    private final String c = "\n";
    private final String d = "margin: 0px;\n";
    private final String e = "             padding: 0px;\n";
    private final String f = "             white-space: nowrap;\n";
    private final String g = "     <script>\n";
    private final String h = "         }\n";

    @Override // com.smaato.soma.bannerutilities.a
    protected StringBuffer a(p pVar, int i, int i2, boolean z) throws UnableToGenerateTextBanner {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.e.1
            });
            stringBuffer.append("<html>\n");
            stringBuffer.append("    <head>\n");
            stringBuffer.append("        <style type=\"text/css\">\n");
            stringBuffer.append("         body {\n");
            stringBuffer.append("             height:100%;");
            stringBuffer.append("             background: #f2f5f0; /* Old browsers */\n");
            stringBuffer.append("             background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#f2f5f0), color-stop(18%,#e9ece7), color-stop(71%,#bdc1bb), color-stop(94%,#aeb2ab), color-stop(100%,#acb0a9)); /* Chrome,Safari4+ */\n");
            stringBuffer.append("             background: -webkit-linear-gradient(top, #f2f5f0 0%,#e9ece7 18%,#bdc1bb 71%,#aeb2ab 94%,#acb0a9 100%); /* Chrome10+,Safari5.1+ */\n");
            stringBuffer.append("             background: linear-gradient(top, #f2f5f0 0%,#e9ece7 18%,#bdc1bb 71%,#aeb2ab 94%,#acb0a9 100%); /* W3C */\n");
            stringBuffer.append("         }\n");
            stringBuffer.append("        </style>\n");
            stringBuffer.append("     <script>\n");
            stringBuffer.append("            function openLink() {\n");
            stringBuffer.append("                document.body.style.height = \"auto\"\n");
            stringBuffer.append("                smaato_bridge.legacyExpand();\n");
            stringBuffer.append("                document.location='" + pVar.f() + "';\n");
            stringBuffer.append("            }\n");
            stringBuffer.append("     </script>\n");
            stringBuffer.append("     <script>\n");
            stringBuffer.append("                         var clicked=false;");
            stringBuffer.append("                         function isClicked(){if(!clicked){clicked = true; return false;}return clicked;}");
            stringBuffer.append("     </script>\n");
            stringBuffer.append("    </head>\n");
            stringBuffer.append("    <body align=\"center\" onclick=\"if(!isClicked()){openLink(); } else{}\">\n");
            stringBuffer.append("        <table align=\"center\" border=\"0\" height=\"100%\" width=\"100%\"> <tr height=\"100%\" width=\"100%\" style=\"vertical-align:middle\"><td align=\"center\" valign=\"middle\">\n");
            stringBuffer.append(pVar.i());
            stringBuffer.append("       </tr></td> </table>\n");
            stringBuffer.append("    </body>\n");
            stringBuffer.append("</html>\n");
            return stringBuffer;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToGenerateTextBanner(e2);
        }
    }
}
