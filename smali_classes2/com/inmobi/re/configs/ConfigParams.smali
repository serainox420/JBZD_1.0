.class public Lcom/inmobi/re/configs/ConfigParams;
.super Ljava/lang/Object;
.source "ConfigParams.java"


# static fields
.field static g:I

.field static h:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x5

    sput v0, Lcom/inmobi/re/configs/ConfigParams;->g:I

    .line 38
    const-string v0, "[\"video/mp4\"]"

    sput-object v0, Lcom/inmobi/re/configs/ConfigParams;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "#00000000"

    iput-object v0, p0, Lcom/inmobi/re/configs/ConfigParams;->a:Ljava/lang/String;

    .line 31
    const/16 v0, 0x140

    iput v0, p0, Lcom/inmobi/re/configs/ConfigParams;->b:I

    .line 32
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/inmobi/re/configs/ConfigParams;->c:I

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Lcom/inmobi/re/configs/ConfigParams;->d:I

    .line 34
    const/16 v0, 0x14

    iput v0, p0, Lcom/inmobi/re/configs/ConfigParams;->e:I

    .line 35
    const/4 v0, 0x5

    iput v0, p0, Lcom/inmobi/re/configs/ConfigParams;->f:I

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/configs/ConfigParams;->i:Ljava/util/HashMap;

    .line 89
    return-void
.end method


# virtual methods
.method public getAllowedContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/inmobi/re/configs/ConfigParams;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxSaveContentSize()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/inmobi/re/configs/ConfigParams;->g:I

    return v0
.end method

.method public getMaxVibDuration()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/inmobi/re/configs/ConfigParams;->f:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getMaxVibPatternLength()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/inmobi/re/configs/ConfigParams;->e:I

    return v0
.end method

.method public getPicHeight()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/inmobi/re/configs/ConfigParams;->c:I

    return v0
.end method

.method public getPicQuality()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/inmobi/re/configs/ConfigParams;->d:I

    return v0
.end method

.method public getPicWidth()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/inmobi/re/configs/ConfigParams;->b:I

    return v0
.end method

.method public getWebviewBgColor()I
    .locals 3

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/configs/ConfigParams;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 74
    :goto_0
    return v0

    .line 69
    :catch_0
    move-exception v0

    .line 71
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Invalid bg color. Reverting to default"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setFromMap(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 94
    :try_start_0
    const-string v0, "savecontent"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/inmobi/re/configs/ConfigParams;->i:Ljava/util/HashMap;

    .line 95
    iget-object v0, p0, Lcom/inmobi/re/configs/ConfigParams;->i:Ljava/util/HashMap;

    const-string v2, "maxl"

    const/4 v3, 0x1

    const-wide/32 v4, 0x7fffffff

    invoke-static {v0, v2, v3, v4, v5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    sput v0, Lcom/inmobi/re/configs/ConfigParams;->g:I

    .line 96
    iget-object v0, p0, Lcom/inmobi/re/configs/ConfigParams;->i:Ljava/util/HashMap;

    const-string v2, "ctp"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/re/configs/ConfigParams;->h:Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/inmobi/re/configs/ConfigParams;->h:Ljava/lang/String;

    .line 99
    const-string v2, "\\"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 100
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 106
    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_2

    .line 108
    aget-object v1, v2, v0

    const/4 v3, 0x1

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 109
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const/4 v0, 0x5

    sput v0, Lcom/inmobi/re/configs/ConfigParams;->g:I

    .line 134
    const-string v0, "[\"video/mp4\"]"

    sput-object v0, Lcom/inmobi/re/configs/ConfigParams;->h:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 106
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/String;

    .line 118
    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 119
    const/4 v0, 0x0

    aget-object v0, v1, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 125
    :cond_2
    const-string v0, "wthc"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/re/configs/ConfigParams;->a:Ljava/lang/String;

    .line 126
    const-string v0, "picH"

    const/4 v1, 0x1

    const-wide/32 v2, 0x7fffffff

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/configs/ConfigParams;->c:I

    .line 127
    const-string v0, "picW"

    const/4 v1, 0x1

    const-wide/32 v2, 0x7fffffff

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/configs/ConfigParams;->b:I

    .line 128
    const-string v0, "picA"

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/configs/ConfigParams;->d:I

    .line 129
    const-string v0, "mvd"

    const/4 v1, 0x0

    const-wide/32 v2, 0x7fffffff

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/configs/ConfigParams;->f:I

    .line 130
    const-string v0, "mvp"

    const/4 v1, 0x0

    const-wide/32 v2, 0x7fffffff

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/configs/ConfigParams;->e:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    return-void
.end method
