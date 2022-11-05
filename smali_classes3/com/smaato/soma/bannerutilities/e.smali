.class public Lcom/smaato/soma/bannerutilities/e;
.super Lcom/smaato/soma/bannerutilities/a;
.source "TextBanner.java"


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/smaato/soma/bannerutilities/a;-><init>()V

    .line 19
    const-string v0, "\n"

    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/e;->c:Ljava/lang/String;

    .line 23
    const-string v0, "margin: 0px;\n"

    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/e;->d:Ljava/lang/String;

    .line 27
    const-string v0, "             padding: 0px;\n"

    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/e;->e:Ljava/lang/String;

    .line 31
    const-string v0, "             white-space: nowrap;\n"

    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/e;->f:Ljava/lang/String;

    .line 35
    const-string v0, "     <script>\n"

    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/e;->g:Ljava/lang/String;

    .line 39
    const-string v0, "         }\n"

    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/e;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/smaato/soma/p;IIZ)Ljava/lang/StringBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToGenerateTextBanner;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    :try_start_0
    new-instance v1, Lcom/smaato/soma/bannerutilities/e$1;

    invoke-direct {v1, p0}, Lcom/smaato/soma/bannerutilities/e$1;-><init>(Lcom/smaato/soma/bannerutilities/e;)V

    invoke-static {v1}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 56
    const-string v1, "<html>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v1, "    <head>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v1, "        <style type=\"text/css\">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, "         body {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, "             height:100%;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v1, "             background: #f2f5f0; /* Old browsers */\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v1, "             background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#f2f5f0), color-stop(18%,#e9ece7), color-stop(71%,#bdc1bb), color-stop(94%,#aeb2ab), color-stop(100%,#acb0a9)); /* Chrome,Safari4+ */\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v1, "             background: -webkit-linear-gradient(top, #f2f5f0 0%,#e9ece7 18%,#bdc1bb 71%,#aeb2ab 94%,#acb0a9 100%); /* Chrome10+,Safari5.1+ */\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v1, "             background: linear-gradient(top, #f2f5f0 0%,#e9ece7 18%,#bdc1bb 71%,#aeb2ab 94%,#acb0a9 100%); /* W3C */\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v1, "         }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v1, "        </style>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v1, "     <script>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v1, "            function openLink() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v1, "                document.body.style.height = \"auto\"\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, "                smaato_bridge.legacyExpand();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "                document.location=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/smaato/soma/p;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\';\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v1, "            }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v1, "     </script>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v1, "     <script>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, "                         var clicked=false;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, "                         function isClicked(){if(!clicked){clicked = true; return false;}return clicked;}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, "     </script>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, "    </head>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v1, "    <body align=\"center\" onclick=\"if(!isClicked()){openLink(); } else{}\">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v1, "        <table align=\"center\" border=\"0\" height=\"100%\" width=\"100%\"> <tr height=\"100%\" width=\"100%\" style=\"vertical-align:middle\"><td align=\"center\" valign=\"middle\">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-interface {p1}, Lcom/smaato/soma/p;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v1, "       </tr></td> </table>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v1, "    </body>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v1, "</html>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    throw v0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    new-instance v1, Lcom/smaato/soma/exception/UnableToGenerateTextBanner;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToGenerateTextBanner;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
