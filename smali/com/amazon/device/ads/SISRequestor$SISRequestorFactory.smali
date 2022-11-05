.class Lcom/amazon/device/ads/SISRequestor$SISRequestorFactory;
.super Ljava/lang/Object;
.source "SISRequestor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/SISRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SISRequestorFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs createSISRequestor(Lcom/amazon/device/ads/SISRequestorCallback;[Lcom/amazon/device/ads/SISRequest;)Lcom/amazon/device/ads/SISRequestor;
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/amazon/device/ads/SISRequestor;

    invoke-direct {v0, p1, p2}, Lcom/amazon/device/ads/SISRequestor;-><init>(Lcom/amazon/device/ads/SISRequestorCallback;[Lcom/amazon/device/ads/SISRequest;)V

    return-object v0
.end method

.method public varargs createSISRequestor([Lcom/amazon/device/ads/SISRequest;)Lcom/amazon/device/ads/SISRequestor;
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/device/ads/SISRequestor$SISRequestorFactory;->createSISRequestor(Lcom/amazon/device/ads/SISRequestorCallback;[Lcom/amazon/device/ads/SISRequest;)Lcom/amazon/device/ads/SISRequestor;

    move-result-object v0

    return-object v0
.end method
