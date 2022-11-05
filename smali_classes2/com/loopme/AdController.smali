.class public Lcom/loopme/AdController;
.super Ljava/lang/Object;
.source "AdController.java"


# static fields
.field private static final EXTRA_URL:Ljava/lang/String; = "url"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAd:Lcom/loopme/BaseAd;

.field private mAdView:Lcom/loopme/adview/AdView;

.field private volatile mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

.field private mDisplayMode:I

.field private mFileRest:Ljava/lang/String;

.field private mHorizontalScrollOrientation:Z

.field private mIsBackFromExpand:Z

.field private mIsFirstFullScreenCommand:Z

.field private mIsVideoPresented:Z

.field private mMinimizedMode:Lcom/loopme/common/MinimizedMode;

.field private mMinimizedView:Lcom/loopme/LoopMeBannerView;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPostponePlay:Z

.field private mPostponePlayPosition:I

.field private mPrevDisplayMode:I

.field private mVideoController:Lcom/loopme/VideoController;

.field private mVideoLoader:Lcom/loopme/common/VideoLoader;

.field private mViewController:Lcom/loopme/IViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/loopme/AdController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/AdController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/loopme/BaseAd;)V
    .locals 2

    .prologue
    const/16 v0, 0x64

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, Lcom/loopme/AdController;->mDisplayMode:I

    .line 51
    iput v0, p0, Lcom/loopme/AdController;->mPrevDisplayMode:I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopme/AdController;->mIsFirstFullScreenCommand:Z

    .line 76
    iput-object p1, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    .line 77
    new-instance v0, Lcom/loopme/adview/AdView;

    iget-object v1, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v1}, Lcom/loopme/BaseAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/loopme/adview/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    .line 79
    invoke-direct {p0}, Lcom/loopme/AdController;->initBridgeListener()Lcom/loopme/adview/Bridge$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/AdController;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    .line 80
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    iget-object v1, p0, Lcom/loopme/AdController;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-virtual {v0, v1}, Lcom/loopme/adview/AdView;->addBridgeListener(Lcom/loopme/adview/Bridge$Listener;)V

    .line 82
    invoke-direct {p0}, Lcom/loopme/AdController;->initOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/AdController;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 83
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    iget-object v1, p0, Lcom/loopme/AdController;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/loopme/adview/AdView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/loopme/AdController;)Lcom/loopme/IViewController;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/loopme/AdController;->mViewController:Lcom/loopme/IViewController;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/loopme/AdController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/loopme/AdController;Lcom/loopme/common/MinimizedMode;)Lcom/loopme/common/MinimizedMode;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/loopme/AdController;->mMinimizedMode:Lcom/loopme/common/MinimizedMode;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/loopme/AdController;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/loopme/AdController;->handleVideoPlay(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/loopme/AdController;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/loopme/AdController;->handleVideoPause(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/loopme/AdController;Z)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/loopme/AdController;->handleVideoMute(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/loopme/AdController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/loopme/AdController;->handleVideoLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/loopme/AdController;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/loopme/AdController;->handleLoadSuccess()V

    return-void
.end method

.method static synthetic access$1600(Lcom/loopme/AdController;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/loopme/AdController;->handleClose()V

    return-void
.end method

.method static synthetic access$1700(Lcom/loopme/AdController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/loopme/AdController;->handleLoadFail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/loopme/AdController;Z)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/loopme/AdController;->handleFullscreenMode(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/loopme/AdController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/loopme/AdController;->handleNonLoopMe(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/loopme/AdController;)Lcom/loopme/VideoController;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/loopme/AdController;->mVideoController:Lcom/loopme/VideoController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/loopme/AdController;Z)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/loopme/AdController;->handleVideoStretch(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/loopme/AdController;Lcom/loopme/common/LoopMeError;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/loopme/AdController;->sendLoadFail(Lcom/loopme/common/LoopMeError;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/loopme/AdController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/loopme/AdController;->mFileRest:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/loopme/AdController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/loopme/AdController;->mFileRest:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/loopme/AdController;)Lcom/loopme/adview/AdView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/loopme/AdController;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/loopme/AdController;->surfaceTextureAvailable(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic access$500(Lcom/loopme/AdController;)Z
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/loopme/AdController;->surfaceTextureDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/loopme/AdController;)Lcom/loopme/BaseAd;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    return-object v0
.end method

.method static synthetic access$702(Lcom/loopme/AdController;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/loopme/AdController;->mPostponePlay:Z

    return p1
.end method

.method static synthetic access$802(Lcom/loopme/AdController;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/loopme/AdController;->mPostponePlayPosition:I

    return p1
.end method

.method static synthetic access$900(Lcom/loopme/AdController;)Lcom/loopme/LoopMeBannerView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    return-object v0
.end method

.method private addBordersToView(Lcom/loopme/LoopMeBannerView;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 351
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 352
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 354
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 356
    invoke-virtual {p1, v3, v3, v3, v3}, Lcom/loopme/LoopMeBannerView;->setPadding(IIII)V

    .line 357
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 358
    invoke-virtual {p1, v0}, Lcom/loopme/LoopMeBannerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-virtual {p1, v0}, Lcom/loopme/LoopMeBannerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private broadcastAdClickedIntent()V
    .locals 2

    .prologue
    .line 628
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 629
    const-string v1, "com.loopme.CLICK_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    iget-object v1, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v1}, Lcom/loopme/BaseAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 631
    return-void
.end method

.method private broadcastDestroyIntent()V
    .locals 2

    .prologue
    .line 579
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 580
    const-string v1, "com.loopme.DESTROY_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    iget-object v1, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v1}, Lcom/loopme/BaseAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 582
    return-void
.end method

.method private configMinimizedViewLayoutParams(Lcom/loopme/LoopMeBannerView;)V
    .locals 2

    .prologue
    .line 341
    invoke-virtual {p1}, Lcom/loopme/LoopMeBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 342
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 343
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 344
    iget-object v1, p0, Lcom/loopme/AdController;->mMinimizedMode:Lcom/loopme/common/MinimizedMode;

    invoke-virtual {v1}, Lcom/loopme/common/MinimizedMode;->getMarginBottom()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 345
    iget-object v1, p0, Lcom/loopme/AdController;->mMinimizedMode:Lcom/loopme/common/MinimizedMode;

    invoke-virtual {v1}, Lcom/loopme/common/MinimizedMode;->getMarginRight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 346
    invoke-virtual {p1, v0}, Lcom/loopme/LoopMeBannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    return-void
.end method

.method private handleClose()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->dismiss()V

    .line 556
    return-void
.end method

.method private handleFullscreenMode(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 565
    iget-boolean v0, p0, Lcom/loopme/AdController;->mIsFirstFullScreenCommand:Z

    if-eqz v0, :cond_0

    .line 566
    iput-boolean v1, p0, Lcom/loopme/AdController;->mIsFirstFullScreenCommand:Z

    .line 567
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    invoke-virtual {v0, v1}, Lcom/loopme/adview/AdView;->setFullscreenMode(Z)V

    .line 576
    :goto_0
    return-void

    .line 570
    :cond_0
    if-eqz p1, :cond_1

    .line 571
    invoke-direct {p0}, Lcom/loopme/AdController;->switchToFullScreenMode()V

    .line 575
    :goto_1
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    invoke-virtual {v0, p1}, Lcom/loopme/adview/AdView;->setFullscreenMode(Z)V

    goto :goto_0

    .line 573
    :cond_1
    invoke-direct {p0}, Lcom/loopme/AdController;->broadcastDestroyIntent()V

    goto :goto_1
.end method

.method private handleLoadFail(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    new-instance v1, Lcom/loopme/common/LoopMeError;

    const-string v2, "Failed to process ad"

    invoke-direct {v1, v2}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/loopme/BaseAd;->onAdLoadFail(Lcom/loopme/common/LoopMeError;)V

    .line 482
    :cond_0
    return-void
.end method

.method private handleLoadSuccess()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->startExpirationTimer()V

    .line 475
    iget-object v0, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->onAdLoadSuccess()V

    .line 476
    return-void
.end method

.method private handleNonLoopMe(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 608
    sget-object v0, Lcom/loopme/AdController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Non Js command"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 610
    invoke-static {v0}, Lcom/loopme/common/Utils;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/loopme/AdBrowserActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 612
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const-string v2, "appkey"

    iget-object v3, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v3}, Lcom/loopme/BaseAd;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    const-string v2, "format"

    iget-object v3, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v3}, Lcom/loopme/BaseAd;->getAdFormat()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 615
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 617
    iget-object v2, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v2}, Lcom/loopme/BaseAd;->onAdClicked()V

    .line 618
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/loopme/AdController;->setWebViewState(I)V

    .line 619
    invoke-direct {p0}, Lcom/loopme/AdController;->broadcastAdClickedIntent()V

    .line 621
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 625
    :goto_0
    return-void

    .line 623
    :cond_0
    sget-object v0, Lcom/loopme/AdController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "No internet connection"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleVideoLoad(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 485
    sget-object v0, Lcom/loopme/AdController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JS command: load video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopme/AdController;->mIsVideoPresented:Z

    .line 487
    iget-object v0, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->getAdParams()Lcom/loopme/common/AdParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/common/AdParams;->getPartPreload()Z

    move-result v0

    .line 488
    iget-object v1, p0, Lcom/loopme/AdController;->mVideoController:Lcom/loopme/VideoController;

    iget-object v2, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v2}, Lcom/loopme/BaseAd;->getAdParams()Lcom/loopme/common/AdParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loopme/common/AdParams;->isVideo360()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/loopme/VideoController;->contain360(Z)V

    .line 489
    iget-object v1, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v1}, Lcom/loopme/BaseAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/loopme/AdController;->loadVideoFile(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 490
    return-void
.end method

.method private handleVideoMute(Z)V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    invoke-virtual {v0, p1}, Lcom/loopme/adview/AdView;->setVideoMute(Z)V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/loopme/AdController;->mVideoController:Lcom/loopme/VideoController;

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/loopme/AdController;->mVideoController:Lcom/loopme/VideoController;

    invoke-virtual {v0, p1}, Lcom/loopme/VideoController;->muteVideo(Z)V

    .line 540
    :cond_1
    return-void
.end method

.method private handleVideoPause(I)V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/loopme/AdController;->mVideoController:Lcom/loopme/VideoController;

    invoke-virtual {v0}, Lcom/loopme/VideoController;->pauseVideo()V

    .line 552
    return-void
.end method

.method private handleVideoPlay(I)V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/loopme/AdController;->mVideoController:Lcom/loopme/VideoController;

    iget-object v1, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v1}, Lcom/loopme/BaseAd;->getAdParams()Lcom/loopme/common/AdParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loopme/common/AdParams;->isVideo360()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/loopme/VideoController;->playVideo(IZ)V

    .line 545
    iget v0, p0, Lcom/loopme/AdController;->mDisplayMode:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 546
    iget-object v0, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    invoke-static {v0}, Lcom/loopme/common/Utils;->animateAppear(Landroid/view/View;)V

    .line 548
    :cond_0
    return-void
.end method

.method private handleVideoStretch(Z)V
    .locals 2

    .prologue
    .line 559
    sget-object v0, Lcom/loopme/AdController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JS command: stretch video "

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    if-eqz p1, :cond_0

    sget-object v0, Lcom/loopme/constants/StretchOption;->STRECH:Lcom/loopme/constants/StretchOption;

    .line 561
    :goto_0
    iget-object v1, p0, Lcom/loopme/AdController;->mViewController:Lcom/loopme/IViewController;

    invoke-interface {v1, v0}, Lcom/loopme/IViewController;->setStretchParam(Lcom/loopme/constants/StretchOption;)V

    .line 562
    return-void

    .line 560
    :cond_0
    sget-object v0, Lcom/loopme/constants/StretchOption;->NO_STRETCH:Lcom/loopme/constants/StretchOption;

    goto :goto_0
.end method

.method private initBridgeListener()Lcom/loopme/adview/Bridge$Listener;
    .locals 1

    .prologue
    .line 419
    new-instance v0, Lcom/loopme/AdController$6;

    invoke-direct {v0, p0}, Lcom/loopme/AdController$6;-><init>(Lcom/loopme/AdController;)V

    return-object v0
.end method

.method private initOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/loopme/AdController$1;

    invoke-direct {v0, p0}, Lcom/loopme/AdController$1;-><init>(Lcom/loopme/AdController;)V

    return-object v0
.end method

.method private initVideoControllerCallback()Lcom/loopme/VideoController$Callback;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/loopme/AdController$4;

    invoke-direct {v0, p0}, Lcom/loopme/AdController$4;-><init>(Lcom/loopme/AdController;)V

    return-object v0
.end method

.method private initView360ControllerCallback()Lcom/loopme/View360Controller$Callback;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/loopme/AdController$2;

    invoke-direct {v0, p0}, Lcom/loopme/AdController$2;-><init>(Lcom/loopme/AdController;)V

    return-object v0
.end method

.method private initViewControllerCallback()Lcom/loopme/ViewController$Callback;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/loopme/AdController$3;

    invoke-direct {v0, p0}, Lcom/loopme/AdController$3;-><init>(Lcom/loopme/AdController;)V

    return-object v0
.end method

.method private loadVideoFile(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 494
    new-instance v0, Lcom/loopme/common/VideoLoader;

    new-instance v1, Lcom/loopme/AdController$7;

    invoke-direct {v1, p0, p3}, Lcom/loopme/AdController$7;-><init>(Lcom/loopme/AdController;Z)V

    invoke-direct {v0, p1, p3, p2, v1}, Lcom/loopme/common/VideoLoader;-><init>(Ljava/lang/String;ZLandroid/content/Context;Lcom/loopme/common/VideoLoader$Callback;)V

    iput-object v0, p0, Lcom/loopme/AdController;->mVideoLoader:Lcom/loopme/common/VideoLoader;

    .line 524
    iget-object v0, p0, Lcom/loopme/AdController;->mVideoLoader:Lcom/loopme/common/VideoLoader;

    invoke-virtual {v0}, Lcom/loopme/common/VideoLoader;->start()V

    .line 525
    return-void
.end method

.method private sendLoadFail(Lcom/loopme/common/LoopMeError;)V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v0, p1}, Lcom/loopme/BaseAd;->onAdLoadFail(Lcom/loopme/common/LoopMeError;)V

    .line 531
    :cond_0
    return-void
.end method

.method private storePreviousMode(I)V
    .locals 2

    .prologue
    const/16 v1, 0x66

    const/16 v0, 0x65

    .line 280
    if-ne p1, v1, :cond_0

    .line 281
    iput v1, p0, Lcom/loopme/AdController;->mPrevDisplayMode:I

    .line 289
    :goto_0
    return-void

    .line 283
    :cond_0
    if-ne p1, v0, :cond_1

    .line 284
    iput v0, p0, Lcom/loopme/AdController;->mPrevDisplayMode:I

    goto :goto_0

    .line 287
    :cond_1
    const/16 v0, 0x64

    iput v0, p0, Lcom/loopme/AdController;->mPrevDisplayMode:I

    goto :goto_0
.end method

.method private surfaceTextureAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 634
    sget-object v1, Lcom/loopme/AdController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onSurfaceTextureAvailable"

    invoke-static {v1, v2}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v1, p0, Lcom/loopme/AdController;->mVideoController:Lcom/loopme/VideoController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/loopme/VideoController;->setSurfaceTextureAvailable(Z)V

    .line 637
    iget-boolean v1, p0, Lcom/loopme/AdController;->mPostponePlay:Z

    if-eqz v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/loopme/AdController;->mVideoController:Lcom/loopme/VideoController;

    iget v2, p0, Lcom/loopme/AdController;->mPostponePlayPosition:I

    iget-object v3, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v3}, Lcom/loopme/BaseAd;->getAdParams()Lcom/loopme/common/AdParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/loopme/common/AdParams;->isVideo360()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/loopme/VideoController;->playVideo(IZ)V

    .line 639
    iput-boolean v0, p0, Lcom/loopme/AdController;->mPostponePlay:Z

    .line 645
    :cond_0
    iget v1, p0, Lcom/loopme/AdController;->mDisplayMode:I

    packed-switch v1, :pswitch_data_0

    .line 666
    sget-object v1, Lcom/loopme/AdController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unknown display mode"

    invoke-static {v1, v2}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 670
    :goto_0
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 671
    iget-object v3, p0, Lcom/loopme/AdController;->mVideoController:Lcom/loopme/VideoController;

    invoke-virtual {v3, v2}, Lcom/loopme/VideoController;->setSurface(Landroid/view/Surface;)V

    .line 673
    iget-object v2, p0, Lcom/loopme/AdController;->mViewController:Lcom/loopme/IViewController;

    invoke-interface {v2, v1, v0}, Lcom/loopme/IViewController;->setViewSize(II)V

    .line 674
    return-void

    .line 647
    :pswitch_0
    iget-object v1, p0, Lcom/loopme/AdController;->mMinimizedMode:Lcom/loopme/common/MinimizedMode;

    if-eqz v1, :cond_1

    .line 648
    iget-object v0, p0, Lcom/loopme/AdController;->mMinimizedMode:Lcom/loopme/common/MinimizedMode;

    invoke-virtual {v0}, Lcom/loopme/common/MinimizedMode;->getWidth()I

    move-result v1

    .line 649
    iget-object v0, p0, Lcom/loopme/AdController;->mMinimizedMode:Lcom/loopme/common/MinimizedMode;

    invoke-virtual {v0}, Lcom/loopme/common/MinimizedMode;->getHeight()I

    move-result v0

    goto :goto_0

    .line 651
    :cond_1
    sget-object v1, Lcom/loopme/AdController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "WARNING: MinimizedMode is null"

    invoke-static {v1, v2}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 653
    goto :goto_0

    .line 656
    :pswitch_1
    iget-object v0, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->detectWidth()I

    move-result v1

    .line 657
    iget-object v0, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->detectHeight()I

    move-result v0

    goto :goto_0

    .line 661
    :pswitch_2
    invoke-static {}, Lcom/loopme/common/Utils;->getScreenWidth()I

    move-result v1

    .line 662
    invoke-static {}, Lcom/loopme/common/Utils;->getScreenHeight()I

    move-result v0

    goto :goto_0

    .line 645
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private surfaceTextureDestroyed()Z
    .locals 2

    .prologue
    .line 677
    sget-object v0, Lcom/loopme/AdController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/loopme/AdController;->mVideoController:Lcom/loopme/VideoController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loopme/VideoController;->setSurfaceTextureAvailable(Z)V

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/loopme/AdController;->mVideoController:Lcom/loopme/VideoController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loopme/VideoController;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 681
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private switchToFullScreenMode()V
    .locals 3

    .prologue
    const/16 v2, 0x66

    .line 585
    iget v0, p0, Lcom/loopme/AdController;->mDisplayMode:I

    if-eq v0, v2, :cond_1

    .line 586
    sget-object v0, Lcom/loopme/AdController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "switch to fullscreen mode"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget v0, p0, Lcom/loopme/AdController;->mDisplayMode:I

    invoke-direct {p0, v0}, Lcom/loopme/AdController;->storePreviousMode(I)V

    .line 588
    iput v2, p0, Lcom/loopme/AdController;->mDisplayMode:I

    .line 590
    iget v0, p0, Lcom/loopme/AdController;->mPrevDisplayMode:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 591
    iget-object v0, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0}, Lcom/loopme/LoopMeBannerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0}, Lcom/loopme/LoopMeBannerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-static {v0}, Lcom/loopme/AdUtils;->startAdActivity(Lcom/loopme/BaseAd;)V

    .line 597
    :cond_1
    return-void
.end method


# virtual methods
.method buildStaticAdView(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 235
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    if-nez v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/loopme/adview/AdView;->setBackgroundColor(I)V

    .line 239
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method buildVideoAdView(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/loopme/AdController;->mViewController:Lcom/loopme/IViewController;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/loopme/AdController;->mViewController:Lcom/loopme/IViewController;

    iget-object v1, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v1}, Lcom/loopme/BaseAd;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    invoke-interface {v0, v1, p1, v2}, Lcom/loopme/IViewController;->buildVideoAdView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/loopme/adview/AdView;)V

    .line 271
    :cond_0
    return-void
.end method

.method destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 195
    iput-object v2, p0, Lcom/loopme/AdController;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    .line 196
    iget-object v0, p0, Lcom/loopme/AdController;->mVideoController:Lcom/loopme/VideoController;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/loopme/AdController;->mVideoController:Lcom/loopme/VideoController;

    invoke-virtual {v0}, Lcom/loopme/VideoController;->destroy()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/loopme/AdController;->mVideoLoader:Lcom/loopme/common/VideoLoader;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/loopme/AdController;->mVideoLoader:Lcom/loopme/common/VideoLoader;

    invoke-virtual {v0}, Lcom/loopme/common/VideoLoader;->stop()V

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    invoke-virtual {v0}, Lcom/loopme/adview/AdView;->stopLoading()V

    .line 205
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/loopme/adview/AdView;->clearCache(Z)V

    .line 206
    iput-object v2, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    .line 208
    :cond_2
    iput-object v2, p0, Lcom/loopme/AdController;->mMinimizedMode:Lcom/loopme/common/MinimizedMode;

    .line 209
    return-void
.end method

.method destroyMinimizedView()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0}, Lcom/loopme/LoopMeBannerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0}, Lcom/loopme/LoopMeBannerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0}, Lcom/loopme/LoopMeBannerView;->removeAllViews()V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    .line 403
    :cond_1
    return-void
.end method

.method ensureAdIsVisible(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 243
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 248
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    .line 250
    iget-boolean v0, p0, Lcom/loopme/AdController;->mHorizontalScrollOrientation:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 251
    :goto_1
    iget-boolean v3, p0, Lcom/loopme/AdController;->mHorizontalScrollOrientation:Z

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 253
    :goto_2
    if-eqz v2, :cond_5

    .line 254
    if-ge v1, v0, :cond_4

    .line 255
    invoke-virtual {p0, v4}, Lcom/loopme/AdController;->setWebViewState(I)V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopme/AdController;->mIsBackFromExpand:Z

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 251
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_2

    .line 258
    :cond_4
    if-lt v1, v0, :cond_0

    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/loopme/AdController;->setWebViewState(I)V

    goto :goto_0

    .line 263
    :cond_5
    invoke-virtual {p0, v4}, Lcom/loopme/AdController;->setWebViewState(I)V

    goto :goto_0
.end method

.method public getCurrentDisplayMode()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/loopme/AdController;->mDisplayMode:I

    return v0
.end method

.method getCurrentVideoState()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    invoke-virtual {v0}, Lcom/loopme/adview/AdView;->getCurrentVideoState()I

    move-result v0

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getViewController()Lcom/loopme/IViewController;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/loopme/AdController;->mViewController:Lcom/loopme/IViewController;

    return-object v0
.end method

.method public initControllers()V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/loopme/AdController;->initVideoController()V

    .line 124
    invoke-virtual {p0}, Lcom/loopme/AdController;->initViewController()V

    .line 125
    return-void
.end method

.method public initVideoController()V
    .locals 5

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/loopme/AdController;->initVideoControllerCallback()Lcom/loopme/VideoController$Callback;

    move-result-object v0

    .line 99
    new-instance v1, Lcom/loopme/VideoController;

    iget-object v2, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    iget-object v3, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v3}, Lcom/loopme/BaseAd;->getAppKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v4}, Lcom/loopme/BaseAd;->getAdFormat()I

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/loopme/VideoController;-><init>(Lcom/loopme/adview/AdView;Lcom/loopme/VideoController$Callback;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/loopme/AdController;->mVideoController:Lcom/loopme/VideoController;

    .line 100
    return-void
.end method

.method public initViewController()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->getAdParams()Lcom/loopme/common/AdParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/common/AdParams;->isVideo360()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/loopme/AdController;->initViewControllerCallback()Lcom/loopme/ViewController$Callback;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/loopme/ViewController;

    invoke-direct {v1, v0}, Lcom/loopme/ViewController;-><init>(Lcom/loopme/ViewController$Callback;)V

    iput-object v1, p0, Lcom/loopme/AdController;->mViewController:Lcom/loopme/IViewController;

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/loopme/AdController;->initView360ControllerCallback()Lcom/loopme/View360Controller$Callback;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/loopme/View360Controller;

    invoke-direct {v1, v0}, Lcom/loopme/View360Controller;-><init>(Lcom/loopme/View360Controller$Callback;)V

    iput-object v1, p0, Lcom/loopme/AdController;->mViewController:Lcom/loopme/IViewController;

    goto :goto_0
.end method

.method isBackFromExpand()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/loopme/AdController;->mIsBackFromExpand:Z

    return v0
.end method

.method isMinimizedModeEnable()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/loopme/AdController;->mMinimizedMode:Lcom/loopme/common/MinimizedMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loopme/AdController;->mMinimizedMode:Lcom/loopme/common/MinimizedMode;

    invoke-virtual {v0}, Lcom/loopme/common/MinimizedMode;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoPresented()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/loopme/AdController;->mIsVideoPresented:Z

    return v0
.end method

.method onAdShake()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    invoke-virtual {v0}, Lcom/loopme/adview/AdView;->shake()V

    .line 221
    :cond_0
    return-void
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/loopme/AdController;->mVideoController:Lcom/loopme/VideoController;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/loopme/AdController;->mVideoController:Lcom/loopme/VideoController;

    invoke-virtual {v0}, Lcom/loopme/VideoController;->pauseVideo()V

    .line 106
    :cond_0
    return-void
.end method

.method preloadHtml(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 406
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    if-eqz v0, :cond_0

    .line 407
    sget-object v0, Lcom/loopme/AdController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "loadDataWithBaseURL"

    invoke-static {v0, v2}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/loopme/adview/AdView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    new-instance v1, Lcom/loopme/common/LoopMeError;

    const-string v2, "Html loading error"

    invoke-direct {v1, v2}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/loopme/BaseAd;->onAdLoadFail(Lcom/loopme/common/LoopMeError;)V

    goto :goto_0
.end method

.method rebuildView(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/loopme/AdController;->mViewController:Lcom/loopme/IViewController;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/loopme/AdController;->mViewController:Lcom/loopme/IViewController;

    iget-object v1, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    invoke-interface {v0, p1, v1}, Lcom/loopme/IViewController;->rebuildView(Landroid/view/ViewGroup;Lcom/loopme/adview/AdView;)V

    .line 277
    :cond_0
    return-void
.end method

.method resetFullScreenCommandCounter()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopme/AdController;->mIsFirstFullScreenCommand:Z

    .line 192
    return-void
.end method

.method public setMinimizedMode(Lcom/loopme/common/MinimizedMode;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/loopme/AdController;->mMinimizedMode:Lcom/loopme/common/MinimizedMode;

    .line 389
    return-void
.end method

.method public setWebViewState(I)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    invoke-virtual {v0, p1}, Lcom/loopme/adview/AdView;->setWebViewState(I)V

    .line 215
    :cond_0
    return-void
.end method

.method switchToMinimizedMode()V
    .locals 5

    .prologue
    const/16 v2, 0x65

    const/4 v4, 0x1

    .line 296
    iget v0, p0, Lcom/loopme/AdController;->mDisplayMode:I

    if-ne v0, v2, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/loopme/AdController;->getCurrentVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 298
    invoke-virtual {p0, v4}, Lcom/loopme/AdController;->setWebViewState(I)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    sget-object v0, Lcom/loopme/AdController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "switch to minimized mode"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget v0, p0, Lcom/loopme/AdController;->mDisplayMode:I

    invoke-direct {p0, v0}, Lcom/loopme/AdController;->storePreviousMode(I)V

    .line 304
    iput v2, p0, Lcom/loopme/AdController;->mDisplayMode:I

    .line 306
    iget-object v0, p0, Lcom/loopme/AdController;->mMinimizedMode:Lcom/loopme/common/MinimizedMode;

    invoke-virtual {v0}, Lcom/loopme/common/MinimizedMode;->getWidth()I

    move-result v0

    .line 307
    iget-object v1, p0, Lcom/loopme/AdController;->mMinimizedMode:Lcom/loopme/common/MinimizedMode;

    invoke-virtual {v1}, Lcom/loopme/common/MinimizedMode;->getHeight()I

    move-result v1

    .line 308
    new-instance v2, Lcom/loopme/LoopMeBannerView;

    iget-object v3, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    invoke-virtual {v3}, Lcom/loopme/adview/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/loopme/LoopMeBannerView;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    .line 310
    iget-object v1, p0, Lcom/loopme/AdController;->mViewController:Lcom/loopme/IViewController;

    iget-object v2, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    iget-object v3, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    invoke-interface {v1, v2, v3}, Lcom/loopme/IViewController;->rebuildView(Landroid/view/ViewGroup;Lcom/loopme/adview/AdView;)V

    .line 311
    iget-object v1, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    invoke-direct {p0, v1}, Lcom/loopme/AdController;->addBordersToView(Lcom/loopme/LoopMeBannerView;)V

    .line 312
    iget-object v1, p0, Lcom/loopme/AdController;->mViewController:Lcom/loopme/IViewController;

    invoke-interface {v1}, Lcom/loopme/IViewController;->onResume()V

    .line 314
    iget-object v1, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    invoke-virtual {v1}, Lcom/loopme/adview/AdView;->getCurrentWebViewState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 315
    iget-object v1, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/loopme/LoopMeBannerView;->setAlpha(F)V

    .line 318
    :cond_2
    iget-object v1, p0, Lcom/loopme/AdController;->mMinimizedMode:Lcom/loopme/common/MinimizedMode;

    invoke-virtual {v1}, Lcom/loopme/common/MinimizedMode;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 319
    iget-object v1, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    invoke-direct {p0, v1}, Lcom/loopme/AdController;->configMinimizedViewLayoutParams(Lcom/loopme/LoopMeBannerView;)V

    .line 321
    invoke-virtual {p0, v4}, Lcom/loopme/AdController;->setWebViewState(I)V

    .line 323
    iget-object v1, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    new-instance v2, Lcom/loopme/common/SwipeListener;

    new-instance v3, Lcom/loopme/AdController$5;

    invoke-direct {v3, p0}, Lcom/loopme/AdController$5;-><init>(Lcom/loopme/AdController;)V

    invoke-direct {v2, v0, v3}, Lcom/loopme/common/SwipeListener;-><init>(ILcom/loopme/common/SwipeListener$Listener;)V

    invoke-virtual {v1, v2}, Lcom/loopme/adview/AdView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method switchToNormalMode()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 365
    iget v0, p0, Lcom/loopme/AdController;->mDisplayMode:I

    if-ne v0, v2, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    sget-object v0, Lcom/loopme/AdController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "switch to normal mode"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget v0, p0, Lcom/loopme/AdController;->mDisplayMode:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopme/AdController;->mIsBackFromExpand:Z

    .line 373
    :cond_2
    iget v0, p0, Lcom/loopme/AdController;->mDisplayMode:I

    invoke-direct {p0, v0}, Lcom/loopme/AdController;->storePreviousMode(I)V

    .line 374
    iput v2, p0, Lcom/loopme/AdController;->mDisplayMode:I

    .line 376
    iget-object v0, p0, Lcom/loopme/AdController;->mAd:Lcom/loopme/BaseAd;

    check-cast v0, Lcom/loopme/LoopMeBanner;

    invoke-virtual {v0}, Lcom/loopme/LoopMeBanner;->getBannerView()Lcom/loopme/LoopMeBannerView;

    move-result-object v0

    .line 377
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loopme/LoopMeBannerView;->setVisibility(I)V

    .line 379
    iget-object v1, p0, Lcom/loopme/AdController;->mViewController:Lcom/loopme/IViewController;

    iget-object v2, p0, Lcom/loopme/AdController;->mAdView:Lcom/loopme/adview/AdView;

    invoke-interface {v1, v0, v2}, Lcom/loopme/IViewController;->rebuildView(Landroid/view/ViewGroup;Lcom/loopme/adview/AdView;)V

    .line 381
    iget-object v0, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0}, Lcom/loopme/LoopMeBannerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0}, Lcom/loopme/LoopMeBannerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 383
    iget-object v0, p0, Lcom/loopme/AdController;->mMinimizedView:Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0}, Lcom/loopme/LoopMeBannerView;->removeAllViews()V

    goto :goto_0
.end method

.method switchToPreviousMode()V
    .locals 2

    .prologue
    .line 600
    iget v0, p0, Lcom/loopme/AdController;->mPrevDisplayMode:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 601
    invoke-virtual {p0}, Lcom/loopme/AdController;->switchToMinimizedMode()V

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget v0, p0, Lcom/loopme/AdController;->mPrevDisplayMode:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/loopme/AdController;->switchToNormalMode()V

    goto :goto_0
.end method
