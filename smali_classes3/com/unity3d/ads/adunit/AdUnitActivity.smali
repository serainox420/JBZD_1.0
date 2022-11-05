.class public Lcom/unity3d/ads/adunit/AdUnitActivity;
.super Landroid/app/Activity;
.source "AdUnitActivity.java"


# static fields
.field public static final EXTRA_ACTIVITY_ID:Ljava/lang/String; = "activityId"

.field public static final EXTRA_KEEP_SCREEN_ON:Ljava/lang/String; = "keepScreenOn"

.field public static final EXTRA_KEY_EVENT_LIST:Ljava/lang/String; = "keyEvents"

.field public static final EXTRA_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final EXTRA_SYSTEM_UI_VISIBILITY:Ljava/lang/String; = "systemUiVisibility"

.field public static final EXTRA_VIEWS:Ljava/lang/String; = "views"


# instance fields
.field private _activityId:I

.field _keepScreenOn:Z

.field private _keyEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _layout:Landroid/widget/RelativeLayout;

.field private _orientation:I

.field private _systemUiVisibility:I

.field private _videoContainer:Landroid/widget/RelativeLayout;

.field private _views:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_orientation:I

    return-void
.end method

.method private createLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 390
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 394
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    .line 395
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0, v1}, Lcom/unity3d/ads/misc/ViewUtilities;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private createVideoPlayer()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 403
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    .line 407
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 408
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerView;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/video/VideoPlayerView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/unity3d/ads/api/VideoPlayer;->setVideoPlayerView(Lcom/unity3d/ads/video/VideoPlayerView;)V

    .line 409
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 410
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 411
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/unity3d/ads/video/VideoPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 414
    :cond_1
    return-void
.end method

.method private destroyVideoPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 417
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/video/VideoPlayerView;->stopVideoProgressTimer()V

    .line 419
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/video/VideoPlayerView;->stopPlayback()V

    .line 420
    invoke-static {}, Lcom/unity3d/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/ads/video/VideoPlayerView;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    .line 423
    :cond_0
    invoke-static {v1}, Lcom/unity3d/ads/api/VideoPlayer;->setVideoPlayerView(Lcom/unity3d/ads/video/VideoPlayerView;)V

    .line 425
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/unity3d/ads/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    .line 427
    iput-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    .line 429
    :cond_1
    return-void
.end method

.method private handleViewPlacement(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 338
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-static {p1}, Lcom/unity3d/ads/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    .line 332
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 333
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 334
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 335
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 336
    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public getViewFrame(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 242
    .line 244
    const-string v1, "adunit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 246
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 247
    const-string v2, "x"

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v2, "y"

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v0, "width"

    iget-object v2, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v0, "height"

    iget-object v2, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 270
    :cond_0
    :goto_0
    return-object v0

    .line 253
    :cond_1
    const-string v1, "videoplayer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    move-object v2, v1

    .line 260
    :goto_1
    if-eqz v2, :cond_0

    .line 261
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 262
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 263
    const-string v3, "x"

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v3, "y"

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v0, "width"

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v0, "height"

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 267
    goto :goto_0

    .line 256
    :cond_2
    const-string v1, "webview"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 257
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method public getViews()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onCreate"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    .line 105
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/unity3d/ads/api/AdUnit;->setAdUnitActivity(Lcom/unity3d/ads/adunit/AdUnitActivity;)V

    .line 65
    invoke-direct {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->createLayout()V

    .line 67
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/unity3d/ads/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    if-nez p1, :cond_5

    .line 73
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "views"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "keyEvents"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orientation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_orientation:I

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "systemUiVisibility"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "systemUiVisibility"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activityId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activityId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    .line 85
    :cond_3
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_CREATE:Lcom/unity3d/ads/adunit/AdUnitEvent;

    .line 97
    :goto_1
    iget v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_orientation:I

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setOrientation(I)V

    .line 98
    iget v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setSystemUiVisibility(I)Z

    .line 100
    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "videoplayer"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 101
    invoke-direct {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->createVideoPlayer()V

    .line 104
    :cond_4
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v0, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 87
    :cond_5
    const-string v0, "views"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    .line 88
    const-string v0, "orientation"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_orientation:I

    .line 89
    const-string v0, "systemUiVisibility"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    .line 90
    const-string v0, "keyEvents"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    .line 91
    const-string v0, "keepScreenOn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    .line 92
    const-string v0, "activityId"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    .line 93
    iget-boolean v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setKeepScreenOn(Z)Z

    .line 94
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_RESTORE:Lcom/unity3d/ads/adunit/AdUnitEvent;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 190
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onDestroy"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_DESTROY:Lcom/unity3d/ads/adunit/AdUnitEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 200
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getCurrentAdUnitActivityId()I

    move-result v0

    iget v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    if-ne v0, v1, :cond_0

    .line 201
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unity3d/ads/api/AdUnit;->setAdUnitActivity(Lcom/unity3d/ads/adunit/AdUnitActivity;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 207
    iget-object v2, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/ads/adunit/AdUnitEvent;->KEY_DOWN:Lcom/unity3d/ads/adunit/AdUnitEvent;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x4

    iget v6, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 214
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 6

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 158
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onPause"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    .line 170
    :cond_2
    invoke-direct {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->destroyVideoPlayer()V

    .line 171
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_PAUSE:Lcom/unity3d/ads/adunit/AdUnitEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 141
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onResume"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setViews([Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_RESUME:Lcom/unity3d/ads/adunit/AdUnitEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 178
    const-string v0, "orientation"

    iget v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_orientation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    const-string v0, "systemUiVisibility"

    iget v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    const-string v0, "keyEvents"

    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 181
    const-string v0, "keepScreenOn"

    iget-boolean v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    const-string v0, "views"

    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 183
    const-string v0, "activityId"

    iget v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 111
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onStart"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_START:Lcom/unity3d/ads/adunit/AdUnitEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 6

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 126
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const-string v0, "Unity Ads web app is null, closing Unity Ads activity from onStop"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_STOP:Lcom/unity3d/ads/adunit/AdUnitEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setKeepScreenOn(Z)Z
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 351
    iput-boolean p1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    .line 354
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0

    .line 357
    :cond_0
    if-eqz p1, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 363
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1
.end method

.method public setKeyEventList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    iput-object p1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    .line 385
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .prologue
    .line 345
    iput p1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_orientation:I

    .line 346
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setRequestedOrientation(I)V

    .line 347
    return-void
.end method

.method public setSystemUiVisibility(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 367
    iput p1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    .line 369
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 371
    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    const/4 v0, 0x1

    .line 380
    :cond_0
    :goto_0
    return v0

    .line 374
    :catch_0
    move-exception v1

    .line 375
    const-string v2, "Error while setting SystemUIVisibility"

    invoke-static {v2, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setViewFrame(Ljava/lang/String;IIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 220
    const/4 v0, 0x0

    .line 222
    const-string v1, "adunit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 224
    invoke-virtual {v1, p2, p3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 225
    iget-object v2, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 235
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 236
    invoke-virtual {v1, p2, p3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 237
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    :cond_1
    return-void

    .line 227
    :cond_2
    const-string v1, "videoplayer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 230
    :cond_3
    const-string v1, "webview"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v0

    goto :goto_0
.end method

.method public setViews([Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 276
    if-nez p1, :cond_0

    .line 277
    new-array p1, v1, [Ljava/lang/String;

    .line 281
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 283
    iget-object v2, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 284
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    .line 287
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 288
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 290
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 291
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 293
    :pswitch_0
    invoke-direct {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->destroyVideoPlayer()V

    goto :goto_0

    .line 291
    :sswitch_0
    const-string v4, "videoplayer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "webview"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 296
    :pswitch_1
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    goto :goto_0

    .line 303
    :cond_3
    iput-object p1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    .line 305
    array-length v2, p1

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_8

    aget-object v1, p1, v0

    .line 306
    if-nez v1, :cond_5

    .line 305
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 309
    :cond_5
    const-string v3, "videoplayer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 310
    invoke-direct {p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->createVideoPlayer()V

    .line 311
    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitActivity;->_videoContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->handleViewPlacement(Landroid/view/View;)V

    goto :goto_3

    .line 313
    :cond_6
    const-string v3, "webview"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 314
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 315
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->handleViewPlacement(Landroid/view/View;)V

    goto :goto_3

    .line 319
    :cond_7
    const-string v0, "WebApp IS NULL!"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 324
    :cond_8
    return-void

    .line 291
    nop

    :sswitch_data_0
    .sparse-switch
        0x48fb3bf9 -> :sswitch_1
        0x6f2e271c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
