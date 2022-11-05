.class public Lcom/inmobi/monetization/internal/configs/NativeConfigParams;
.super Ljava/lang/Object;
.source "NativeConfigParams.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x64

    iput v0, p0, Lcom/inmobi/monetization/internal/configs/NativeConfigParams;->a:I

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/inmobi/monetization/internal/configs/NativeConfigParams;->b:I

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lcom/inmobi/monetization/internal/configs/NativeConfigParams;->c:I

    .line 19
    const-wide/16 v0, 0xce4

    iput-wide v0, p0, Lcom/inmobi/monetization/internal/configs/NativeConfigParams;->d:J

    return-void
.end method


# virtual methods
.method public getTimeToLive()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/inmobi/monetization/internal/configs/NativeConfigParams;->d:J

    return-wide v0
.end method

.method public getmFetchLimit()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/inmobi/monetization/internal/configs/NativeConfigParams;->c:I

    return v0
.end method

.method public getmMaxCacheSize()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/inmobi/monetization/internal/configs/NativeConfigParams;->a:I

    return v0
.end method

.method public getmMinLimit()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/inmobi/monetization/internal/configs/NativeConfigParams;->b:I

    return v0
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
    const-wide/32 v2, 0x7fffffff

    const/4 v1, 0x1

    .line 38
    const-string v0, "mcl"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/monetization/internal/configs/NativeConfigParams;->a:I

    .line 40
    const-string v0, "mt"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/monetization/internal/configs/NativeConfigParams;->b:I

    .line 42
    const-string v0, "fl"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/monetization/internal/configs/NativeConfigParams;->c:I

    .line 44
    const-string v1, "ttl"

    const-wide/16 v2, 0x1

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLongFromMap(Ljava/util/Map;Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/monetization/internal/configs/NativeConfigParams;->d:J

    .line 46
    return-void
.end method
