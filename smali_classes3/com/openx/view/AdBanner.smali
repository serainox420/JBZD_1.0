.class public Lcom/openx/view/AdBanner;
.super Lcom/openx/view/AdBase;
.source "AdBanner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdBanner"


# instance fields
.field private fallbackAdWebView:Lcom/openx/view/WebViewBanner;

.field private flip:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/openx/view/AdBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/openx/view/AdBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/openx/view/AdBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/openx/view/tp/chain/parser/ChainItem;)V

    .line 88
    invoke-direct {p0, p2}, Lcom/openx/view/AdBanner;->initWebViewBanner(Lcom/openx/model/Ad;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/openx/view/AdBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/openx/view/AdBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/openx/view/tp/chain/parser/ChainItem;)V

    .line 40
    return-void
.end method

.method private initWebViewBanner(Lcom/openx/model/Ad;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 94
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    .line 96
    new-instance v0, Lcom/openx/view/WebViewBanner;

    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/openx/view/WebViewBanner;-><init>(Landroid/content/Context;Lcom/openx/model/Ad;Ljava/util/UUID;ZLcom/openx/view/video/PreloadManager$PreloadedListener;)V

    iput-object v0, p0, Lcom/openx/view/AdBanner;->fallbackAdWebView:Lcom/openx/view/WebViewBanner;

    .line 98
    iget-object v0, p0, Lcom/openx/view/AdBanner;->fallbackAdWebView:Lcom/openx/view/WebViewBanner;

    invoke-virtual {v0, p1}, Lcom/openx/view/WebViewBanner;->setAd(Lcom/openx/model/Ad;)V

    .line 100
    iget-object v0, p0, Lcom/openx/view/AdBanner;->fallbackAdWebView:Lcom/openx/view/WebViewBanner;

    invoke-virtual {v0, v3}, Lcom/openx/view/WebViewBanner;->setParentId(Ljava/util/UUID;)V

    .line 102
    iget v0, p0, Lcom/openx/view/AdBanner;->interval:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/openx/view/AdBanner;->fallbackAdWebView:Lcom/openx/view/WebViewBanner;

    invoke-virtual {v0, v4}, Lcom/openx/view/WebViewBanner;->setManuallyRefreshed(Z)V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->incrementNumRequests()V

    .line 105
    return-void
.end method

.method private loadAd(Lcom/openx/model/AdGroup;Ljava/util/UUID;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 188
    iget-object v0, p0, Lcom/openx/view/AdBanner;->chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openx/view/AdBanner;->chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/ChainItem;->mediationUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 191
    new-instance v0, Lcom/openx/view/WebViewBanner;

    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/view/AdBanner;->chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    move-object v3, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/openx/view/WebViewBanner;-><init>(Landroid/content/Context;Lcom/openx/model/Ad;Ljava/util/UUID;ZLcom/openx/view/video/PreloadManager$PreloadedListener;)V

    .line 193
    invoke-virtual {p1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openx/model/Ad;

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewBanner;->setAd(Lcom/openx/model/Ad;)V

    .line 205
    :goto_0
    invoke-virtual {v0, p2}, Lcom/openx/view/WebViewBanner;->setParentId(Ljava/util/UUID;)V

    .line 207
    iget v1, p0, Lcom/openx/view/AdBanner;->interval:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v4}, Lcom/openx/view/WebViewBanner;->setManuallyRefreshed(Z)V

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->getAdModel()Lcom/openx/model/AdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewBanner;->setAdModel(Lcom/openx/model/AdModel;)V

    .line 211
    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewBanner;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 213
    invoke-virtual {v0}, Lcom/openx/view/WebViewBanner;->loadAd()V

    .line 215
    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->incrementNumRequests()V

    .line 217
    return-void

    .line 199
    :cond_1
    new-instance v1, Lcom/openx/view/WebViewBanner;

    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0, v4, p0}, Lcom/openx/view/WebViewBanner;-><init>(Landroid/content/Context;ZLcom/openx/view/video/PreloadManager$PreloadedListener;)V

    .line 201
    invoke-virtual {p1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/Ad;

    invoke-virtual {v1, v0}, Lcom/openx/view/WebViewBanner;->setAd(Lcom/openx/model/Ad;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private loadAd1(Lcom/openx/model/AdGroup;Ljava/util/UUID;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 222
    iget-object v0, p0, Lcom/openx/view/AdBanner;->ad1:Lcom/openx/view/WebViewBanner;

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/openx/view/AdBanner;->chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openx/view/AdBanner;->chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/ChainItem;->mediationUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 229
    new-instance v0, Lcom/openx/view/WebViewBanner;

    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/view/AdBanner;->chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    move-object v3, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/openx/view/WebViewBanner;-><init>(Landroid/content/Context;Lcom/openx/model/Ad;Ljava/util/UUID;ZLcom/openx/view/video/PreloadManager$PreloadedListener;)V

    iput-object v0, p0, Lcom/openx/view/AdBanner;->ad1:Lcom/openx/view/WebViewBanner;

    .line 231
    iget-object v1, p0, Lcom/openx/view/AdBanner;->ad1:Lcom/openx/view/WebViewBanner;

    invoke-virtual {p1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/Ad;

    invoke-virtual {v1, v0}, Lcom/openx/view/WebViewBanner;->setAd(Lcom/openx/model/Ad;)V

    .line 242
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/openx/view/AdBanner;->ad1:Lcom/openx/view/WebViewBanner;

    invoke-virtual {p1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/Ad;

    invoke-virtual {v1, v0}, Lcom/openx/view/WebViewBanner;->setAd(Lcom/openx/model/Ad;)V

    .line 244
    iget-object v0, p0, Lcom/openx/view/AdBanner;->ad1:Lcom/openx/view/WebViewBanner;

    invoke-virtual {v0, p2}, Lcom/openx/view/WebViewBanner;->setParentId(Ljava/util/UUID;)V

    .line 246
    iget v0, p0, Lcom/openx/view/AdBanner;->interval:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/openx/view/AdBanner;->ad1:Lcom/openx/view/WebViewBanner;

    invoke-virtual {v0, v4}, Lcom/openx/view/WebViewBanner;->setManuallyRefreshed(Z)V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/openx/view/AdBanner;->ad1:Lcom/openx/view/WebViewBanner;

    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->getAdModel()Lcom/openx/model/AdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewBanner;->setAdModel(Lcom/openx/model/AdModel;)V

    .line 250
    iget-object v0, p0, Lcom/openx/view/AdBanner;->ad1:Lcom/openx/view/WebViewBanner;

    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewBanner;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 252
    iget-object v0, p0, Lcom/openx/view/AdBanner;->ad1:Lcom/openx/view/WebViewBanner;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBanner;->loadAd()V

    .line 254
    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->incrementNumRequests()V

    .line 256
    return-void

    .line 237
    :cond_2
    new-instance v0, Lcom/openx/view/WebViewBanner;

    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v4, p0}, Lcom/openx/view/WebViewBanner;-><init>(Landroid/content/Context;ZLcom/openx/view/video/PreloadManager$PreloadedListener;)V

    iput-object v0, p0, Lcom/openx/view/AdBanner;->ad1:Lcom/openx/view/WebViewBanner;

    goto :goto_0
.end method

.method private loadAd2(Lcom/openx/model/AdGroup;Ljava/util/UUID;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 308
    iget-object v0, p0, Lcom/openx/view/AdBanner;->ad2:Lcom/openx/view/WebViewBanner;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lcom/openx/view/WebViewBanner;

    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3, p0}, Lcom/openx/view/WebViewBanner;-><init>(Landroid/content/Context;ZLcom/openx/view/video/PreloadManager$PreloadedListener;)V

    iput-object v0, p0, Lcom/openx/view/AdBanner;->ad2:Lcom/openx/view/WebViewBanner;

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/openx/view/AdBanner;->ad2:Lcom/openx/view/WebViewBanner;

    invoke-virtual {p1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/Ad;

    invoke-virtual {v1, v0}, Lcom/openx/view/WebViewBanner;->setAd(Lcom/openx/model/Ad;)V

    .line 316
    iget-object v0, p0, Lcom/openx/view/AdBanner;->ad2:Lcom/openx/view/WebViewBanner;

    invoke-virtual {v0, p2}, Lcom/openx/view/WebViewBanner;->setParentId(Ljava/util/UUID;)V

    .line 318
    iget v0, p0, Lcom/openx/view/AdBanner;->interval:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/openx/view/AdBanner;->ad2:Lcom/openx/view/WebViewBanner;

    invoke-virtual {v0, v3}, Lcom/openx/view/WebViewBanner;->setManuallyRefreshed(Z)V

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/openx/view/AdBanner;->ad2:Lcom/openx/view/WebViewBanner;

    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->getAdModel()Lcom/openx/model/AdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewBanner;->setAdModel(Lcom/openx/model/AdModel;)V

    .line 321
    iget-object v0, p0, Lcom/openx/view/AdBanner;->ad2:Lcom/openx/view/WebViewBanner;

    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewBanner;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 323
    iget-object v0, p0, Lcom/openx/view/AdBanner;->ad2:Lcom/openx/view/WebViewBanner;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBanner;->loadAd()V

    .line 324
    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->incrementNumRequests()V

    .line 325
    return-void
.end method


# virtual methods
.method public adModelLoadAdSuccess(Lcom/openx/model/AdGroup;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-super {p0, p1}, Lcom/openx/view/AdBase;->adModelLoadAdSuccess(Lcom/openx/model/AdGroup;)V

    .line 126
    const-string v0, "AdBanner"

    const-string v1, "Banner\'s adModelLoadSuccess"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 132
    invoke-virtual {p1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/Ad;

    invoke-virtual {v0}, Lcom/openx/model/Ad;->getRefreshInterval()I

    move-result v0

    .line 134
    if-lez v0, :cond_0

    iget v1, p0, Lcom/openx/view/AdBanner;->interval:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 136
    const-string v1, "AdBanner"

    const-string v2, "adModelLoadAdSuccess setAdChangeInterval"

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/openx/view/AdBanner;->setAutoRefreshInterval(I)V

    .line 140
    :cond_0
    const/4 v0, 0x0

    .line 142
    invoke-virtual {p1}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 144
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 147
    :cond_1
    iget-boolean v1, p0, Lcom/openx/view/AdBanner;->flip:Z

    if-nez v1, :cond_2

    .line 150
    const-string v1, "AdBanner"

    const-string v2, "Loading Ad 1 or SSM Ad"

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, p1, v0}, Lcom/openx/view/AdBanner;->loadAd1(Lcom/openx/model/AdGroup;Ljava/util/UUID;)V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/view/AdBanner;->flip:Z

    .line 171
    :goto_0
    return-void

    .line 160
    :cond_2
    const-string v1, "AdBanner"

    const-string v2, "Loading Ad 2"

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, p1, v0}, Lcom/openx/view/AdBanner;->loadAd2(Lcom/openx/model/AdGroup;Ljava/util/UUID;)V

    .line 163
    iput-boolean v3, p0, Lcom/openx/view/AdBanner;->flip:Z

    goto :goto_0

    .line 168
    :cond_3
    const-string v0, "No Ads in AdGroup"

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public displayAdViewPlacement(Lcom/openx/view/WebViewBase;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 405
    invoke-super {p0, p1}, Lcom/openx/view/AdBase;->displayAdViewPlacement(Lcom/openx/view/WebViewBase;)V

    .line 407
    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->getAdWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->getAdWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 411
    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->getAdHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->invalidate()V

    .line 417
    return-void
.end method

.method public loadFallback()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/openx/view/AdBanner;->fallbackAdWebView:Lcom/openx/view/WebViewBanner;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/openx/view/AdBanner;->fallbackAdWebView:Lcom/openx/view/WebViewBanner;

    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewBanner;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 116
    iget-object v0, p0, Lcom/openx/view/AdBanner;->fallbackAdWebView:Lcom/openx/view/WebViewBanner;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBanner;->loadAd()V

    .line 118
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/openx/view/AdBase;->onAttachedToWindow()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/view/AdBanner;->isPaused:Z

    .line 76
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 263
    invoke-super {p0}, Lcom/openx/view/AdBase;->onDetachedFromWindow()V

    .line 303
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    invoke-super {p0, p1, p2}, Lcom/openx/view/AdBase;->onVisibilityChanged(Landroid/view/View;I)V

    .line 333
    iget v0, p0, Lcom/openx/view/AdBanner;->interval:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 335
    invoke-virtual {p0, v2}, Lcom/openx/view/AdBanner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/openx/view/WebViewBase;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0, v2}, Lcom/openx/view/AdBanner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/openx/view/WebViewBase;

    .line 338
    invoke-static {v0}, Lcom/openx/view/AdBanner;->trackImpressionEvent(Lcom/openx/view/WebViewBase;)V

    .line 341
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 362
    iget-boolean v0, p0, Lcom/openx/view/AdBanner;->loadCalled:Z

    if-eqz v0, :cond_1

    .line 365
    iput-boolean v2, p0, Lcom/openx/view/AdBanner;->loadCalled:Z

    .line 372
    :goto_0
    invoke-super {p0, p1}, Lcom/openx/view/AdBase;->onWindowFocusChanged(Z)V

    .line 374
    if-eqz p1, :cond_0

    .line 376
    iput-boolean v1, p0, Lcom/openx/view/AdBanner;->isPaused:Z

    .line 377
    iput-boolean v2, p0, Lcom/openx/view/AdBanner;->screenOn:Z

    .line 379
    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/openx/view/AdBanner;->autoStartLoading:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/openx/view/AdBanner;->loadCalled:Z

    if-nez v0, :cond_0

    .line 382
    const-string v0, "AdBanner"

    const-string v1, "(load&scheduleTimer logs) initloading from onWindowFocusedChanged"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openx/view/AdBanner;->initStartLoading(Lcom/openx/view/WebViewBase;)V

    .line 392
    :cond_0
    return-void

    .line 369
    :cond_1
    iput-boolean v1, p0, Lcom/openx/view/AdBanner;->loadCalled:Z

    goto :goto_0
.end method

.method public preloaded(Lcom/openx/view/WebViewBase;)V
    .locals 5

    .prologue
    const v4, 0x1020002

    const/4 v3, 0x1

    .line 423
    iget v0, p0, Lcom/openx/view/AdBanner;->adPreloads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openx/view/AdBanner;->adPreloads:I

    .line 425
    iget v0, p0, Lcom/openx/view/AdBanner;->numRequests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/openx/view/AdBanner;->numRequests:I

    .line 427
    const-string v0, "AdBanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdEventsListener(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 432
    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->getChildCount()I

    move-result v0

    if-lt v0, v3, :cond_1

    .line 435
    const-string v0, "AdBanner"

    const-string v1, "adding second banner"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0, p1, v3}, Lcom/openx/view/AdBanner;->addView(Landroid/view/View;I)V

    .line 437
    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->bringToFront()V

    .line 438
    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->swapWebViews()V

    .line 461
    :goto_0
    iget-object v0, p0, Lcom/openx/view/AdBanner;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/openx/view/AdBanner;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 464
    iget-object v0, p0, Lcom/openx/view/AdBanner;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 468
    :cond_0
    const-string v0, "AdBanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adBase count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void

    .line 443
    :cond_1
    const-string v0, "AdBanner"

    const-string v1, "adding first banner"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/openx/view/AdBanner;->addView(Landroid/view/View;I)V

    .line 445
    invoke-virtual {p0, p1}, Lcom/openx/view/AdBanner;->renderAdView(Lcom/openx/view/WebViewBase;)V

    goto :goto_0

    .line 452
    :cond_2
    invoke-virtual {p1}, Lcom/openx/view/WebViewBase;->bringToFront()V

    .line 454
    invoke-virtual {p0}, Lcom/openx/view/AdBanner;->swapWebViews()V

    goto :goto_0
.end method

.method protected renderAdView(Lcom/openx/view/WebViewBase;)V
    .locals 1

    .prologue
    .line 347
    invoke-super {p0, p1}, Lcom/openx/view/AdBase;->renderAdView(Lcom/openx/view/WebViewBase;)V

    .line 349
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openx/core/sdk/OXMManagersResolver;->setCurrentAd(Lcom/openx/view/WebViewBase;)V

    .line 351
    iget-object v0, p0, Lcom/openx/view/AdBanner;->adEventsListener:Lcom/openx/view/AdEventsListener;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/openx/view/AdBanner;->adEventsListener:Lcom/openx/view/AdEventsListener;

    invoke-interface {v0}, Lcom/openx/view/AdEventsListener;->onAdDidLoad()V

    .line 356
    :cond_0
    return-void
.end method

.method public setAutoStartLoading(Z)V
    .locals 0

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/openx/view/AdBanner;->autoStartLoading:Z

    .line 182
    return-void
.end method
