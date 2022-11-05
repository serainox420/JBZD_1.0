.class public Lcom/millennialmedia/internal/MMWebView;
.super Landroid/webkit/WebView;
.source "MMWebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/MMWebView$MMWebViewGestureListener;,
        Lcom/millennialmedia/internal/MMWebView$MMWebViewJSBridgeListener;,
        Lcom/millennialmedia/internal/MMWebView$MMWebViewViewabilityListener;,
        Lcom/millennialmedia/internal/MMWebView$MMWebChromeClient;,
        Lcom/millennialmedia/internal/MMWebView$MMWebViewClient;,
        Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;,
        Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field public static googleSecurityPatchEnabled:Z


# instance fields
.field protected final a:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

.field b:Lcom/millennialmedia/internal/JSBridge;

.field c:Ljava/lang/String;

.field private final e:Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

.field private final f:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field private g:Landroid/view/GestureDetector;

.field private h:Z

.field private i:[I

.field private j:[I

.field private k:Lcom/moat/analytics/mobile/aol/MoatFactory;

.field private l:Lcom/moat/analytics/mobile/aol/WebAdTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/MMWebView;->d:Ljava/lang/String;

    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/internal/MMWebView;->googleSecurityPatchEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 357
    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 56
    iput-boolean v2, p0, Lcom/millennialmedia/internal/MMWebView;->h:Z

    .line 57
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->i:[I

    .line 58
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->j:[I

    .line 359
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/millennialmedia/internal/MMWebView;->e:Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

    .line 360
    const-string v0, "MMWebView"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/MMWebView;->setTag(Ljava/lang/Object;)V

    .line 362
    if-nez p3, :cond_1

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to create MMWebView instance, specified listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->getDefault()Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

    move-result-object p2

    goto :goto_0

    .line 365
    :cond_1
    iput-object p3, p0, Lcom/millennialmedia/internal/MMWebView;->a:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    .line 367
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->e:Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->transparent:Z

    if-eqz v0, :cond_2

    .line 368
    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/MMWebView;->setBackgroundColor(I)V

    .line 371
    :cond_2
    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/MMWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 372
    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/MMWebView;->setVerticalScrollBarEnabled(Z)V

    .line 374
    new-instance v0, Landroid/view/GestureDetector;

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/millennialmedia/internal/MMWebView$MMWebViewGestureListener;

    invoke-direct {v4, p3}, Lcom/millennialmedia/internal/MMWebView$MMWebViewGestureListener;-><init>(Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    invoke-direct {v0, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->g:Landroid/view/GestureDetector;

    .line 377
    new-instance v0, Lcom/millennialmedia/internal/MMWebView$MMWebViewClient;

    invoke-direct {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/MMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 378
    new-instance v0, Lcom/millennialmedia/internal/MMWebView$MMWebChromeClient;

    invoke-direct {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebChromeClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/MMWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 381
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 382
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 383
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 384
    const-string v0, "UTF-8"

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 386
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 387
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v0, v4, :cond_4

    .line 390
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->d:Ljava/lang/String;

    const-string v4, "Disabling user gesture requirement for media playback"

    invoke-static {v0, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_3
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 397
    :cond_4
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 398
    sget-object v4, Lcom/millennialmedia/internal/MMWebView;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Google security patch is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v0, Lcom/millennialmedia/internal/MMWebView;->googleSecurityPatchEnabled:Z

    if-eqz v0, :cond_7

    const-string v0, "enabled"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_5
    sget-boolean v0, Lcom/millennialmedia/internal/MMWebView;->googleSecurityPatchEnabled:Z

    if-nez v0, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 402
    sget-boolean v0, Lcom/millennialmedia/internal/MMWebView;->googleSecurityPatchEnabled:Z

    if-nez v0, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 404
    sget-boolean v0, Lcom/millennialmedia/internal/MMWebView;->googleSecurityPatchEnabled:Z

    if-nez v0, :cond_a

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 405
    sget-boolean v0, Lcom/millennialmedia/internal/MMWebView;->googleSecurityPatchEnabled:Z

    if-nez v0, :cond_b

    :goto_5
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 408
    new-instance v0, Lcom/millennialmedia/internal/JSBridge;

    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->e:Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

    iget-boolean v1, v1, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->interstitial:Z

    new-instance v2, Lcom/millennialmedia/internal/MMWebView$MMWebViewJSBridgeListener;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewJSBridgeListener;-><init>(Lcom/millennialmedia/internal/MMWebView;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;-><init>(Lcom/millennialmedia/internal/MMWebView;ZLcom/millennialmedia/internal/JSBridge$JSBridgeListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    .line 410
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->e:Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->enableEnhancedAdControl:Z

    if-eqz v0, :cond_6

    .line 411
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->enableApiCalls()V

    .line 414
    :cond_6
    new-instance v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    new-instance v1, Lcom/millennialmedia/internal/MMWebView$MMWebViewViewabilityListener;

    invoke-direct {v1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewViewabilityListener;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->f:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    .line 415
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->f:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    .line 417
    return-void

    .line 398
    :cond_7
    const-string v0, "disabled"

    goto :goto_1

    :cond_8
    move v0, v2

    .line 401
    goto :goto_2

    :cond_9
    move v0, v2

    .line 402
    goto :goto_3

    :cond_a
    move v0, v2

    .line 404
    goto :goto_4

    :cond_b
    move v1, v2

    .line 405
    goto :goto_5
.end method

.method static synthetic a(Lcom/millennialmedia/internal/MMWebView;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/millennialmedia/internal/MMWebView;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 588
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :goto_0
    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 591
    sget-object v1, Lcom/millennialmedia/internal/MMWebView;->d:Ljava/lang/String;

    const-string v2, "Error loading url"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/MMWebView;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/millennialmedia/internal/MMWebView;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/millennialmedia/internal/MMWebView;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/MMWebView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 650
    :goto_0
    return v0

    .line 651
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/millennialmedia/internal/MMWebView;->h:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMWebView;->a()V

    .line 551
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->a:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onLoaded()V

    .line 557
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 673
    return-void
.end method

.method public varargs callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/internal/JSBridge;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    :cond_0
    return-void
.end method

.method protected getExtraScriptsToInject()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 679
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    :cond_0
    return-void
.end method

.method public isEnhancedAdControlEnabled()Z
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->areApiCallsEnabled()Z

    move-result v0

    return v0
.end method

.method public isJSBridgeReady()Z
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->isReady()Z

    move-result v0

    return v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 575
    iput-object p1, p0, Lcom/millennialmedia/internal/MMWebView;->c:Ljava/lang/String;

    .line 578
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    sget-object v1, Lcom/millennialmedia/internal/MMWebView;->d:Ljava/lang/String;

    const-string v2, "Error hit when calling through to loadDataWithBaseUrl"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 599
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->d:Ljava/lang/String;

    const-string v1, "Url is null or empty"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :goto_0
    return-void

    .line 605
    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    iput-object p1, p0, Lcom/millennialmedia/internal/MMWebView;->c:Ljava/lang/String;

    .line 609
    :cond_1
    new-instance v0, Lcom/millennialmedia/internal/MMWebView$2;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/MMWebView$2;-><init>(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 423
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 427
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->e:Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->enableMoat:Z

    if-eqz v0, :cond_4

    .line 428
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_3

    .line 430
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/MoatFactory;->create(Landroid/app/Activity;)Lcom/moat/analytics/mobile/aol/MoatFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->k:Lcom/moat/analytics/mobile/aol/MoatFactory;

    .line 432
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->l:Lcom/moat/analytics/mobile/aol/WebAdTracker;

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->k:Lcom/moat/analytics/mobile/aol/MoatFactory;

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/aol/MoatFactory;->createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/aol/WebAdTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->l:Lcom/moat/analytics/mobile/aol/WebAdTracker;

    .line 435
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->l:Lcom/moat/analytics/mobile/aol/WebAdTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/WebAdTracker;->track()Z

    move-result v0

    if-nez v0, :cond_2

    .line 436
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->d:Ljava/lang/String;

    const-string v1, "MOAT tracking initialization failed."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->i:[I

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/MMWebView;->getLocationOnScreen([I)V

    .line 456
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 460
    :cond_1
    return-void

    .line 440
    :cond_2
    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->d:Ljava/lang/String;

    const-string v1, "MOAT tracking enabled for MMWebView."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_3
    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->d:Ljava/lang/String;

    const-string v1, "MOAT disabled. Cannot determine host Activity for Ad."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_4
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->d:Ljava/lang/String;

    const-string v1, "Moat is not enabled for this MMWebView."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 472
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 473
    return-void
.end method

.method public onNotifyClicked()V
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->a:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onClicked()V

    .line 734
    return-void
.end method

.method public onScrollChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 480
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->j:[I

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/MMWebView;->getLocationOnScreen([I)V

    .line 481
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->j:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->i:[I

    aget v1, v1, v2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->j:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->i:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->i:[I

    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->j:[I

    aget v1, v1, v2

    aput v1, v0, v2

    .line 486
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->i:[I

    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->j:[I

    aget v1, v1, v3

    aput v1, v0, v3

    .line 488
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0, p0}, Lcom/millennialmedia/internal/JSBridge;->b(Lcom/millennialmedia/internal/MMWebView;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 622
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 624
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0, p0}, Lcom/millennialmedia/internal/JSBridge;->c(Lcom/millennialmedia/internal/MMWebView;)V

    .line 627
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 638
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->enableApiCalls()V

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->g:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 644
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 496
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->a:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onFailed()V

    .line 513
    :goto_0
    return-void

    .line 503
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/MMWebView;->h:Z

    .line 504
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/JSBridge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    new-instance v1, Lcom/millennialmedia/internal/MMWebView$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/MMWebView$1;-><init>(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setStateCollapsed()V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->setStateCollapsed()V

    .line 712
    :cond_0
    return-void
.end method

.method public setStateExpanded()V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->setStateExpanded()V

    .line 704
    :cond_0
    return-void
.end method

.method public setStateResized()V
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->setStateResized()V

    .line 688
    :cond_0
    return-void
.end method

.method public setStateResizing()V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->setStateResizing()V

    .line 728
    :cond_0
    return-void
.end method

.method public setStateUnresized()V
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->setStateUnresized()V

    .line 696
    :cond_0
    return-void
.end method

.method public setTwoPartExpand()V
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->b:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->setTwoPartExpand()V

    .line 720
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 523
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->d:Ljava/lang/String;

    const-string v1, "shutdown must be called on the UI thread"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->d:Ljava/lang/String;

    const-string v1, "Shutting down webview"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 535
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 538
    :cond_2
    const-string v0, "about:blank"

    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMWebView;->stopLoading()V

    .line 540
    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/MMWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 541
    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/MMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 542
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMWebView;->destroy()V

    goto :goto_0
.end method
