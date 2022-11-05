.class Lcom/amazon/device/ads/InterstitialAd$2;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/InterstitialAd;->callOnAdFailedOnMainThread(Lcom/amazon/device/ads/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/InterstitialAd;

.field final synthetic val$error:Lcom/amazon/device/ads/AdError;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/InterstitialAd;Lcom/amazon/device/ads/AdError;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/amazon/device/ads/InterstitialAd$2;->this$0:Lcom/amazon/device/ads/InterstitialAd;

    iput-object p2, p0, Lcom/amazon/device/ads/InterstitialAd$2;->val$error:Lcom/amazon/device/ads/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAd$2;->this$0:Lcom/amazon/device/ads/InterstitialAd;

    iget-object v1, p0, Lcom/amazon/device/ads/InterstitialAd$2;->val$error:Lcom/amazon/device/ads/AdError;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/InterstitialAd;->callOnAdFailedToLoad(Lcom/amazon/device/ads/AdError;)V

    .line 477
    return-void
.end method
