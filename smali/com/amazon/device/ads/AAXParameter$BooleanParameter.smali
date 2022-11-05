.class Lcom/amazon/device/ads/AAXParameter$BooleanParameter;
.super Lcom/amazon/device/ads/AAXParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BooleanParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/device/ads/AAXParameter",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/AAXParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method


# virtual methods
.method protected getFromDebugProperties()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 249
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/device/ads/AAXParameter$BooleanParameter;->getDebugName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getFromDebugProperties()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/amazon/device/ads/AAXParameter$BooleanParameter;->getFromDebugProperties()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected parseFromString(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 244
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parseFromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$BooleanParameter;->parseFromString(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
