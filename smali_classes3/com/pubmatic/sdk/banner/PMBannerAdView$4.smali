.class Lcom/pubmatic/sdk/banner/PMBannerAdView$4;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView;->showInterstitialWithDuration(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
    .locals 0

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$4;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$4;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeInterstitial()V

    .line 1281
    return-void
.end method
