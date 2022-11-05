.class Lcom/amazon/device/ads/InterstitialAd$3;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/InterstitialAd;->callOnAdDismissedOnMainThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/InterstitialAd;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/amazon/device/ads/InterstitialAd$3;->this$0:Lcom/amazon/device/ads/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAd$3;->this$0:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->callOnAdDismissed()V

    .line 494
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAd$3;->this$0:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->submitAndResetMetrics()V

    .line 495
    return-void
.end method
