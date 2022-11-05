.class Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdMobBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;


# direct methods
.method constructor <init>(Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter$1;->this$0:Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter$1;->this$0:Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;

    invoke-virtual {v0}, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->cleanUp()V

    .line 95
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 97
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter$1;->this$0:Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->access$300(Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lcom/openx/errors/UnknownError;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter$1;->this$0:Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;

    invoke-static {v1}, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->access$400(Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v1

    sget-object v2, Lcom/openx/view/tp/chain/SDK;->AdMob:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v1, v2, v0}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdFailedToLoad(Lcom/openx/view/tp/chain/SDK;Lcom/openx/errors/AdError;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    .line 114
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter$1;->this$0:Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->access$500(Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter$1;->this$0:Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->access$600(Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->AdMob:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClicked(Lcom/openx/view/tp/chain/SDK;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 83
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter$1;->this$0:Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->access$000(Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter$1;->this$0:Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->access$200(Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->AdMob:Lcom/openx/view/tp/chain/SDK;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter$1;->this$0:Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;

    invoke-static {v2}, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->access$100(Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;)Lcom/google/android/gms/ads/AdView;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdDidLoad(Lcom/openx/view/tp/chain/SDK;Ljava/lang/Object;)V

    .line 87
    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 108
    return-void
.end method
