.class Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;
.super Ljava/lang/Object;
.source "InMobiInterstitialAdapter.java"

# interfaces
.implements Lcom/inmobi/monetization/IMInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdInterstitialListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;->this$0:Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;->this$0:Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->access$200(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;->this$0:Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->access$300(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->InMobi:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClosed(Lcom/openx/view/tp/chain/SDK;)V

    .line 94
    :cond_0
    return-void
.end method

.method public onInterstitialFailed(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;->this$0:Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;

    invoke-virtual {v0}, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->cleanUp()V

    .line 101
    new-instance v0, Lcom/openx/errors/UnknownError;

    invoke-virtual {p2}, Lcom/inmobi/monetization/IMErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;->this$0:Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;

    invoke-static {v1}, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->access$400(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;->this$0:Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;

    invoke-static {v1}, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->access$500(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v1

    sget-object v2, Lcom/openx/view/tp/chain/SDK;->InMobi:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v1, v2, v0}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdFailedToLoad(Lcom/openx/view/tp/chain/SDK;Lcom/openx/errors/AdError;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onInterstitialInteraction(Lcom/inmobi/monetization/IMInterstitial;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;->this$0:Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->access$600(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;->this$0:Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->access$700(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->MoPub:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClicked(Lcom/openx/view/tp/chain/SDK;)V

    .line 115
    :cond_0
    return-void
.end method

.method public onInterstitialLoaded(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;->this$0:Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->access$800(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/inmobi/monetization/IMInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;->this$0:Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->access$900(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;->this$0:Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->access$1000(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->InMobi:Lcom/openx/view/tp/chain/SDK;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;->this$0:Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;

    invoke-static {v2}, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->access$800(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/inmobi/monetization/IMInterstitial;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdDidLoad(Lcom/openx/view/tp/chain/SDK;Ljava/lang/Object;)V

    .line 128
    :cond_0
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;->this$0:Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->access$000(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;->this$0:Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->access$100(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->InMobi:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClosed(Lcom/openx/view/tp/chain/SDK;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onShowInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method
