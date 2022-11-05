.class Lcom/amazon/device/ads/AAXParameter$LongParameter;
.super Lcom/amazon/device/ads/AAXParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LongParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/device/ads/AAXParameter",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/AAXParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method


# virtual methods
.method protected getFromDebugProperties()Ljava/lang/Long;
    .locals 3

    .prologue
    .line 287
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/device/ads/AAXParameter$LongParameter;->getDebugName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getFromDebugProperties()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/amazon/device/ads/AAXParameter$LongParameter;->getFromDebugProperties()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected parseFromString(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 281
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parseFromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$LongParameter;->parseFromString(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
