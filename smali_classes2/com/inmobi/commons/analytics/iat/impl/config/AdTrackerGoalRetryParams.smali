.class public Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;
.super Ljava/lang/Object;
.source "AdTrackerGoalRetryParams.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;->a:I

    .line 15
    const/16 v0, 0x384

    iput v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;->b:I

    .line 30
    return-void
.end method


# virtual methods
.method public getMaxRetry()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;->a:I

    return v0
.end method

.method public getMaxWaitTime()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public setFromMap(Ljava/util/Map;)V
    .locals 4
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

    const/4 v1, 0x0

    .line 33
    const-string v0, "mr"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;->a:I

    .line 34
    const-string v0, "mw"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;->b:I

    .line 35
    return-void
.end method
