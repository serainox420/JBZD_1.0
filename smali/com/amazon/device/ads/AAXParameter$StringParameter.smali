.class Lcom/amazon/device/ads/AAXParameter$StringParameter;
.super Lcom/amazon/device/ads/AAXParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/device/ads/AAXParameter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/AAXParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method


# virtual methods
.method protected bridge synthetic getFromDebugProperties()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/amazon/device/ads/AAXParameter$StringParameter;->getFromDebugProperties()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFromDebugProperties()Ljava/lang/String;
    .locals 3

    .prologue
    .line 231
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/device/ads/AAXParameter$StringParameter;->getDebugName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parseFromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$StringParameter;->parseFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 225
    return-object p1
.end method
