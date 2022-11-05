.class public Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;
.super Ljava/lang/Object;
.source "ExpandProperties.java"


# instance fields
.field private height:I

.field private useCustomClose:Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v0, p0, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;->width:I

    .line 47
    iput v0, p0, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;->height:I

    .line 48
    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;->useCustomClose:Z

    .line 53
    return-void
.end method

.method public static propertiesFromArgs(Ljava/util/Map;)Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v1, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;

    invoke-direct {v1}, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;-><init>()V

    .line 34
    :try_start_0
    const-string v0, "width"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;->setWidth(I)V

    .line 35
    const-string v0, "height"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;->setHeight(I)V

    .line 36
    const-string v0, "true"

    const-string v2, "useCustomClose"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;->setUseCustomClose(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 40
    const-string v0, "Error setting MRAID expand properties"

    sget-object v2, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v2}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;->height:I

    .line 73
    return-void
.end method

.method public setUseCustomClose(Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;->useCustomClose:Z

    .line 83
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;->width:I

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 88
    const-string v0, "false"

    .line 89
    iget-boolean v1, p0, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;->useCustomClose:Z

    if-eqz v1, :cond_0

    .line 90
    const-string v0, "true"

    .line 92
    :cond_0
    const-string v1, "{width:%d,height:%d,useCustomClose:%s}"

    .line 93
    new-instance v2, Ljava/util/Formatter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    .line 94
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;->width:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 95
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    .line 98
    return-object v0
.end method

.method public useCustomClose()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;->useCustomClose:Z

    return v0
.end method
