.class Lcom/mdotm/android/view/MdotMInterstitialImageView;
.super Landroid/widget/RelativeLayout;
.source "MdotMInterstitialImageView.java"


# static fields
.field private static final HIGHLIGHT_BACKGROUND_COLOR:I = -0x1180d9

.field private static final HIGHLIGHT_COLOR:I = -0x4c00


# instance fields
.field private activityIndicator:Landroid/widget/ProgressBar;

.field private adLandingUrl:Ljava/lang/String;

.field public adLoadSuccess:Z

.field private adSelectedBackground:Landroid/graphics/drawable/Drawable;

.field private adSelectionInProgress:Z

.field private backgroundColor:I

.field private defaultBackground:Landroid/graphics/drawable/Drawable;

.field handler:Landroid/os/Handler;

.field imagrBitmap:Landroid/graphics/Bitmap;

.field private isAdClicked:Z

.field private launchType:I

.field private mAdClickListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->backgroundColor:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->webView:Landroid/webkit/WebView;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->isAdClicked:Z

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;)V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->backgroundColor:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->webView:Landroid/webkit/WebView;

    .line 61
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->isAdClicked:Z

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->handler:Landroid/os/Handler;

    .line 105
    invoke-virtual {p2}, Lcom/mdotm/android/model/MdotMAdResponse;->getLaunchType()I

    move-result v0

    iput v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->launchType:I

    .line 106
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->webView:Landroid/webkit/WebView;

    .line 107
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mdotm/android/view/MdotMInterstitialImageView$1;

    invoke-direct {v1, p0}, Lcom/mdotm/android/view/MdotMInterstitialImageView$1;-><init>(Lcom/mdotm/android/view/MdotMInterstitialImageView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 190
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 193
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 194
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iput-object p3, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->mAdClickListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    .line 196
    invoke-virtual {p0, v3}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->setFocusable(Z)V

    .line 198
    invoke-virtual {p0, v3}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->setClickable(Z)V

    .line 199
    new-instance v0, Lcom/mdotm/android/view/MdotMInterstitialImageView$2;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/MdotMInterstitialImageView$2;-><init>(Lcom/mdotm/android/view/MdotMInterstitialImageView;)V

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-direct {p0, v2}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->setAdSelectionInProgress(Z)V

    .line 214
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->initializeAdView(Lcom/mdotm/android/model/MdotMAdResponse;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    const-string v0, "Exception initializing interstitial adview"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->adLoadSuccess:Z

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/MdotMInterstitialImageView;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mdotm/android/view/MdotMInterstitialImageView;)V
    .locals 0

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->adNetworkCompleted()V

    return-void
.end method

.method static synthetic access$10(Lcom/mdotm/android/view/MdotMInterstitialImageView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mdotm/android/view/MdotMInterstitialImageView;)Z
    .locals 1

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->isAdSelectionInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/mdotm/android/view/MdotMInterstitialImageView;)Lcom/mdotm/android/listener/MdotMAdActionListener;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->mAdClickListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/mdotm/android/view/MdotMInterstitialImageView;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->isAdClicked:Z

    return v0
.end method

.method static synthetic access$5(Lcom/mdotm/android/view/MdotMInterstitialImageView;Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->isAdClicked:Z

    return-void
.end method

.method static synthetic access$6(Lcom/mdotm/android/view/MdotMInterstitialImageView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->clicked(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$7(Lcom/mdotm/android/view/MdotMInterstitialImageView;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 423
    invoke-direct {p0, p1, p2}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->fetchImage(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/mdotm/android/view/MdotMInterstitialImageView;)I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/mdotm/android/view/MdotMInterstitialImageView;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->launchType:I

    return v0
.end method

.method private adNetworkCompleted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 592
    const-string v0, "On ad network completed"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->setClickable(Z)V

    .line 594
    invoke-direct {p0, v1}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->setAdSelectionInProgress(Z)V

    .line 595
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->isAdClicked:Z

    .line 596
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->hideActivityIndicator()V

    .line 597
    return-void
.end method

.method private clicked(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 531
    const-string v0, "  Selected to clicked  "

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->adLandingUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 534
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->isAdSelectionInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->adLandingUrl:Ljava/lang/String;

    .line 536
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->setAdSelectionInProgress(Z)V

    .line 537
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->showActivityIndicator()V

    .line 538
    new-instance v1, Lcom/mdotm/android/view/MdotMInterstitialImageView$4;

    invoke-direct {v1, p0, v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView$4;-><init>(Lcom/mdotm/android/view/MdotMInterstitialImageView;Ljava/lang/String;)V

    .line 581
    invoke-virtual {v1}, Lcom/mdotm/android/view/MdotMInterstitialImageView$4;->start()V

    .line 588
    :goto_0
    return-void

    .line 583
    :cond_0
    const-string v0, "ad selection under progress"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :cond_1
    const-string v0, "selected ad is null"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createAdWithBannerView(Landroid/graphics/Bitmap;Lcom/mdotm/android/model/MdotMAdResponse;)V
    .locals 6

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0x32

    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 381
    if-eqz p1, :cond_0

    .line 382
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 383
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 384
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 389
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 392
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 394
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 396
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->addView(Landroid/view/View;)V

    .line 397
    iput-boolean v3, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->adLoadSuccess:Z

    .line 414
    :goto_0
    return-void

    .line 399
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 401
    const-string v1, "Oops! error while downloading Image. Click here to view detail."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 405
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 406
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 408
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    .line 409
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 411
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->addView(Landroid/view/View;)V

    .line 412
    iput-boolean v3, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->adLoadSuccess:Z

    goto :goto_0
.end method

.method private drawBackgroundView(Z)V
    .locals 2

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " drawBackgroundView   :: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->adSelectedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 343
    const v0, -0x1180d9

    const/16 v1, -0x4c00

    .line 342
    invoke-static {v0, v1}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->populateDrawablwBackGround(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->adSelectedBackground:Landroid/graphics/drawable/Drawable;

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->defaultBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 349
    const/high16 v0, -0x1000000

    .line 350
    iget v1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->backgroundColor:I

    .line 349
    invoke-static {v0, v1}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->populateDrawablwBackGround(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->defaultBackground:Landroid/graphics/drawable/Drawable;

    .line 352
    :cond_1
    if-eqz p1, :cond_2

    .line 353
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->defaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->adSelectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private fetchImage(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 425
    .line 426
    if-eqz p1, :cond_2

    .line 428
    const/16 v2, 0x7530

    .line 429
    const/16 v3, 0x2710

    .line 433
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 444
    :goto_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 445
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 446
    const/4 v2, 0x0

    .line 448
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    .line 453
    :goto_2
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_1

    .line 457
    :cond_0
    :try_start_3
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 458
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 457
    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v2

    .line 463
    :goto_3
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 469
    :cond_1
    :goto_4
    return-object v1

    .line 434
    :catch_0
    move-exception v0

    .line 436
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 440
    :catch_1
    move-exception v0

    .line 442
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 449
    :catch_2
    move-exception v3

    .line 451
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 459
    :catch_3
    move-exception v0

    .line 461
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 467
    :cond_2
    const-string v0, "Image url is null"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private getPixels(I)I
    .locals 2

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 629
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 630
    return v0
.end method

.method private hideActivityIndicator()V
    .locals 1

    .prologue
    .line 615
    new-instance v0, Lcom/mdotm/android/view/MdotMInterstitialImageView$6;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/MdotMInterstitialImageView$6;-><init>(Lcom/mdotm/android/view/MdotMInterstitialImageView;)V

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->post(Ljava/lang/Runnable;)Z

    .line 625
    return-void
.end method

.method private initializeAdView(Lcom/mdotm/android/model/MdotMAdResponse;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1e

    const/16 v2, 0x19

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 225
    if-eqz p1, :cond_4

    .line 226
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    .line 227
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 228
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->getPixels(I)I

    move-result v1

    .line 229
    invoke-direct {p0, v2}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->getPixels(I)I

    move-result v2

    .line 228
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 230
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setMinimumHeight(I)V

    .line 233
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setMinimumWidth(I)V

    .line 234
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 235
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setId(I)V

    .line 238
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 242
    :cond_0
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getLandingUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->adLandingUrl:Ljava/lang/String;

    .line 245
    invoke-virtual {p0, v3}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->setFocusable(Z)V

    .line 246
    invoke-virtual {p0, v3}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->setClickable(Z)V

    .line 249
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->isCachedLocally()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 251
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->imagrBitmap:Landroid/graphics/Bitmap;

    .line 264
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Image is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->imagrBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->imagrBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->displayImageView(Lcom/mdotm/android/model/MdotMAdResponse;Landroid/graphics/Bitmap;)V

    .line 296
    :goto_1
    invoke-direct {p0, v3}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->drawBackgroundView(Z)V

    .line 299
    invoke-static {p0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->access$8(Lcom/mdotm/android/view/MdotMInterstitialImageView;)I

    move-result v0

    .line 300
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->setVisibility(I)V

    .line 307
    :goto_2
    return-void

    .line 258
    :cond_1
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->fetchImage(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->imagrBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 272
    :cond_2
    const-string v0, "Unable to create bitmap from cached file. Trying to download from remote"

    .line 271
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iput-boolean v3, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->adLoadSuccess:Z

    .line 274
    new-instance v0, Lcom/mdotm/android/view/MdotMInterstitialImageView$3;

    invoke-direct {v0, p0, p1}, Lcom/mdotm/android/view/MdotMInterstitialImageView$3;-><init>(Lcom/mdotm/android/view/MdotMInterstitialImageView;Lcom/mdotm/android/model/MdotMAdResponse;)V

    .line 290
    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView$3;->start()V

    .line 291
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->addView(Landroid/view/View;)V

    .line 294
    :cond_3
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->showActivityIndicator()V

    goto :goto_1

    .line 303
    :cond_4
    iput-boolean v4, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->adLoadSuccess:Z

    goto :goto_2
.end method

.method private isAdSelectionInProgress()Z
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->adSelectionInProgress:Z

    return v0
.end method

.method private static populateDrawablwBackGround(II)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 363
    const-string v0, ""

    const-string v1, "populate backgnd called"

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 365
    const-string v1, ""

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rect width and height "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-static {v1, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 368
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 367
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 369
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 371
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 372
    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 374
    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 376
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private setAdSelectionInProgress(Z)V
    .locals 0

    .prologue
    .line 474
    iput-boolean p1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->adSelectionInProgress:Z

    .line 475
    return-void
.end method

.method private showActivityIndicator()V
    .locals 1

    .prologue
    .line 601
    new-instance v0, Lcom/mdotm/android/view/MdotMInterstitialImageView$5;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/MdotMInterstitialImageView$5;-><init>(Lcom/mdotm/android/view/MdotMInterstitialImageView;)V

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->post(Ljava/lang/Runnable;)Z

    .line 611
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 485
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 486
    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->isAdClicked:Z

    if-nez v1, :cond_0

    .line 487
    if-ne v0, v2, :cond_0

    .line 488
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->isAdClicked:Z

    .line 489
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->clicked(Landroid/content/Context;)V

    .line 492
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public displayImageView(Lcom/mdotm/android/model/MdotMAdResponse;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getAdType()I

    move-result v0

    sget v1, Lcom/mdotm/android/utils/MdotMUtils;->AD_WITH_BANNER_OR_XHTML_OR_VIDEO:I

    if-ne v0, v1, :cond_1

    .line 313
    invoke-direct {p0, p2, p1}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->createAdWithBannerView(Landroid/graphics/Bitmap;Lcom/mdotm/android/model/MdotMAdResponse;)V

    .line 314
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->removeView(Landroid/view/View;)V

    .line 317
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->addView(Landroid/view/View;)V

    .line 318
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->hideActivityIndicator()V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->adLoadSuccess:Z

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Woooo!! unable to display ad, We got unsupported ad type for interstitial. AdType : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdResponse;->getAdType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
