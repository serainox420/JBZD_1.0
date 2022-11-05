.class public Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;
.super Ljava/lang/Object;
.source "IMAIConfigParams.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->a:I

    .line 19
    iput v1, p0, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->b:I

    .line 20
    const/16 v0, 0x78

    iput v0, p0, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->c:I

    .line 21
    iput v1, p0, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->d:I

    .line 22
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->e:I

    .line 55
    return-void
.end method


# virtual methods
.method public getMaxRetry()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->a:I

    return v0
.end method

.method public getPingTimeOut()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->c:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getRetryInterval()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getmDefaultEventsBatch()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->d:I

    return v0
.end method

.method public getmMaxDb()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->e:I

    return v0
.end method

.method public setFromMap(Ljava/util/Map;)V
    .locals 5
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
    const/4 v4, 0x1

    const-wide/32 v2, 0x7fffffff

    .line 58
    const-string v0, "mr"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->a:I

    .line 60
    const-string v0, "pint"

    invoke-static {p1, v0, v4, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->b:I

    .line 62
    const-string v0, "pto"

    invoke-static {p1, v0, v4, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->c:I

    .line 63
    const-string v0, "eb"

    invoke-static {p1, v0, v4, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->d:I

    .line 64
    const-string v0, "mdb"

    invoke-static {p1, v0, v4, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->e:I

    .line 65
    return-void
.end method

.method public setmDefaultEventsBatch(I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->d:I

    .line 28
    return-void
.end method

.method public setmMaxDb(I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->e:I

    .line 34
    return-void
.end method
