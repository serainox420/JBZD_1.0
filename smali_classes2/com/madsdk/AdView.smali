.class public Lcom/madsdk/AdView;
.super Landroid/widget/FrameLayout;
.source "AdView.java"


# static fields
.field public static final DEFAULT_IMAGE_NAME:Ljava/lang/String; = "image"

.field public static final INLINE:Ljava/lang/String; = "inline"

.field public static final INTERSTITIAL:Ljava/lang/String; = "interstitial"

.field public static final MIN_AD_SIZE:I = 0x32

.field private static final STATE_DEFAULT:Ljava/lang/String; = "default"

.field private static final STATE_EXPANDED:Ljava/lang/String; = "expanded"

.field private static final STATE_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final STATE_LOADING:Ljava/lang/String; = "loading"

.field private static final STATE_RESIZED:Ljava/lang/String; = "resized"


# instance fields
.field private defaultHeight:I

.field private defaultWidth:I

.field private defaultX:F

.field private defaultY:F

.field private expandProperties:Lcom/madsdk/javascript/ExpandProperties;

.field private isInterstitial:Z

.field private isNativeBrowser:Z

.field private isViewable:Z

.field private listener:Lcom/madsdk/AdListener;

.field private mFullScreenDialog:Lcom/madsdk/FullscreenAd;

.field private mWebView:Lcom/madsdk/AdWebView;

.field public mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field public orientationProperties:Lcom/madsdk/javascript/OrientationProperties;

.field private p:Ljava/lang/String;

.field private publication:Ljava/lang/String;

.field private requestedOrientation:I

.field private resizeProperties:Lcom/madsdk/javascript/ResizeProperties;

.field private srh:Ljava/lang/String;

.field private srw:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 412
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    const-string v0, "loading"

    iput-object v0, p0, Lcom/madsdk/AdView;->state:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lcom/madsdk/AdView;->isViewable:Z

    .line 74
    new-instance v0, Lcom/madsdk/AdView$1;

    invoke-direct {v0, p0}, Lcom/madsdk/AdView$1;-><init>(Lcom/madsdk/AdView;)V

    iput-object v0, p0, Lcom/madsdk/AdView;->webViewClient:Landroid/webkit/WebViewClient;

    .line 83
    iput-boolean v1, p0, Lcom/madsdk/AdView;->isInterstitial:Z

    .line 90
    new-instance v0, Lcom/madsdk/AdView$2;

    invoke-direct {v0, p0}, Lcom/madsdk/AdView$2;-><init>(Lcom/madsdk/AdView;)V

    iput-object v0, p0, Lcom/madsdk/AdView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 108
    new-instance v0, Lcom/madsdk/javascript/ExpandProperties;

    invoke-direct {v0}, Lcom/madsdk/javascript/ExpandProperties;-><init>()V

    iput-object v0, p0, Lcom/madsdk/AdView;->expandProperties:Lcom/madsdk/javascript/ExpandProperties;

    .line 109
    new-instance v0, Lcom/madsdk/javascript/ResizeProperties;

    invoke-direct {v0}, Lcom/madsdk/javascript/ResizeProperties;-><init>()V

    iput-object v0, p0, Lcom/madsdk/AdView;->resizeProperties:Lcom/madsdk/javascript/ResizeProperties;

    .line 110
    new-instance v0, Lcom/madsdk/javascript/OrientationProperties;

    invoke-direct {v0}, Lcom/madsdk/javascript/OrientationProperties;-><init>()V

    iput-object v0, p0, Lcom/madsdk/AdView;->orientationProperties:Lcom/madsdk/javascript/OrientationProperties;

    .line 112
    new-instance v0, Lcom/madsdk/AdView$3;

    invoke-direct {v0, p0}, Lcom/madsdk/AdView$3;-><init>(Lcom/madsdk/AdView;)V

    iput-object v0, p0, Lcom/madsdk/AdView;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    .line 413
    invoke-direct {p0}, Lcom/madsdk/AdView;->init()V

    .line 415
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 475
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const-string v0, "loading"

    iput-object v0, p0, Lcom/madsdk/AdView;->state:Ljava/lang/String;

    .line 73
    iput-boolean v2, p0, Lcom/madsdk/AdView;->isViewable:Z

    .line 74
    new-instance v0, Lcom/madsdk/AdView$1;

    invoke-direct {v0, p0}, Lcom/madsdk/AdView$1;-><init>(Lcom/madsdk/AdView;)V

    iput-object v0, p0, Lcom/madsdk/AdView;->webViewClient:Landroid/webkit/WebViewClient;

    .line 83
    iput-boolean v2, p0, Lcom/madsdk/AdView;->isInterstitial:Z

    .line 90
    new-instance v0, Lcom/madsdk/AdView$2;

    invoke-direct {v0, p0}, Lcom/madsdk/AdView$2;-><init>(Lcom/madsdk/AdView;)V

    iput-object v0, p0, Lcom/madsdk/AdView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 108
    new-instance v0, Lcom/madsdk/javascript/ExpandProperties;

    invoke-direct {v0}, Lcom/madsdk/javascript/ExpandProperties;-><init>()V

    iput-object v0, p0, Lcom/madsdk/AdView;->expandProperties:Lcom/madsdk/javascript/ExpandProperties;

    .line 109
    new-instance v0, Lcom/madsdk/javascript/ResizeProperties;

    invoke-direct {v0}, Lcom/madsdk/javascript/ResizeProperties;-><init>()V

    iput-object v0, p0, Lcom/madsdk/AdView;->resizeProperties:Lcom/madsdk/javascript/ResizeProperties;

    .line 110
    new-instance v0, Lcom/madsdk/javascript/OrientationProperties;

    invoke-direct {v0}, Lcom/madsdk/javascript/OrientationProperties;-><init>()V

    iput-object v0, p0, Lcom/madsdk/AdView;->orientationProperties:Lcom/madsdk/javascript/OrientationProperties;

    .line 112
    new-instance v0, Lcom/madsdk/AdView$3;

    invoke-direct {v0, p0}, Lcom/madsdk/AdView$3;-><init>(Lcom/madsdk/AdView;)V

    iput-object v0, p0, Lcom/madsdk/AdView;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    .line 476
    invoke-direct {p0}, Lcom/madsdk/AdView;->init()V

    .line 477
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/madsdk/R$styleable;->AdView:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 483
    :try_start_0
    sget v0, Lcom/madsdk/R$styleable;->AdView_publication:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/madsdk/AdView;->publication:Ljava/lang/String;

    .line 484
    sget v0, Lcom/madsdk/R$styleable;->AdView_srw:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/madsdk/AdView;->srw:Ljava/lang/String;

    .line 485
    sget v0, Lcom/madsdk/R$styleable;->AdView_srh:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/madsdk/AdView;->srh:Ljava/lang/String;

    .line 486
    sget v0, Lcom/madsdk/R$styleable;->AdView_p:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/madsdk/AdView;->p:Ljava/lang/String;

    .line 487
    sget v0, Lcom/madsdk/R$styleable;->AdView_isNativeBrowser:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/madsdk/AdView;->isNativeBrowser:Z

    .line 488
    invoke-direct {p0}, Lcom/madsdk/AdView;->load()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 493
    return-void

    .line 491
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 547
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    const-string v0, "loading"

    iput-object v0, p0, Lcom/madsdk/AdView;->state:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lcom/madsdk/AdView;->isViewable:Z

    .line 74
    new-instance v0, Lcom/madsdk/AdView$1;

    invoke-direct {v0, p0}, Lcom/madsdk/AdView$1;-><init>(Lcom/madsdk/AdView;)V

    iput-object v0, p0, Lcom/madsdk/AdView;->webViewClient:Landroid/webkit/WebViewClient;

    .line 83
    iput-boolean v1, p0, Lcom/madsdk/AdView;->isInterstitial:Z

    .line 90
    new-instance v0, Lcom/madsdk/AdView$2;

    invoke-direct {v0, p0}, Lcom/madsdk/AdView$2;-><init>(Lcom/madsdk/AdView;)V

    iput-object v0, p0, Lcom/madsdk/AdView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 108
    new-instance v0, Lcom/madsdk/javascript/ExpandProperties;

    invoke-direct {v0}, Lcom/madsdk/javascript/ExpandProperties;-><init>()V

    iput-object v0, p0, Lcom/madsdk/AdView;->expandProperties:Lcom/madsdk/javascript/ExpandProperties;

    .line 109
    new-instance v0, Lcom/madsdk/javascript/ResizeProperties;

    invoke-direct {v0}, Lcom/madsdk/javascript/ResizeProperties;-><init>()V

    iput-object v0, p0, Lcom/madsdk/AdView;->resizeProperties:Lcom/madsdk/javascript/ResizeProperties;

    .line 110
    new-instance v0, Lcom/madsdk/javascript/OrientationProperties;

    invoke-direct {v0}, Lcom/madsdk/javascript/OrientationProperties;-><init>()V

    iput-object v0, p0, Lcom/madsdk/AdView;->orientationProperties:Lcom/madsdk/javascript/OrientationProperties;

    .line 112
    new-instance v0, Lcom/madsdk/AdView$3;

    invoke-direct {v0, p0}, Lcom/madsdk/AdView$3;-><init>(Lcom/madsdk/AdView;)V

    iput-object v0, p0, Lcom/madsdk/AdView;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    .line 548
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 552
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    const-string v0, "loading"

    iput-object v0, p0, Lcom/madsdk/AdView;->state:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lcom/madsdk/AdView;->isViewable:Z

    .line 74
    new-instance v0, Lcom/madsdk/AdView$1;

    invoke-direct {v0, p0}, Lcom/madsdk/AdView$1;-><init>(Lcom/madsdk/AdView;)V

    iput-object v0, p0, Lcom/madsdk/AdView;->webViewClient:Landroid/webkit/WebViewClient;

    .line 83
    iput-boolean v1, p0, Lcom/madsdk/AdView;->isInterstitial:Z

    .line 90
    new-instance v0, Lcom/madsdk/AdView$2;

    invoke-direct {v0, p0}, Lcom/madsdk/AdView$2;-><init>(Lcom/madsdk/AdView;)V

    iput-object v0, p0, Lcom/madsdk/AdView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 108
    new-instance v0, Lcom/madsdk/javascript/ExpandProperties;

    invoke-direct {v0}, Lcom/madsdk/javascript/ExpandProperties;-><init>()V

    iput-object v0, p0, Lcom/madsdk/AdView;->expandProperties:Lcom/madsdk/javascript/ExpandProperties;

    .line 109
    new-instance v0, Lcom/madsdk/javascript/ResizeProperties;

    invoke-direct {v0}, Lcom/madsdk/javascript/ResizeProperties;-><init>()V

    iput-object v0, p0, Lcom/madsdk/AdView;->resizeProperties:Lcom/madsdk/javascript/ResizeProperties;

    .line 110
    new-instance v0, Lcom/madsdk/javascript/OrientationProperties;

    invoke-direct {v0}, Lcom/madsdk/javascript/OrientationProperties;-><init>()V

    iput-object v0, p0, Lcom/madsdk/AdView;->orientationProperties:Lcom/madsdk/javascript/OrientationProperties;

    .line 112
    new-instance v0, Lcom/madsdk/AdView$3;

    invoke-direct {v0, p0}, Lcom/madsdk/AdView$3;-><init>(Lcom/madsdk/AdView;)V

    iput-object v0, p0, Lcom/madsdk/AdView;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    .line 553
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Lcom/madsdk/AdListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 418
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    const-string v0, "loading"

    iput-object v0, p0, Lcom/madsdk/AdView;->state:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lcom/madsdk/AdView;->isViewable:Z

    .line 74
    new-instance v0, Lcom/madsdk/AdView$1;

    invoke-direct {v0, p0}, Lcom/madsdk/AdView$1;-><init>(Lcom/madsdk/AdView;)V

    iput-object v0, p0, Lcom/madsdk/AdView;->webViewClient:Landroid/webkit/WebViewClient;

    .line 83
    iput-boolean v1, p0, Lcom/madsdk/AdView;->isInterstitial:Z

    .line 90
    new-instance v0, Lcom/madsdk/AdView$2;

    invoke-direct {v0, p0}, Lcom/madsdk/AdView$2;-><init>(Lcom/madsdk/AdView;)V

    iput-object v0, p0, Lcom/madsdk/AdView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 108
    new-instance v0, Lcom/madsdk/javascript/ExpandProperties;

    invoke-direct {v0}, Lcom/madsdk/javascript/ExpandProperties;-><init>()V

    iput-object v0, p0, Lcom/madsdk/AdView;->expandProperties:Lcom/madsdk/javascript/ExpandProperties;

    .line 109
    new-instance v0, Lcom/madsdk/javascript/ResizeProperties;

    invoke-direct {v0}, Lcom/madsdk/javascript/ResizeProperties;-><init>()V

    iput-object v0, p0, Lcom/madsdk/AdView;->resizeProperties:Lcom/madsdk/javascript/ResizeProperties;

    .line 110
    new-instance v0, Lcom/madsdk/javascript/OrientationProperties;

    invoke-direct {v0}, Lcom/madsdk/javascript/OrientationProperties;-><init>()V

    iput-object v0, p0, Lcom/madsdk/AdView;->orientationProperties:Lcom/madsdk/javascript/OrientationProperties;

    .line 112
    new-instance v0, Lcom/madsdk/AdView$3;

    invoke-direct {v0, p0}, Lcom/madsdk/AdView$3;-><init>(Lcom/madsdk/AdView;)V

    iput-object v0, p0, Lcom/madsdk/AdView;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    .line 419
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/madsdk/AdView;->isNativeBrowser:Z

    .line 420
    iput-object p4, p0, Lcom/madsdk/AdView;->listener:Lcom/madsdk/AdListener;

    .line 421
    invoke-direct {p0}, Lcom/madsdk/AdView;->init()V

    .line 422
    if-eqz p2, :cond_0

    .line 423
    invoke-direct {p0, p2}, Lcom/madsdk/AdView;->loadAd(Ljava/lang/String;)V

    .line 426
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/madsdk/AdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/madsdk/AdView;->state:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/madsdk/AdView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/madsdk/AdView;->state:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/madsdk/AdView;)Lcom/madsdk/AdWebView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/madsdk/AdView;->mWebView:Lcom/madsdk/AdWebView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/madsdk/AdView;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/madsdk/AdView;->openDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/madsdk/AdView;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/madsdk/AdView;->isViewable:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/madsdk/AdView;)F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/madsdk/AdView;->defaultX:F

    return v0
.end method

.method static synthetic access$1300(Lcom/madsdk/AdView;)F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/madsdk/AdView;->defaultY:F

    return v0
.end method

.method static synthetic access$1400(Lcom/madsdk/AdView;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/madsdk/AdView;->defaultWidth:I

    return v0
.end method

.method static synthetic access$1500(Lcom/madsdk/AdView;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/madsdk/AdView;->defaultHeight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/madsdk/AdView;)Lcom/madsdk/javascript/SizeProperties;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/madsdk/AdView;->getScreenSize()Lcom/madsdk/javascript/SizeProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/madsdk/AdView;)Lcom/madsdk/javascript/ResizeProperties;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/madsdk/AdView;->resizeProperties:Lcom/madsdk/javascript/ResizeProperties;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/madsdk/AdView;Lcom/madsdk/javascript/ResizeProperties;)Lcom/madsdk/javascript/ResizeProperties;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/madsdk/AdView;->resizeProperties:Lcom/madsdk/javascript/ResizeProperties;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/madsdk/AdView;)Z
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/madsdk/AdView;->isPropertiesChecked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/madsdk/AdView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/madsdk/AppInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct/range {p0 .. p5}, Lcom/madsdk/AdView;->loadBanner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/madsdk/AppInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/madsdk/AdView;Z)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/madsdk/AdView;->setViewable(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/madsdk/AdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/madsdk/AdView;->loadAd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/madsdk/AdView;)Lcom/madsdk/AdListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/madsdk/AdView;->listener:Lcom/madsdk/AdListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/madsdk/AdView;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/madsdk/AdView;->isNativeBrowser:Z

    return v0
.end method

.method static synthetic access$500(Lcom/madsdk/AdView;)Lcom/madsdk/FullscreenAd;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/madsdk/AdView;->mFullScreenDialog:Lcom/madsdk/FullscreenAd;

    return-object v0
.end method

.method static synthetic access$600(Lcom/madsdk/AdView;)Lcom/madsdk/javascript/ExpandProperties;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/madsdk/AdView;->expandProperties:Lcom/madsdk/javascript/ExpandProperties;

    return-object v0
.end method

.method static synthetic access$700(Lcom/madsdk/AdView;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/madsdk/AdView;->close()V

    return-void
.end method

.method static synthetic access$800(Lcom/madsdk/AdView;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/madsdk/AdView;->isInterstitial:Z

    return v0
.end method

.method static synthetic access$900(Lcom/madsdk/AdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/madsdk/AdView;->setState(Ljava/lang/String;)V

    return-void
.end method

.method private close()V
    .locals 2

    .prologue
    .line 388
    const-string v0, "expanded"

    iget-object v1, p0, Lcom/madsdk/AdView;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/madsdk/AdView;->isInterstitial:Z

    if-eqz v0, :cond_2

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/madsdk/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/madsdk/AdView;->requestedOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 390
    iget-object v0, p0, Lcom/madsdk/AdView;->mFullScreenDialog:Lcom/madsdk/FullscreenAd;

    invoke-virtual {v0}, Lcom/madsdk/FullscreenAd;->removeWebView()V

    .line 391
    iget-object v0, p0, Lcom/madsdk/AdView;->mWebView:Lcom/madsdk/AdWebView;

    invoke-virtual {p0, v0}, Lcom/madsdk/AdView;->addView(Landroid/view/View;)V

    .line 392
    iget-object v0, p0, Lcom/madsdk/AdView;->mFullScreenDialog:Lcom/madsdk/FullscreenAd;

    invoke-virtual {v0}, Lcom/madsdk/FullscreenAd;->dismiss()V

    .line 393
    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/madsdk/AdView;->setState(Ljava/lang/String;)V

    .line 400
    :cond_1
    :goto_0
    return-void

    .line 395
    :cond_2
    const-string v0, "resized"

    iget-object v1, p0, Lcom/madsdk/AdView;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    invoke-direct {p0}, Lcom/madsdk/AdView;->setDefaultSize()V

    .line 397
    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/madsdk/AdView;->setState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static dpToPx(I)I
    .locals 2

    .prologue
    .line 382
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 383
    int-to-float v1, p0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 384
    return v0
.end method

.method private getScreenSize()Lcom/madsdk/javascript/SizeProperties;
    .locals 3

    .prologue
    .line 366
    new-instance v1, Lcom/madsdk/javascript/SizeProperties;

    invoke-direct {v1}, Lcom/madsdk/javascript/SizeProperties;-><init>()V

    .line 367
    invoke-virtual {p0}, Lcom/madsdk/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 368
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 369
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 370
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/madsdk/AdView;->pxToDp(F)I

    move-result v0

    iput v0, v1, Lcom/madsdk/javascript/SizeProperties;->width:I

    .line 371
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/madsdk/AdView;->pxToDp(F)I

    move-result v0

    iput v0, v1, Lcom/madsdk/javascript/SizeProperties;->height:I

    .line 372
    return-object v1
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 429
    new-instance v0, Lcom/madsdk/AdWebView;

    invoke-virtual {p0}, Lcom/madsdk/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/madsdk/AdView;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    iget-object v3, p0, Lcom/madsdk/AdView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-direct {v0, v1, v2, v3}, Lcom/madsdk/AdWebView;-><init>(Landroid/content/Context;Lcom/madsdk/javascript/MraidEventsListener;Landroid/webkit/WebViewClient;)V

    iput-object v0, p0, Lcom/madsdk/AdView;->mWebView:Lcom/madsdk/AdWebView;

    .line 430
    iget-object v0, p0, Lcom/madsdk/AdView;->mWebView:Lcom/madsdk/AdWebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/madsdk/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    invoke-virtual {p0}, Lcom/madsdk/AdView;->getX()F

    move-result v0

    iput v0, p0, Lcom/madsdk/AdView;->defaultX:F

    .line 432
    invoke-virtual {p0}, Lcom/madsdk/AdView;->getY()F

    move-result v0

    iput v0, p0, Lcom/madsdk/AdView;->defaultY:F

    .line 433
    invoke-virtual {p0}, Lcom/madsdk/AdView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/madsdk/AdView;->defaultHeight:I

    .line 434
    invoke-virtual {p0}, Lcom/madsdk/AdView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/madsdk/AdView;->defaultWidth:I

    .line 435
    invoke-direct {p0}, Lcom/madsdk/AdView;->getScreenSize()Lcom/madsdk/javascript/SizeProperties;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcom/madsdk/AdView;->expandProperties:Lcom/madsdk/javascript/ExpandProperties;

    iget v2, v0, Lcom/madsdk/javascript/SizeProperties;->width:I

    iput v2, v1, Lcom/madsdk/javascript/ExpandProperties;->width:I

    .line 437
    iget-object v1, p0, Lcom/madsdk/AdView;->expandProperties:Lcom/madsdk/javascript/ExpandProperties;

    iget v0, v0, Lcom/madsdk/javascript/SizeProperties;->height:I

    iput v0, v1, Lcom/madsdk/javascript/ExpandProperties;->height:I

    .line 438
    iget-object v0, p0, Lcom/madsdk/AdView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/madsdk/AdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-object v0, p0, Lcom/madsdk/AdView;->mWebView:Lcom/madsdk/AdWebView;

    iget-object v1, p0, Lcom/madsdk/AdView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/madsdk/AdWebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    return-void
.end method

.method private isPropertiesChecked()Z
    .locals 2

    .prologue
    const/16 v1, 0x32

    .line 362
    iget-object v0, p0, Lcom/madsdk/AdView;->resizeProperties:Lcom/madsdk/javascript/ResizeProperties;

    iget v0, v0, Lcom/madsdk/javascript/ResizeProperties;->height:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/madsdk/AdView;->resizeProperties:Lcom/madsdk/javascript/ResizeProperties;

    iget v0, v0, Lcom/madsdk/javascript/ResizeProperties;->width:I

    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/madsdk/AdView;->resizeProperties:Lcom/madsdk/javascript/ResizeProperties;

    iget v0, v0, Lcom/madsdk/javascript/ResizeProperties;->offsetX:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/madsdk/AdView;->defaultWidth:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/madsdk/AdView;->resizeProperties:Lcom/madsdk/javascript/ResizeProperties;

    iget v0, v0, Lcom/madsdk/javascript/ResizeProperties;->offsetY:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/madsdk/AdView;->defaultHeight:I

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private load()V
    .locals 6

    .prologue
    .line 496
    iget-object v1, p0, Lcom/madsdk/AdView;->publication:Ljava/lang/String;

    iget-object v2, p0, Lcom/madsdk/AdView;->srw:Ljava/lang/String;

    iget-object v3, p0, Lcom/madsdk/AdView;->srh:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/madsdk/AdView;->isNativeBrowser:Z

    iget-object v5, p0, Lcom/madsdk/AdView;->p:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/madsdk/AdView;->loadAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 497
    return-void
.end method

.method private loadAd(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/madsdk/AdView;->mWebView:Lcom/madsdk/AdWebView;

    invoke-virtual {v0, p1}, Lcom/madsdk/AdWebView;->loadAd(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/madsdk/AdView;->listener:Lcom/madsdk/AdListener;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/madsdk/AdView;->listener:Lcom/madsdk/AdListener;

    invoke-interface {v0}, Lcom/madsdk/AdListener;->onLoad()V

    .line 471
    :cond_0
    return-void
.end method

.method private loadBanner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/madsdk/AppInfo;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 509
    iget-boolean v0, p0, Lcom/madsdk/AdView;->isInterstitial:Z

    if-eqz v0, :cond_0

    move v5, v6

    :goto_0
    move-object v0, p4

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/madsdk/AdRequest;->getUrl(Lcom/madsdk/AppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 512
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 513
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 515
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/madsdk/AdView$5;

    invoke-direct {v1, p0}, Lcom/madsdk/AdView$5;-><init>(Lcom/madsdk/AdView;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 544
    return-void

    :cond_0
    move v5, v4

    .line 509
    goto :goto_0
.end method

.method private openDialog()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 443
    iget-object v0, p0, Lcom/madsdk/AdView;->mWebView:Lcom/madsdk/AdWebView;

    invoke-virtual {p0, v0}, Lcom/madsdk/AdView;->removeView(Landroid/view/View;)V

    .line 444
    new-instance v0, Lcom/madsdk/FullscreenAd;

    invoke-direct {v0}, Lcom/madsdk/FullscreenAd;-><init>()V

    iput-object v0, p0, Lcom/madsdk/AdView;->mFullScreenDialog:Lcom/madsdk/FullscreenAd;

    .line 445
    iget-object v0, p0, Lcom/madsdk/AdView;->mFullScreenDialog:Lcom/madsdk/FullscreenAd;

    iget-object v2, p0, Lcom/madsdk/AdView;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-virtual {v0, v2}, Lcom/madsdk/FullscreenAd;->setMraidEventsListener(Lcom/madsdk/javascript/MraidEventsListener;)V

    .line 446
    iget-object v0, p0, Lcom/madsdk/AdView;->mFullScreenDialog:Lcom/madsdk/FullscreenAd;

    iget-object v2, p0, Lcom/madsdk/AdView;->mWebView:Lcom/madsdk/AdWebView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/madsdk/AdView;->expandProperties:Lcom/madsdk/javascript/ExpandProperties;

    iget-boolean v4, v4, Lcom/madsdk/javascript/ExpandProperties;->useCustomClose:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/madsdk/FullscreenAd;->addWebView(Lcom/madsdk/AdWebView;Landroid/widget/FrameLayout$LayoutParams;Z)V

    .line 447
    iget-object v2, p0, Lcom/madsdk/AdView;->mFullScreenDialog:Lcom/madsdk/FullscreenAd;

    iget-object v0, p0, Lcom/madsdk/AdView;->listener:Lcom/madsdk/AdListener;

    check-cast v0, Lcom/madsdk/InterstitialAdListener;

    invoke-virtual {v2, v0}, Lcom/madsdk/FullscreenAd;->setListener(Lcom/madsdk/InterstitialAdListener;)V

    .line 448
    invoke-virtual {p0}, Lcom/madsdk/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 449
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    iput v2, p0, Lcom/madsdk/AdView;->requestedOrientation:I

    .line 450
    iget-object v2, p0, Lcom/madsdk/AdView;->orientationProperties:Lcom/madsdk/javascript/OrientationProperties;

    iget-boolean v2, v2, Lcom/madsdk/javascript/OrientationProperties;->allowOrientationChange:Z

    if-eqz v2, :cond_1

    .line 451
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 455
    :goto_0
    iget-object v2, p0, Lcom/madsdk/AdView;->orientationProperties:Lcom/madsdk/javascript/OrientationProperties;

    iget-object v2, v2, Lcom/madsdk/javascript/OrientationProperties;->forceOrientation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 463
    :goto_2
    iget-object v1, p0, Lcom/madsdk/AdView;->mFullScreenDialog:Lcom/madsdk/FullscreenAd;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/madsdk/FullscreenAd;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 464
    return-void

    .line 453
    :cond_1
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 455
    :sswitch_0
    const-string v3, "portrait"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "landscape"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    .line 457
    :pswitch_0
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_2

    .line 460
    :pswitch_1
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_2

    .line 455
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b77bb9b -> :sswitch_0
        0x5545f2bb -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static pxToDp(F)I
    .locals 2

    .prologue
    .line 376
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 377
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 378
    return v0
.end method

.method private setDefaultSize()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 403
    invoke-virtual {p0}, Lcom/madsdk/AdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 404
    iget v1, p0, Lcom/madsdk/AdView;->defaultHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 405
    iget v1, p0, Lcom/madsdk/AdView;->defaultWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 406
    invoke-virtual {p0, v0}, Lcom/madsdk/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 408
    iget-object v1, p0, Lcom/madsdk/AdView;->mWebView:Lcom/madsdk/AdWebView;

    invoke-virtual {v1, v0}, Lcom/madsdk/AdWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    return-void
.end method

.method private setState(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 569
    iput-object p1, p0, Lcom/madsdk/AdView;->state:Ljava/lang/String;

    .line 570
    iget-object v0, p0, Lcom/madsdk/AdView;->mWebView:Lcom/madsdk/AdWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript: mraid.fireEvent(\'stateChange\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/madsdk/AdWebView;->loadUrl(Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method private setViewable(Z)V
    .locals 3

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/madsdk/AdView;->isViewable:Z

    .line 101
    iget-object v0, p0, Lcom/madsdk/AdView;->mWebView:Lcom/madsdk/AdWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript: mraid.fireEvent(\'viewableChange\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/madsdk/AdWebView;->loadUrl(Ljava/lang/String;)V

    .line 102
    return-void
.end method


# virtual methods
.method public loadAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    .prologue
    .line 500
    iput-boolean p4, p0, Lcom/madsdk/AdView;->isNativeBrowser:Z

    .line 501
    invoke-virtual {p0}, Lcom/madsdk/AdView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v0, Lcom/madsdk/AdView$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/madsdk/AdView$4;-><init>(Lcom/madsdk/AdView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/madsdk/AppInfo;->request(Landroid/content/Context;Lcom/madsdk/AppInfo$Listener;)V

    .line 506
    return-void
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 556
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/madsdk/AdView;->isNativeBrowser:Z

    .line 557
    invoke-direct {p0}, Lcom/madsdk/AdView;->init()V

    .line 558
    if-eqz p1, :cond_0

    .line 559
    invoke-direct {p0, p1}, Lcom/madsdk/AdView;->loadAd(Ljava/lang/String;)V

    .line 561
    :cond_0
    return-void
.end method

.method public setInterstitial(Z)V
    .locals 0

    .prologue
    .line 578
    iput-boolean p1, p0, Lcom/madsdk/AdView;->isInterstitial:Z

    .line 579
    return-void
.end method

.method public setListener(Lcom/madsdk/AdListener;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/madsdk/AdView;->listener:Lcom/madsdk/AdListener;

    .line 575
    return-void
.end method

.method public showAsInterstitial()V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/madsdk/AdView;->openDialog()V

    .line 566
    return-void
.end method
