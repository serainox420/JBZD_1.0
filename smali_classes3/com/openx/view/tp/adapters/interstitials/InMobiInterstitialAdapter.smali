.class public Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;
.super Lcom/openx/view/tp/adapters/AdapterBase;
.source "InMobiInterstitialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InMobiInterstitialAdapter"


# instance fields
.field private adInterstitialListener:Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;

.field private interstitial:Lcom/inmobi/monetization/IMInterstitial;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/openx/view/tp/adapters/AdapterBase;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/inmobi/monetization/IMInterstitial;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    return-object v0
.end method

.method static synthetic access$900(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->cleanUp()V

    .line 37
    const-string v0, "InMobiInterstitialAdapter"

    const-string v1, "cleanUp: InMobiBannerAdapter destroying InMobiBanner on cleanUp"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0, v2}, Lcom/inmobi/monetization/IMInterstitial;->setIMInterstitialListener(Lcom/inmobi/monetization/IMInterstitialListener;)V

    .line 42
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->destroy()V

    .line 43
    iput-object v2, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    .line 47
    :cond_0
    return-void
.end method

.method public loadAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 4

    .prologue
    .line 67
    iget-object v1, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->context:Landroid/content/Context;

    iget-object v0, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->sdkParams:Lcom/openx/view/tp/chain/parser/SDKParams;

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/SDKParams;->dictionary:Ljava/util/HashMap;

    const-string v2, "appid"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    new-instance v2, Lcom/inmobi/monetization/IMInterstitial;

    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->sdkParams:Lcom/openx/view/tp/chain/parser/SDKParams;

    iget-object v1, v1, Lcom/openx/view/tp/chain/parser/SDKParams;->dictionary:Ljava/util/HashMap;

    const-string v3, "appid"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/inmobi/monetization/IMInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    .line 69
    new-instance v0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;

    invoke-direct {v0, p0}, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;-><init>(Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->adInterstitialListener:Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;

    .line 70
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->adInterstitialListener:Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter$AdInterstitialListener;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->setIMInterstitialListener(Lcom/inmobi/monetization/IMInterstitialListener;)V

    .line 71
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->loadInterstitial()V

    .line 72
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->show()V

    .line 54
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;->interstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->show()V

    .line 59
    :cond_0
    return-void
.end method
