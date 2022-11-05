.class public final Lcom/flurry/sdk/he;
.super Lcom/flurry/sdk/gz;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled",
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/he$a;,
        Lcom/flurry/sdk/he$b;,
        Lcom/flurry/sdk/he$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private c:J

.field private d:Z

.field private final e:I

.field private final f:I

.field private g:J

.field private h:Landroid/webkit/WebView;

.field private i:Landroid/webkit/WebViewClient;

.field private j:Landroid/webkit/WebChromeClient;

.field private k:Z

.field private l:Lcom/flurry/sdk/gm;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/widget/ImageButton;

.field private o:Landroid/widget/ImageButton;

.field private p:Landroid/widget/ProgressBar;

.field private q:Landroid/widget/LinearLayout;

.field private r:Z

.field private s:Lcom/flurry/sdk/gz$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 315
    invoke-direct {p0, p1, p3, p4}, Lcom/flurry/sdk/gz;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/he;->a:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/he;->b:Z

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/he;->c:J

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/he;->d:Z

    .line 67
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/he;->e:I

    .line 68
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/he;->f:I

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/he;->g:J

    .line 549
    new-instance v0, Lcom/flurry/sdk/he$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/he$4;-><init>(Lcom/flurry/sdk/he;)V

    iput-object v0, p0, Lcom/flurry/sdk/he;->s:Lcom/flurry/sdk/gz$a;

    .line 317
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/he;->setFocusable(Z)V

    .line 318
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/he;->setFocusableInTouchMode(Z)V

    .line 319
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->requestFocus()Z

    .line 321
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/he;->q:Landroid/widget/LinearLayout;

    .line 322
    iget-object v0, p0, Lcom/flurry/sdk/he;->q:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 323
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 324
    iget-object v1, p0, Lcom/flurry/sdk/he;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    .line 328
    new-instance v0, Lcom/flurry/sdk/he$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/he$b;-><init>(Lcom/flurry/sdk/he;B)V

    iput-object v0, p0, Lcom/flurry/sdk/he;->i:Landroid/webkit/WebViewClient;

    .line 329
    new-instance v0, Lcom/flurry/sdk/he$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/he$a;-><init>(Lcom/flurry/sdk/he;B)V

    iput-object v0, p0, Lcom/flurry/sdk/he;->j:Landroid/webkit/WebChromeClient;

    .line 331
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 333
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 334
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 335
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 337
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 338
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 339
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 340
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 341
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 342
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 344
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 345
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 346
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 347
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 350
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 351
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 355
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 368
    :goto_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 369
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/he;->b:Z

    .line 371
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 372
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "/tmp/"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 380
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 383
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 384
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 386
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 388
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 391
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/sdk/he;->i:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 392
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/sdk/he;->j:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 393
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 394
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 398
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 404
    :goto_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 405
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 406
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 407
    iget-object v2, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 413
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/flurry/sdk/he;->p:Landroid/widget/ProgressBar;

    .line 414
    iget-object v1, p0, Lcom/flurry/sdk/he;->p:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 415
    iget-object v1, p0, Lcom/flurry/sdk/he;->p:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 416
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 417
    iget-object v2, p0, Lcom/flurry/sdk/he;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/he;->m:Landroid/widget/ImageButton;

    .line 420
    iget-object v1, p0, Lcom/flurry/sdk/he;->m:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/flurry/sdk/hi;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 421
    iget-object v1, p0, Lcom/flurry/sdk/he;->m:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 422
    iget-object v1, p0, Lcom/flurry/sdk/he;->m:Landroid/widget/ImageButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 423
    iget-object v1, p0, Lcom/flurry/sdk/he;->m:Landroid/widget/ImageButton;

    new-instance v2, Lcom/flurry/sdk/he$1;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/he$1;-><init>(Lcom/flurry/sdk/he;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/he;->n:Landroid/widget/ImageButton;

    .line 431
    iget-object v1, p0, Lcom/flurry/sdk/he;->n:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 432
    iget-object v1, p0, Lcom/flurry/sdk/he;->n:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/flurry/sdk/hi;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 433
    iget-object v1, p0, Lcom/flurry/sdk/he;->n:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 434
    iget-object v1, p0, Lcom/flurry/sdk/he;->n:Landroid/widget/ImageButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 435
    iget-object v1, p0, Lcom/flurry/sdk/he;->n:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 436
    iget-object v1, p0, Lcom/flurry/sdk/he;->n:Landroid/widget/ImageButton;

    new-instance v2, Lcom/flurry/sdk/he$2;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/he$2;-><init>(Lcom/flurry/sdk/he;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/he;->o:Landroid/widget/ImageButton;

    .line 448
    iget-object v1, p0, Lcom/flurry/sdk/he;->o:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/flurry/sdk/hi;->c()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 449
    iget-object v1, p0, Lcom/flurry/sdk/he;->o:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 450
    iget-object v1, p0, Lcom/flurry/sdk/he;->o:Landroid/widget/ImageButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 451
    iget-object v1, p0, Lcom/flurry/sdk/he;->o:Landroid/widget/ImageButton;

    new-instance v2, Lcom/flurry/sdk/he$3;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/he$3;-><init>(Lcom/flurry/sdk/he;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 461
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 462
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 463
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x23

    invoke-static {v3}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v3

    const/16 v4, 0x23

    invoke-static {v4}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 466
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 467
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 468
    iget v3, p0, Lcom/flurry/sdk/he;->e:I

    iget v4, p0, Lcom/flurry/sdk/he;->e:I

    iget v5, p0, Lcom/flurry/sdk/he;->e:I

    iget v6, p0, Lcom/flurry/sdk/he;->e:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 469
    iget-object v3, p0, Lcom/flurry/sdk/he;->m:Landroid/widget/ImageButton;

    iget v4, p0, Lcom/flurry/sdk/he;->f:I

    iget v5, p0, Lcom/flurry/sdk/he;->f:I

    iget v6, p0, Lcom/flurry/sdk/he;->f:I

    iget v7, p0, Lcom/flurry/sdk/he;->f:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 470
    iget-object v3, p0, Lcom/flurry/sdk/he;->m:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x23

    invoke-static {v3}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v3

    const/16 v4, 0x23

    invoke-static {v4}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 473
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 474
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/flurry/sdk/he;->o:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 475
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 476
    iget v3, p0, Lcom/flurry/sdk/he;->e:I

    iget v4, p0, Lcom/flurry/sdk/he;->e:I

    iget v5, p0, Lcom/flurry/sdk/he;->e:I

    iget v6, p0, Lcom/flurry/sdk/he;->e:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 477
    iget-object v3, p0, Lcom/flurry/sdk/he;->n:Landroid/widget/ImageButton;

    iget v4, p0, Lcom/flurry/sdk/he;->f:I

    iget v5, p0, Lcom/flurry/sdk/he;->f:I

    iget v6, p0, Lcom/flurry/sdk/he;->f:I

    iget v7, p0, Lcom/flurry/sdk/he;->f:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 478
    iget-object v3, p0, Lcom/flurry/sdk/he;->n:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x23

    invoke-static {v3}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v3

    const/16 v4, 0x23

    invoke-static {v4}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 481
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/flurry/sdk/he;->n:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 482
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 483
    iget v3, p0, Lcom/flurry/sdk/he;->e:I

    iget v4, p0, Lcom/flurry/sdk/he;->e:I

    iget v5, p0, Lcom/flurry/sdk/he;->e:I

    iget v6, p0, Lcom/flurry/sdk/he;->e:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 484
    iget-object v3, p0, Lcom/flurry/sdk/he;->o:Landroid/widget/ImageButton;

    iget v4, p0, Lcom/flurry/sdk/he;->f:I

    iget v5, p0, Lcom/flurry/sdk/he;->f:I

    iget v6, p0, Lcom/flurry/sdk/he;->f:I

    iget v7, p0, Lcom/flurry/sdk/he;->f:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 485
    iget-object v3, p0, Lcom/flurry/sdk/he;->o:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->showProgressDialog()V

    .line 488
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 490
    invoke-direct {p0}, Lcom/flurry/sdk/he;->c()V

    .line 492
    iget-object v2, p0, Lcom/flurry/sdk/he;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 493
    iget-object v1, p0, Lcom/flurry/sdk/he;->q:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flurry/sdk/he;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 494
    iget-object v1, p0, Lcom/flurry/sdk/he;->q:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 497
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/he;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    iget-object v0, p0, Lcom/flurry/sdk/he;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/he;->addView(Landroid/view/View;)V

    .line 500
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/he;->g:J

    .line 501
    return-void

    .line 358
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    .line 359
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getZoomButtonsController"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 360
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ZoomButtonsController;

    .line 361
    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/flurry/sdk/he;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 400
    :catch_1
    move-exception v1

    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    .line 7097
    iget-object v1, v1, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 400
    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/flurry/sdk/he;J)J
    .locals 1

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/flurry/sdk/he;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/he;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flurry/sdk/he;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/he;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/flurry/sdk/he;->r:Z

    return p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 656
    .line 657
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    :cond_0
    :goto_0
    return v0

    .line 661
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 662
    const-string v2, "link"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 663
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 667
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/sdk/he;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic b()V
    .locals 2

    .prologue
    .line 12211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 12212
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :goto_0
    return-void

    .line 12214
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/sdk/he;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/flurry/sdk/he;->k:Z

    return p1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/flurry/sdk/he;->o:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/he;->o:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/flurry/sdk/he;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/flurry/sdk/he;->r:Z

    return v0
.end method

.method static synthetic d(Lcom/flurry/sdk/he;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flurry/sdk/he;->p:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic e(Lcom/flurry/sdk/he;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/flurry/sdk/he;->c()V

    return-void
.end method

.method static synthetic f(Lcom/flurry/sdk/he;)J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/flurry/sdk/he;->c:J

    return-wide v0
.end method

.method static synthetic g(Lcom/flurry/sdk/he;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/flurry/sdk/he;->d:Z

    return v0
.end method

.method static synthetic h(Lcom/flurry/sdk/he;)Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/he;->d:Z

    return v0
.end method

.method static synthetic i(Lcom/flurry/sdk/he;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/flurry/sdk/he;->b:Z

    return v0
.end method

.method static synthetic j(Lcom/flurry/sdk/he;)Lcom/flurry/sdk/gm;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flurry/sdk/he;->l:Lcom/flurry/sdk/gm;

    return-object v0
.end method

.method static synthetic k(Lcom/flurry/sdk/he;)Lcom/flurry/sdk/gm;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/he;->l:Lcom/flurry/sdk/gm;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/he;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/flurry/sdk/he;->l:Lcom/flurry/sdk/gm;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/flurry/sdk/he;->l:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->c()V

    .line 687
    :cond_0
    return-void
.end method

.method public final a(Lcom/flurry/sdk/he$c;)V
    .locals 1

    .prologue
    .line 648
    sget-object v0, Lcom/flurry/sdk/he$c;->c:Lcom/flurry/sdk/he$c;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/he$c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/he$c;->a:Lcom/flurry/sdk/he$c;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/he$c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11675
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->onViewClose()V

    .line 653
    :goto_0
    return-void

    .line 11679
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->onViewBack()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 582
    invoke-static {p1}, Lcom/flurry/sdk/mc;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    invoke-static {p1}, Lcom/flurry/sdk/mc;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 8078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 8250
    iget-boolean v0, v0, Lcom/flurry/sdk/ay;->f:Z

    .line 585
    if-eqz v0, :cond_1

    .line 586
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/flurry/sdk/go;->b:I

    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/he;->s:Lcom/flurry/sdk/gz$a;

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/sdk/gn;->a(Landroid/content/Context;ILcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)Lcom/flurry/sdk/gm;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/he;->l:Lcom/flurry/sdk/gm;

    .line 590
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/he;->l:Lcom/flurry/sdk/gm;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/flurry/sdk/he;->l:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->initLayout()V

    .line 592
    iget-object v0, p0, Lcom/flurry/sdk/he;->l:Lcom/flurry/sdk/gm;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/he;->addView(Landroid/view/View;)V

    :cond_0
    move v0, v6

    .line 641
    :goto_1
    return v0

    .line 588
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/flurry/sdk/go;->c:I

    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/he;->s:Lcom/flurry/sdk/gz$a;

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/sdk/gn;->a(Landroid/content/Context;ILcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)Lcom/flurry/sdk/gm;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/he;->l:Lcom/flurry/sdk/gm;

    goto :goto_0

    .line 597
    :cond_2
    invoke-static {p1}, Lcom/flurry/sdk/mc;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 599
    if-nez p2, :cond_3

    .line 600
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/sdk/he;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    .line 603
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/flurry/sdk/fo;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 604
    if-eqz p2, :cond_4

    .line 8675
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->onViewClose()V

    .line 608
    :cond_4
    sget-object v0, Lcom/flurry/sdk/bc;->ae:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    move v0, v6

    .line 610
    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/flurry/sdk/mc;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 612
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/flurry/sdk/fo;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 613
    if-eqz v6, :cond_b

    .line 615
    if-nez p2, :cond_6

    .line 616
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/sdk/he;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    .line 618
    :cond_6
    if-eqz p2, :cond_7

    .line 9675
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->onViewClose()V

    .line 623
    :cond_7
    sget-object v0, Lcom/flurry/sdk/bc;->ae:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    move v0, v6

    .line 624
    goto :goto_1

    .line 627
    :cond_8
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/flurry/sdk/fo;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 628
    if-eqz v6, :cond_b

    .line 630
    if-nez p2, :cond_9

    .line 631
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/sdk/he;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    .line 633
    :cond_9
    if-eqz p2, :cond_a

    .line 10675
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->onViewClose()V

    .line 637
    :cond_a
    sget-object v0, Lcom/flurry/sdk/bc;->ae:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    :cond_b
    move v0, v6

    goto/16 :goto_1
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 504
    const/4 v0, 0x0

    .line 505
    iget-object v1, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 506
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 508
    :cond_0
    return-object v0
.end method

.method public final initLayout()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/flurry/sdk/gz;->initLayout()V

    .line 76
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/he;->setOrientation(I)V

    .line 77
    return-void
.end method

.method public final onActivityDestroy()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 243
    invoke-super {p0}, Lcom/flurry/sdk/gz;->onActivityDestroy()V

    .line 6536
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 6537
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->dismissProgressDialog()V

    .line 6539
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/he;->removeView(Landroid/view/View;)V

    .line 6540
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 6541
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 6542
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 6544
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 6545
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    .line 245
    :cond_1
    return-void
.end method

.method public final onActivityPause()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 232
    invoke-super {p0}, Lcom/flurry/sdk/gz;->onActivityPause()V

    .line 233
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 238
    :cond_0
    return-void
.end method

.method public final onActivityResume()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 221
    invoke-super {p0}, Lcom/flurry/sdk/gz;->onActivityResume()V

    .line 222
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 227
    :cond_0
    return-void
.end method

.method public final onBackKey()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 81
    .line 1521
    iget-boolean v0, p0, Lcom/flurry/sdk/he;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 81
    :goto_0
    if-eqz v0, :cond_4

    .line 1525
    iget-boolean v0, p0, Lcom/flurry/sdk/he;->k:Z

    if-eqz v0, :cond_3

    .line 1526
    iget-object v0, p0, Lcom/flurry/sdk/he;->j:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 86
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->a()V

    .line 87
    return v1

    .line 1521
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1528
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 1529
    iget-object v0, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_1

    .line 84
    :cond_4
    sget-object v0, Lcom/flurry/sdk/he$c;->b:Lcom/flurry/sdk/he$c;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/he;->a(Lcom/flurry/sdk/he$c;)V

    goto :goto_1
.end method

.method protected final onViewLoadTimeout()V
    .locals 6

    .prologue
    .line 92
    sget-object v0, Lcom/flurry/sdk/bc;->u:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    .line 94
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v0

    instance-of v0, v0, Lcom/flurry/sdk/t;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/flurry/sdk/he;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 3078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 3360
    iget-object v0, v0, Lcom/flurry/sdk/ay;->j:Ljava/util/HashMap;

    .line 96
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 99
    iget-wide v4, p0, Lcom/flurry/sdk/he;->g:J

    sub-long/2addr v2, v4

    .line 100
    sget-object v1, Lcom/flurry/sdk/mj$b;->d:Lcom/flurry/sdk/mj$b;

    iget-object v1, v1, Lcom/flurry/sdk/mj$b;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/flurry/sdk/he;->h:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lcom/flurry/sdk/mj$b;->b:Lcom/flurry/sdk/mj$b;

    iget-object v1, v1, Lcom/flurry/sdk/mj$b;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/mh;->b()Lcom/flurry/sdk/mh;

    move-result-object v0

    .line 4070
    iget-object v0, v0, Lcom/flurry/sdk/mh;->a:Lcom/flurry/sdk/mj;

    .line 104
    if-eqz v0, :cond_1

    .line 105
    invoke-static {}, Lcom/flurry/sdk/mh;->b()Lcom/flurry/sdk/mh;

    move-result-object v0

    .line 5070
    iget-object v0, v0, Lcom/flurry/sdk/mh;->a:Lcom/flurry/sdk/mj;

    .line 105
    sget v0, Lcom/flurry/sdk/mh;->l:I

    .line 106
    invoke-static {}, Lcom/flurry/sdk/mh;->b()Lcom/flurry/sdk/mh;

    move-result-object v0

    .line 6070
    iget-object v0, v0, Lcom/flurry/sdk/mh;->a:Lcom/flurry/sdk/mj;

    .line 106
    sget v0, Lcom/flurry/sdk/mh;->m:I

    .line 109
    :cond_1
    return-void
.end method
