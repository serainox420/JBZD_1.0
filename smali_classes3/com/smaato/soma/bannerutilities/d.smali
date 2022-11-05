.class public Lcom/smaato/soma/bannerutilities/d;
.super Lcom/smaato/soma/bannerutilities/a;
.source "RichMediaBanner.java"


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/smaato/soma/bannerutilities/a;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smaato/soma/bannerutilities/d;->c:Z

    return-void
.end method


# virtual methods
.method protected final a(Lcom/smaato/soma/p;IIZ)Ljava/lang/StringBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToGenerateRichMediaBanner;
        }
    .end annotation

    .prologue
    .line 37
    :try_start_0
    new-instance v0, Lcom/smaato/soma/bannerutilities/d$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/d$1;-><init>(Lcom/smaato/soma/bannerutilities/d;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smaato/soma/bannerutilities/d;->c(Z)V

    .line 39
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    const-string v1, "<!DOCTYPE html>\n<html>\n<head>\n    <META name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=no\" />\n    <style type=\'text/css\'> .mp_center { position: fixed; top: 50%; left: 50%; margin-left: -160px !important; margin-top: -25px !important; } </style>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    const-string v1, "<body style=\"margin:0;padding:0;\" onClick=\"smaato_bridge.legacyExpand();\">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    const-string v1, "    <script src=\"http://soma-assets.smaato.net/js/ormma_bridge.js\" type=\"text/javascript\"></script>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    const-string v1, "    <script src=\"http://soma-assets.smaato.net/js/ormma.js\" type=\"text/javascript\"></script>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    const-string v1, "    <div class = \"\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    invoke-static {}, Lcom/smaato/soma/a/a;->a()Lcom/smaato/soma/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/a/a;->b()Lcom/smaato/soma/internal/b;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/smaato/soma/internal/b;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v1}, Lcom/smaato/soma/internal/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    :goto_0
    const-string v1, "    </div>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v1, "</body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, "</html>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    return-object v0

    .line 55
    :cond_0
    invoke-interface {p1}, Lcom/smaato/soma/p;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    throw v0

    .line 63
    :catch_1
    move-exception v0

    .line 64
    new-instance v1, Lcom/smaato/soma/exception/UnableToGenerateRichMediaBanner;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToGenerateRichMediaBanner;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/smaato/soma/bannerutilities/d;->c:Z

    .line 83
    return-void
.end method
