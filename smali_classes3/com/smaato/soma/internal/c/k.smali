.class public Lcom/smaato/soma/internal/c/k;
.super Ljava/lang/Object;
.source "StringFormatter.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UTF8EncodingFailedException;
        }
    .end annotation

    .prologue
    .line 18
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    throw v0

    .line 22
    :catch_1
    move-exception v0

    .line 23
    new-instance v1, Lcom/smaato/soma/exception/UTF8EncodingFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UTF8EncodingFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
