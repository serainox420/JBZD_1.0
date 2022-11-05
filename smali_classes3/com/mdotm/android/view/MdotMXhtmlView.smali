.class public Lcom/mdotm/android/view/MdotMXhtmlView;
.super Landroid/widget/RelativeLayout;
.source "MdotMXhtmlView.java"


# instance fields
.field private activityIndicator:Landroid/widget/ProgressBar;

.field private adSelectionInProgress:Z

.field private deviceHeight:I

.field private deviceWidth:I

.field handler:Landroid/os/Handler;

.field private mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

.field private mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

.field private webView:Landroid/webkit/WebView;

.field private webView1:Lcom/mdotm/android/view/MdotMWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;)V
    .locals 6

    .prologue
    const/16 v5, 0x28

    const/16 v4, 0xd

    const/16 v3, 0x8

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->webView:Landroid/webkit/WebView;

    .line 46
    const-string v0, "html resource HtmlView"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->handler:Landroid/os/Handler;

    .line 48
    iput-object p3, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    .line 49
    iput-object p2, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 50
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMXhtmlView;->getHeightAndWidth()V

    .line 51
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 52
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMXhtmlView;->getDevWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMXhtmlView;->getDevHeight()I

    move-result v2

    .line 51
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMXhtmlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMXhtmlView;->setGravity(I)V

    .line 70
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMXhtmlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    .line 71
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 72
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 75
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMinimumHeight(I)V

    .line 76
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMinimumWidth(I)V

    .line 77
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 78
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setId(I)V

    .line 80
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMXhtmlView;->addView(Landroid/view/View;)V

    .line 83
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->webView:Landroid/webkit/WebView;

    .line 84
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mdotm/android/view/MdotMXhtmlView$1;

    invoke-direct {v1, p0}, Lcom/mdotm/android/view/MdotMXhtmlView$1;-><init>(Lcom/mdotm/android/view/MdotMXhtmlView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/mdotm/android/view/MdotMXhtmlView;->initView(Landroid/content/Context;)V

    .line 166
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/MdotMXhtmlView;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mdotm/android/view/MdotMXhtmlView;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMXhtmlView;->adNetworkCompleted()V

    return-void
.end method

.method static synthetic access$2(Lcom/mdotm/android/view/MdotMXhtmlView;)Z
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMXhtmlView;->isAdSelectionInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/mdotm/android/view/MdotMXhtmlView;)Lcom/mdotm/android/listener/MdotMAdActionListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/mdotm/android/view/MdotMXhtmlView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->activityIndicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$5(Lcom/mdotm/android/view/MdotMXhtmlView;)Lcom/mdotm/android/model/MdotMAdResponse;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    return-object v0
.end method

.method private adNetworkCompleted()V
    .locals 1

    .prologue
    .line 199
    const-string v0, "On ad network completed"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mdotm/android/view/MdotMXhtmlView;->setAdSelectionInProgress(Z)V

    .line 201
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMXhtmlView;->hideActivityIndicator()V

    .line 202
    return-void
.end method

.method private getDevHeight()I
    .locals 2

    .prologue
    .line 293
    iget v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->deviceHeight:I

    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lcom/mdotm/android/view/MdotMXhtmlView;->getInDp(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getDevWidth()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->deviceWidth:I

    return v0
.end method

.method private getHeightAndWidth()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMXhtmlView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 315
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 317
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 318
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->deviceWidth:I

    .line 319
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->deviceHeight:I

    .line 327
    :goto_0
    return-void

    .line 322
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 323
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 324
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->deviceWidth:I

    .line 325
    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->deviceHeight:I

    goto :goto_0
.end method

.method private getInDp(I)I
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMXhtmlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 308
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 309
    return v0
.end method

.method private getReducedHeight()I
    .locals 2

    .prologue
    .line 303
    iget v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->deviceHeight:I

    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lcom/mdotm/android/view/MdotMXhtmlView;->getInDp(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private hideActivityIndicator()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/mdotm/android/view/MdotMXhtmlView$3;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/MdotMXhtmlView$3;-><init>(Lcom/mdotm/android/view/MdotMXhtmlView;)V

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMXhtmlView;->post(Ljava/lang/Runnable;)Z

    .line 229
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 170
    new-instance v0, Lcom/mdotm/android/view/MdotMWebView;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 171
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    invoke-direct {v0, p1, v1, v2}, Lcom/mdotm/android/view/MdotMWebView;-><init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;)V

    .line 170
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->webView1:Lcom/mdotm/android/view/MdotMWebView;

    .line 173
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->webView1:Lcom/mdotm/android/view/MdotMWebView;

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMXhtmlView;->addView(Landroid/view/View;)V

    .line 176
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 177
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 178
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v2}, Lcom/mdotm/android/model/MdotMAdResponse;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v3}, Lcom/mdotm/android/model/MdotMAdResponse;->getHeight()I

    move-result v3

    .line 177
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 180
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 184
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMXhtmlView;->addView(Landroid/view/View;)V

    .line 185
    return-void
.end method

.method private isAdSelectionInProgress()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->adSelectionInProgress:Z

    return v0
.end method

.method private setAdSelectionInProgress(Z)V
    .locals 0

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->adSelectionInProgress:Z

    .line 190
    return-void
.end method

.method private showActivityIndicator()V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/mdotm/android/view/MdotMXhtmlView$2;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/MdotMXhtmlView$2;-><init>(Lcom/mdotm/android/view/MdotMXhtmlView;)V

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMXhtmlView;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method


# virtual methods
.method protected clicked(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 233
    const-string v0, "  Selected to clicked  "

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getLandingUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMXhtmlView;->isAdSelectionInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->mAdResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getLandingUrl()Ljava/lang/String;

    move-result-object v0

    .line 239
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mdotm/android/view/MdotMXhtmlView;->setAdSelectionInProgress(Z)V

    .line 240
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMXhtmlView;->showActivityIndicator()V

    .line 241
    new-instance v1, Lcom/mdotm/android/view/MdotMXhtmlView$4;

    invoke-direct {v1, p0, v0}, Lcom/mdotm/android/view/MdotMXhtmlView$4;-><init>(Lcom/mdotm/android/view/MdotMXhtmlView;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v1}, Lcom/mdotm/android/view/MdotMXhtmlView$4;->start()V

    .line 290
    :goto_0
    return-void

    .line 285
    :cond_0
    const-string v0, "ad selection under progress"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_1
    const-string v0, "selected ad is null"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fireMraidEvent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->webView1:Lcom/mdotm/android/view/MdotMWebView;

    invoke-virtual {v0, p1}, Lcom/mdotm/android/view/MdotMWebView;->fireJSEvent(Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public loadblankview()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView;->webView1:Lcom/mdotm/android/view/MdotMWebView;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMWebView;->loadblankview()V

    .line 340
    return-void
.end method
