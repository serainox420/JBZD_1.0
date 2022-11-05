.class public Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;
.super Lcom/openx/view/tp/adapters/AdapterBase;
.source "MillenialBannerAdapter.java"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# static fields
.field private static final BANNER_AD_HEIGHT:I = 0x32

.field private static final BANNER_AD_WIDTH:I = 0x140

.field private static final IAB_LEADERBOARD_HEIGHT:I = 0x5a

.field private static final IAB_LEADERBOARD_WIDTH:I = 0x2d8

.field private static final MED_BANNER_HEIGHT:I = 0x3c

.field private static final MED_BANNER_WIDTH:I = 0x1e0

.field private static final TAG:Ljava/lang/String; = "MillenialBannerAdapter"


# instance fields
.field private mBannerView:Lcom/millennialmedia/android/MMAdView;

.field private placementHeight:I

.field private placementWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V
    .locals 3

    .prologue
    const/16 v2, 0x2d8

    const/16 v1, 0x1e0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/openx/view/tp/adapters/AdapterBase;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    .line 45
    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->initialize(Landroid/content/Context;)V

    .line 47
    const/16 v0, 0x140

    iput v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->placementWidth:I

    .line 48
    const/16 v0, 0x32

    iput v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->placementHeight:I

    .line 51
    invoke-virtual {p0, v2}, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->canFit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iput v2, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->placementWidth:I

    .line 54
    const/16 v0, 0x5a

    iput v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->placementHeight:I

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0, v1}, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->canFit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iput v1, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->placementWidth:I

    .line 59
    const/16 v0, 0x3c

    iput v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->placementHeight:I

    goto :goto_0
.end method


# virtual methods
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->Millenial:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClosed(Lcom/openx/view/tp/chain/SDK;)V

    .line 108
    :cond_0
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method protected canFit(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 66
    int-to-float v1, p1

    iget-object v2, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 67
    iget-object v2, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 68
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->cleanUp()V

    .line 163
    const-string v0, "MillenialBannerAdapter"

    const-string v1, "cleanUp: MillenialBannerAdapter "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->mBannerView:Lcom/millennialmedia/android/MMAdView;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->mBannerView:Lcom/millennialmedia/android/MMAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 168
    :cond_0
    return-void
.end method

.method public loadAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 74
    new-instance v0, Lcom/millennialmedia/android/MMAdView;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->mBannerView:Lcom/millennialmedia/android/MMAdView;

    .line 75
    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->mBannerView:Lcom/millennialmedia/android/MMAdView;

    iget-object v0, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->sdkParams:Lcom/openx/view/tp/chain/parser/SDKParams;

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/SDKParams;->dictionary:Ljava/util/HashMap;

    const-string v2, "apid"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/millennialmedia/android/MMRequest;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMRequest;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->mBannerView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMAdView;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    .line 79
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->mBannerView:Lcom/millennialmedia/android/MMAdView;

    iget v1, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->placementWidth:I

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setWidth(I)V

    .line 80
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->mBannerView:Lcom/millennialmedia/android/MMAdView;

    iget v1, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->placementHeight:I

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setHeight(I)V

    .line 81
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->mBannerView:Lcom/millennialmedia/android/MMAdView;

    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->getDefaultAdId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    .line 82
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->mBannerView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 85
    iget v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->placementWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 86
    iget v1, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->placementHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 89
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 92
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 93
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->mBannerView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->mBannerView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getAd()V

    .line 99
    return-void
.end method

.method public onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 2

    .prologue
    .line 125
    const-string v0, "MillenialBannerAdapter"

    const-string v1, "Millenial Single Click called"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->Millenial:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClicked(Lcom/openx/view/tp/chain/SDK;)V

    .line 131
    :cond_0
    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->Millenial:Lcom/openx/view/tp/chain/SDK;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->mBannerView:Lcom/millennialmedia/android/MMAdView;

    invoke-interface {v0, v1, v2}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdDidLoad(Lcom/openx/view/tp/chain/SDK;Ljava/lang/Object;)V

    .line 142
    :cond_0
    return-void
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 3

    .prologue
    .line 148
    .line 150
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Lcom/openx/errors/UnknownError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v2, Lcom/openx/view/tp/chain/SDK;->Millenial:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v1, v2, v0}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdFailedToLoad(Lcom/openx/view/tp/chain/SDK;Lcom/openx/errors/AdError;)V

    .line 156
    :cond_0
    return-void
.end method
