.class Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter$AdBannerListener;
.super Ljava/lang/Object;
.source "InMobiBannerAdapter.java"

# interfaces
.implements Lcom/inmobi/monetization/IMBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdBannerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;


# direct methods
.method constructor <init>(Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter$AdBannerListener;->this$0:Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerInteraction(Lcom/inmobi/monetization/IMBanner;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMBanner;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter$AdBannerListener;->this$0:Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->access$000(Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter$AdBannerListener;->this$0:Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->access$100(Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->InMobi:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClicked(Lcom/openx/view/tp/chain/SDK;)V

    .line 76
    :cond_0
    return-void
.end method

.method public onBannerRequestFailed(Lcom/inmobi/monetization/IMBanner;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter$AdBannerListener;->this$0:Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;

    invoke-virtual {v0}, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->cleanUp()V

    .line 84
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter$AdBannerListener;->this$0:Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->access$200(Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcom/openx/errors/UnknownError;

    invoke-virtual {p2}, Lcom/inmobi/monetization/IMErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter$AdBannerListener;->this$0:Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;

    invoke-static {v1}, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->access$300(Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v1

    sget-object v2, Lcom/openx/view/tp/chain/SDK;->InMobi:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v1, v2, v0}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdFailedToLoad(Lcom/openx/view/tp/chain/SDK;Lcom/openx/errors/AdError;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onBannerRequestSucceeded(Lcom/inmobi/monetization/IMBanner;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter$AdBannerListener;->this$0:Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->access$400(Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter$AdBannerListener;->this$0:Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->access$500(Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->InMobi:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1, p1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdDidLoad(Lcom/openx/view/tp/chain/SDK;Ljava/lang/Object;)V

    .line 98
    :cond_0
    return-void
.end method

.method public onDismissBannerScreen(Lcom/inmobi/monetization/IMBanner;)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/monetization/IMBanner;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter$AdBannerListener;->this$0:Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->access$600(Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter$AdBannerListener;->this$0:Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->access$700(Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->InMobi:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClosed(Lcom/openx/view/tp/chain/SDK;)V

    .line 114
    :cond_0
    return-void
.end method

.method public onShowBannerScreen(Lcom/inmobi/monetization/IMBanner;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method
