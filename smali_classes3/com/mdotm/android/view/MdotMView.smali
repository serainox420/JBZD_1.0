.class Lcom/mdotm/android/view/MdotMView;
.super Landroid/widget/RelativeLayout;
.source "MdotMView.java"

# interfaces
.implements Lcom/mdotm/android/listener/MdotMAdActionListener;
.implements Lcom/mdotm/android/listener/MdotMAdEventListener;
.implements Lcom/mdotm/android/listener/MdotMNetworkListener;


# instance fields
.field private deviceWidth:I

.field public didParentStopped:Z

.field private mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

.field mAdManager:Lcom/mdotm/android/http/MdotMNetworkManager;

.field private mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

.field private mAdViewHasFocus:Z

.field private mContext:Landroid/content/Context;

.field private mDidApllicationLeave:Z

.field mHandler:Landroid/os/Handler;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    .line 41
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    .line 46
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMView;->mDidApllicationLeave:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    .line 48
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMView;->didParentStopped:Z

    .line 56
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    .line 41
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    .line 46
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMView;->mDidApllicationLeave:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    .line 48
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMView;->didParentStopped:Z

    .line 73
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    .line 41
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    .line 46
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->mDidApllicationLeave:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    .line 48
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->didParentStopped:Z

    .line 68
    return-void
.end method

.method private getDeviceWidth()I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 340
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 342
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 343
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/mdotm/android/view/MdotMView;->deviceWidth:I

    .line 350
    :goto_0
    iget v0, p0, Lcom/mdotm/android/view/MdotMView;->deviceWidth:I

    return v0

    .line 346
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 347
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 348
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/mdotm/android/view/MdotMView;->deviceWidth:I

    goto :goto_0
.end method

.method private sendRequest()V
    .locals 4

    .prologue
    .line 119
    const-string v0, "Sending request "

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdRequest;->getAdSize()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMView;->getDeviceWidth()I

    move-result v1

    .line 135
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/2addr v2, v1

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int v0, v2, v0

    .line 136
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMView;->getDeviceWidth()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMView;->mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mdotm/android/model/MdotMAdRequest;->setAdSize(Ljava/lang/String;)V

    .line 143
    :cond_0
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    if-eqz v0, :cond_1

    .line 144
    const-string v0, "MdotMView is visible so requesting for ad"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/http/MdotMRequestQueueClient;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView;->mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    .line 145
    invoke-virtual {v0, v1, p0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->addRequest(Lcom/mdotm/android/model/MdotMAdRequest;Lcom/mdotm/android/listener/MdotMNetworkListener;)V

    .line 147
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/http/MdotMRequestQueueClient;

    move-result-object v0

    .line 148
    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    invoke-virtual {v0, v1}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->setApplicationHasFocus(Z)V

    .line 151
    :cond_1
    return-void
.end method


# virtual methods
.method public adClicked()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method public didShowInterstitial()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public finishedAdParsing(Lcom/mdotm/android/model/MdotMAdResponse;)V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public finishedNativeParsing(Lcom/mdotm/android/vast/VastAd;)V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method public finishedVastParsing(Lcom/mdotm/android/vast/VastAd;)V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method public getViewable()Z
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x0

    return v0
.end method

.method public isTablet(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 354
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    move v3, v1

    .line 355
    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    :goto_2
    return v2

    :cond_0
    move v0, v2

    .line 353
    goto :goto_0

    :cond_1
    move v3, v2

    .line 354
    goto :goto_1

    :cond_2
    move v2, v1

    .line 355
    goto :goto_2
.end method

.method public leaveApplication()V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.method public loadAd(Lcom/mdotm/android/listener/MdotMAdEventListener;Lcom/mdotm/android/model/MdotMAdRequest;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    .line 111
    iput-object p2, p0, Lcom/mdotm/android/view/MdotMView;->mAdRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    .line 113
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMView;->sendRequest()V

    .line 115
    return-void
.end method

.method public onDismissScreen()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onDismissScreen()V

    .line 382
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 106
    return-void
.end method

.method public onFailedToReceiveInterstitialAd()V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method public onFailedToReceiveNativeAd()V
    .locals 0

    .prologue
    .line 496
    return-void
.end method

.method public onInterstitialAdClick()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method public onInterstitialDismiss()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public onLeaveApplicationFromInterstitial()V
    .locals 0

    .prologue
    .line 448
    return-void
.end method

.method public onLoadError()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public onMraidRewardClick(Z)V
    .locals 0

    .prologue
    .line 514
    return-void
.end method

.method public onNativeAdClick()V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public onOpenUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 526
    return-void
.end method

.method public onPlayError()V
    .locals 0

    .prologue
    .line 386
    return-void
.end method

.method public onPlayStop()V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public onReceiveInterstitialAd()V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public onReceiveNativeAd(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdotm/android/nativeads/MdotMNativeAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    return-void
.end method

.method public onRewardedVideoComplete(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method public onUseCustomClose(Z)V
    .locals 0

    .prologue
    .line 520
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Window focused "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    if-eqz p1, :cond_1

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    .line 89
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/http/MdotMRequestQueueClient;

    move-result-object v0

    .line 90
    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    invoke-virtual {v0, v1}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->setApplicationHasFocus(Z)V

    .line 96
    :goto_0
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMView;->mDidApllicationLeave:Z

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Focus gained "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMView;->mDidApllicationLeave:Z

    .line 99
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMView;->onDismissScreen()V

    .line 101
    :cond_0
    return-void

    .line 92
    :cond_1
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    .line 93
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/http/MdotMRequestQueueClient;

    move-result-object v0

    .line 94
    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMView;->mAdViewHasFocus:Z

    invoke-virtual {v0, v1}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->setApplicationHasFocus(Z)V

    goto :goto_0
.end method

.method public willShowInterstitial()V
    .locals 0

    .prologue
    .line 460
    return-void
.end method
