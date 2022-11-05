.class public Lcom/mopub/network/HeaderUtils;
.super Ljava/lang/Object;
.source "HeaderUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 71
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 75
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 67
    :goto_0
    return p1

    :cond_0
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 84
    if-nez p0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 88
    :cond_1
    const-string v1, "%"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/network/HeaderUtils;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-gt v2, v3, :cond_0

    move-object v0, v1

    .line 94
    goto :goto_0
.end method

.method public static extractBooleanHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/util/ResponseHeader;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/mopub/network/HeaderUtils;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static extractBooleanHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;Z)Z
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/mopub/network/HeaderUtils;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/util/ResponseHeader;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p1}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static extractHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static extractIntHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;I)I
    .locals 1

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v0

    .line 56
    if-nez v0, :cond_0

    .line 60
    :goto_0
    return p2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public static extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/util/ResponseHeader;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/network/HeaderUtils;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static extractIntegerHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/mopub/network/HeaderUtils;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static extractPercentHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/util/ResponseHeader;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/network/HeaderUtils;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static extractPercentHeaderString(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/util/ResponseHeader;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractPercentHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
