.class Lcom/smaato/soma/bannerutilities/g$b;
.super Lcom/smaato/soma/bannerutilities/g$a;
.source "VideoChrome.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/bannerutilities/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Lcom/smaato/soma/bannerutilities/g;

.field private d:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private e:Landroid/widget/VideoView;

.field private f:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/g;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 314
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/g$b;->c:Lcom/smaato/soma/bannerutilities/g;

    invoke-direct {p0, p1}, Lcom/smaato/soma/bannerutilities/g$a;-><init>(Lcom/smaato/soma/bannerutilities/g;)V

    .line 324
    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b;->d:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 328
    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b;->e:Landroid/widget/VideoView;

    .line 332
    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b;->f:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/bannerutilities/g$b;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/g$b;->d:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method private a(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToFindRootLayout;
        }
    .end annotation

    .prologue
    .line 342
    :try_start_0
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$b$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/g$b$1;-><init>(Lcom/smaato/soma/bannerutilities/g$b;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 344
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 345
    check-cast v0, Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    throw v0

    .line 348
    :catch_1
    move-exception v0

    .line 349
    new-instance v1, Lcom/smaato/soma/exception/UnableToFindRootLayout;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToFindRootLayout;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/smaato/soma/bannerutilities/g$b;Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToFindRootLayout;
        }
    .end annotation

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/smaato/soma/bannerutilities/g$b;->a(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/smaato/soma/bannerutilities/g$b;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/g$b;->f:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/smaato/soma/bannerutilities/g$b;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b;->e:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic a(Lcom/smaato/soma/bannerutilities/g$b;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/g$b;->e:Landroid/widget/VideoView;

    return-object p1
.end method

.method static synthetic a(Lcom/smaato/soma/bannerutilities/g$b;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/smaato/soma/bannerutilities/g$b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 665
    const-string v0, "play.google.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "market://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "details?"

    .line 666
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/smaato/soma/bannerutilities/b;->a()Lcom/smaato/soma/bannerutilities/b;

    move-result-object v0

    .line 667
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 665
    :goto_0
    return v0

    .line 667
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToGetVideoView;
        }
    .end annotation

    .prologue
    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b;->c:Lcom/smaato/soma/bannerutilities/g;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/g;->a:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    throw v0

    .line 441
    :catch_1
    move-exception v0

    .line 442
    new-instance v1, Lcom/smaato/soma/exception/UnableToGetVideoView;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToGetVideoView;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic b(Lcom/smaato/soma/bannerutilities/g$b;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToGetVideoView;
        }
    .end annotation

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/smaato/soma/bannerutilities/g$b;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/smaato/soma/bannerutilities/g$b;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/smaato/soma/bannerutilities/g$b;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 676
    const-string v0, "tel:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mailto:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "maps:"

    .line 677
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sms:"

    .line 678
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 676
    :goto_0
    return v0

    .line 678
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/smaato/soma/bannerutilities/g$b;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 683
    :try_start_0
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    :goto_0
    return v0

    .line 686
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 688
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/smaato/soma/bannerutilities/g$b;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b;->d:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 694
    .line 697
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 699
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/smaato/soma/bannerutilities/g$b;->c:Lcom/smaato/soma/bannerutilities/g;

    invoke-static {v2}, Lcom/smaato/soma/bannerutilities/g;->a(Lcom/smaato/soma/bannerutilities/g;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 700
    iget-object v2, p0, Lcom/smaato/soma/bannerutilities/g$b;->c:Lcom/smaato/soma/bannerutilities/g;

    invoke-static {v2}, Lcom/smaato/soma/bannerutilities/g;->a(Lcom/smaato/soma/bannerutilities/g;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 718
    :goto_0
    return v0

    .line 702
    :cond_0
    const-string v2, "browser_fallback_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 703
    iget-object v2, p0, Lcom/smaato/soma/bannerutilities/g$b;->c:Lcom/smaato/soma/bannerutilities/g;

    invoke-static {v2}, Lcom/smaato/soma/bannerutilities/g;->a(Lcom/smaato/soma/bannerutilities/g;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "browser_fallback_url"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 710
    :catch_0
    move-exception v1

    .line 713
    :try_start_1
    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$b;->c:Lcom/smaato/soma/bannerutilities/g;

    invoke-static {v1}, Lcom/smaato/soma/bannerutilities/g;->a(Lcom/smaato/soma/bannerutilities/g;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 715
    :catch_1
    move-exception v0

    .line 718
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 705
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 706
    iget-object v2, p0, Lcom/smaato/soma/bannerutilities/g$b;->c:Lcom/smaato/soma/bannerutilities/g;

    invoke-static {v2}, Lcom/smaato/soma/bannerutilities/g;->a(Lcom/smaato/soma/bannerutilities/g;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 537
    if-eqz p1, :cond_3

    .line 540
    :try_start_0
    check-cast p1, Lcom/smaato/soma/internal/e/a;

    invoke-virtual {p1}, Lcom/smaato/soma/internal/e/a;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v3

    .line 544
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-lez v0, :cond_5

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 548
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 549
    invoke-virtual {v3, v2}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v4

    .line 550
    invoke-virtual {v3, v2}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 553
    if-eqz v4, :cond_0

    .line 554
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_0
    if-eqz v5, :cond_1

    .line 560
    if-nez v4, :cond_2

    .line 561
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 562
    :cond_2
    if-eqz v4, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 563
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 574
    :catch_0
    move-exception v0

    :cond_3
    move-object v0, v1

    .line 577
    :cond_4
    :goto_2
    return-object v0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/ClosingVideoChromeFailedException;
        }
    .end annotation

    .prologue
    .line 359
    :try_start_0
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$b$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/g$b$2;-><init>(Lcom/smaato/soma/bannerutilities/g$b;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 360
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b;->e:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 361
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "VideoChromeClient"

    const-string v2, "closeVideo"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 365
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 366
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$b;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 367
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b;->d:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b;->e:Landroid/widget/VideoView;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 375
    :cond_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    throw v0

    .line 372
    :catch_1
    move-exception v0

    .line 373
    new-instance v1, Lcom/smaato/soma/exception/ClosingVideoChromeFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/ClosingVideoChromeFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/String;Landroid/webkit/WebView;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/GooglePlayUrlParsingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 589
    :try_start_0
    new-instance v2, Lcom/smaato/soma/bannerutilities/g$b$8;

    invoke-direct {v2, p0}, Lcom/smaato/soma/bannerutilities/g$b$8;-><init>(Lcom/smaato/soma/bannerutilities/g$b;)V

    invoke-static {v2}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 590
    if-nez p1, :cond_1

    .line 650
    :cond_0
    :goto_0
    return v0

    .line 593
    :cond_1
    invoke-direct {p0, p1}, Lcom/smaato/soma/bannerutilities/g$b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 594
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "market://details?"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 595
    const-string v2, "details\\?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 596
    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 597
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 598
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 599
    iget-object v2, p0, Lcom/smaato/soma/bannerutilities/g$b;->c:Lcom/smaato/soma/bannerutilities/g;

    invoke-static {v2}, Lcom/smaato/soma/bannerutilities/g;->a(Lcom/smaato/soma/bannerutilities/g;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 600
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b;->c:Lcom/smaato/soma/bannerutilities/g;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/g;->a:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->n()V

    move v0, v1

    .line 601
    goto :goto_0

    .line 602
    :cond_2
    invoke-direct {p0, p1}, Lcom/smaato/soma/bannerutilities/g$b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 603
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 604
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 605
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 606
    iget-object v2, p0, Lcom/smaato/soma/bannerutilities/g$b;->c:Lcom/smaato/soma/bannerutilities/g;

    invoke-static {v2}, Lcom/smaato/soma/bannerutilities/g;->a(Lcom/smaato/soma/bannerutilities/g;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 607
    goto :goto_0

    .line 608
    :cond_3
    if-eqz p1, :cond_4

    const-string v2, "intent:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 609
    invoke-direct {p0, p1}, Lcom/smaato/soma/bannerutilities/g$b;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b;->c:Lcom/smaato/soma/bannerutilities/g;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/g;->a:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->n()V

    move v0, v1

    .line 611
    goto/16 :goto_0

    .line 614
    :cond_4
    invoke-direct {p0, p1}, Lcom/smaato/soma/bannerutilities/g$b;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    :try_start_1
    invoke-static {}, Lcom/smaato/soma/bannerutilities/b;->a()Lcom/smaato/soma/bannerutilities/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smaato/soma/bannerutilities/b;->b()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "about:blank"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v0, v1

    .line 617
    goto/16 :goto_0

    .line 620
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 622
    invoke-static {}, Lcom/smaato/soma/bannerutilities/b;->a()Lcom/smaato/soma/bannerutilities/b;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smaato/soma/bannerutilities/b;->a(Z)V

    .line 624
    iget-object v3, p0, Lcom/smaato/soma/bannerutilities/g$b;->c:Lcom/smaato/soma/bannerutilities/g;

    invoke-static {v3}, Lcom/smaato/soma/bannerutilities/g;->a(Lcom/smaato/soma/bannerutilities/g;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 625
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 626
    iget-object v3, p0, Lcom/smaato/soma/bannerutilities/g$b;->c:Lcom/smaato/soma/bannerutilities/g;

    invoke-static {v3}, Lcom/smaato/soma/bannerutilities/g;->a(Lcom/smaato/soma/bannerutilities/g;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 627
    iget-object v2, p0, Lcom/smaato/soma/bannerutilities/g$b;->c:Lcom/smaato/soma/bannerutilities/g;

    iget-object v2, v2, Lcom/smaato/soma/bannerutilities/g;->a:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v2}, Lcom/smaato/soma/bannerutilities/a;->n()V

    move v0, v1

    .line 628
    goto/16 :goto_0

    .line 632
    :cond_7
    const/4 v1, 0x0

    .line 633
    invoke-virtual {p2}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    .line 634
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v3

    if-lez v3, :cond_8

    .line 635
    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    .line 638
    :cond_8
    if-eqz v1, :cond_9

    .line 639
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 640
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 641
    iget-object v2, p0, Lcom/smaato/soma/bannerutilities/g$b;->c:Lcom/smaato/soma/bannerutilities/g;

    invoke-static {v2}, Lcom/smaato/soma/bannerutilities/g;->a(Lcom/smaato/soma/bannerutilities/g;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 644
    :cond_9
    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$b;->c:Lcom/smaato/soma/bannerutilities/g;

    iget-object v1, v1, Lcom/smaato/soma/bannerutilities/g;->a:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v1}, Lcom/smaato/soma/bannerutilities/a;->n()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 648
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 651
    :catch_1
    move-exception v0

    .line 652
    throw v0

    .line 653
    :catch_2
    move-exception v0

    .line 654
    new-instance v1, Lcom/smaato/soma/exception/GooglePlayUrlParsingException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/GooglePlayUrlParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 489
    invoke-super {p0, p1}, Lcom/smaato/soma/bannerutilities/g$a;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 490
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 450
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$b$5;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/g$b$5;-><init>(Lcom/smaato/soma/bannerutilities/g$b;)V

    .line 456
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/g$b$5;->c()Ljava/lang/Object;

    .line 457
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 465
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$b$6;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/g$b$6;-><init>(Lcom/smaato/soma/bannerutilities/g$b;)V

    .line 472
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/g$b$6;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 465
    return v0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 5

    .prologue
    .line 480
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "Javascript"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSAlert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->INFO:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 484
    invoke-super {p0, p1, p2, p3, p4}, Lcom/smaato/soma/bannerutilities/g$a;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .prologue
    .line 503
    invoke-super {p0, p1, p2}, Lcom/smaato/soma/bannerutilities/g$a;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 504
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$b$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/smaato/soma/bannerutilities/g$b$7;-><init>(Lcom/smaato/soma/bannerutilities/g$b;Landroid/webkit/WebView;I)V

    .line 529
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/g$b$7;->c()Ljava/lang/Object;

    .line 530
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b;->a:Lcom/smaato/soma/bannerutilities/h;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b;->a:Lcom/smaato/soma/bannerutilities/h;

    invoke-interface {v0, p2}, Lcom/smaato/soma/bannerutilities/h;->a(Ljava/lang/String;)V

    .line 498
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .prologue
    .line 380
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$b$3;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/g$b$3;-><init>(Lcom/smaato/soma/bannerutilities/g$b;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 382
    invoke-super {p0, p1, p2}, Lcom/smaato/soma/bannerutilities/g$a;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 383
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$b$4;

    invoke-direct {v0, p0, p2, p1, p0}, Lcom/smaato/soma/bannerutilities/g$b$4;-><init>(Lcom/smaato/soma/bannerutilities/g$b;Landroid/webkit/WebChromeClient$CustomViewCallback;Landroid/view/View;Lcom/smaato/soma/bannerutilities/g$b;)V

    .line 429
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/g$b$4;->c()Ljava/lang/Object;

    .line 430
    return-void
.end method
