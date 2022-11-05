.class Lcom/openx/view/MediatedAdView$sdkChainCallBack;
.super Ljava/lang/Object;
.source "MediatedAdView.java"

# interfaces
.implements Lcom/openx/view/tp/chain/network/SDKChainLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/view/MediatedAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sdkChainCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/MediatedAdView;


# direct methods
.method private constructor <init>(Lcom/openx/view/MediatedAdView;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/openx/view/MediatedAdView$sdkChainCallBack;->this$0:Lcom/openx/view/MediatedAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openx/view/MediatedAdView;Lcom/openx/view/MediatedAdView$1;)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/openx/view/MediatedAdView$sdkChainCallBack;-><init>(Lcom/openx/view/MediatedAdView;)V

    return-void
.end method


# virtual methods
.method public onSDKChainLoadFail(Lcom/openx/errors/AdError;)V
    .locals 2

    .prologue
    .line 328
    const-string v0, "MediatedAdView"

    const-string v1, "error in getting sdk chain"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/openx/view/MediatedAdView$sdkChainCallBack;->this$0:Lcom/openx/view/MediatedAdView;

    invoke-virtual {v0}, Lcom/openx/view/MediatedAdView;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/openx/view/MediatedAdView$sdkChainCallBack;->this$0:Lcom/openx/view/MediatedAdView;

    invoke-virtual {v0}, Lcom/openx/view/MediatedAdView;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/openx/view/AdEventsListener;->onAdFailedToLoad(Lcom/openx/errors/AdError;)V

    .line 335
    :cond_0
    return-void
.end method

.method public onSDKChainLoadNonCriticalError(Lcom/openx/errors/AdError;)V
    .locals 2

    .prologue
    .line 340
    const-string v0, "MediatedAdView"

    const-string v1, "error in getting sdk chain"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public onSDKChainLoadSuccess(Lcom/openx/view/tp/chain/parser/ChainResponse;)V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/openx/view/MediatedAdView$sdkChainCallBack;->this$0:Lcom/openx/view/MediatedAdView;

    invoke-static {v0}, Lcom/openx/view/MediatedAdView;->access$200(Lcom/openx/view/MediatedAdView;)Lcom/openx/view/tp/chain/ChainManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openx/view/tp/chain/ChainManager;->setChainResponse(Lcom/openx/view/tp/chain/parser/ChainResponse;)V

    .line 316
    iget-object v0, p0, Lcom/openx/view/MediatedAdView$sdkChainCallBack;->this$0:Lcom/openx/view/MediatedAdView;

    invoke-static {v0}, Lcom/openx/view/MediatedAdView;->access$200(Lcom/openx/view/MediatedAdView;)Lcom/openx/view/tp/chain/ChainManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/openx/view/tp/chain/parser/ChainResponse;->getAds()Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/view/tp/chain/parser/ChainItem;

    invoke-virtual {v1, v0}, Lcom/openx/view/tp/chain/ChainManager;->loadThirdPartyAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V

    .line 318
    iget-object v0, p0, Lcom/openx/view/MediatedAdView$sdkChainCallBack;->this$0:Lcom/openx/view/MediatedAdView;

    invoke-static {v0}, Lcom/openx/view/MediatedAdView;->access$300(Lcom/openx/view/MediatedAdView;)Lcom/openx/model/AdType;

    move-result-object v0

    sget-object v1, Lcom/openx/model/AdType;->INTERSTITIAL:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/openx/view/MediatedAdView$sdkChainCallBack;->this$0:Lcom/openx/view/MediatedAdView;

    invoke-virtual {v0}, Lcom/openx/view/MediatedAdView;->stoppedLoading()V

    .line 323
    :cond_0
    return-void
.end method
