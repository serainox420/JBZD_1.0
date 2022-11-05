.class public Lcom/smaato/soma/internal/connector/OrmmaBridge;
.super Ljava/lang/Object;
.source "OrmmaBridge.java"


# static fields
.field public static final MRAID_VERSION:I = 0x2


# instance fields
.field public final TAG:Ljava/lang/String;

.field a:Lorg/json/JSONObject;

.field private b:Lcom/smaato/soma/bannerutilities/a;

.field private c:Landroid/os/Handler;

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/smaato/soma/bannerutilities/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "SOMA_Bridge"

    iput-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->TAG:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->b:Lcom/smaato/soma/bannerutilities/a;

    .line 67
    iput-object v1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->c:Landroid/os/Handler;

    .line 76
    iput-object v1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->d:Landroid/content/Context;

    .line 77
    iput-boolean v2, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->e:Z

    .line 83
    iput-object v1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->a:Lorg/json/JSONObject;

    .line 91
    iput-object p1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->c:Landroid/os/Handler;

    .line 92
    iput-object p2, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->d:Landroid/content/Context;

    .line 93
    iput-object p3, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->b:Lcom/smaato/soma/bannerutilities/a;

    .line 94
    iput-boolean v2, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->e:Z

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/internal/connector/OrmmaBridge;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/smaato/soma/internal/connector/OrmmaBridge;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/smaato/soma/internal/connector/OrmmaBridge;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->e:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 362
    :try_start_0
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v0

    .line 366
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 367
    invoke-virtual {p0}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 369
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/smaato/soma/internal/connector/OrmmaBridge;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->b:Lcom/smaato/soma/bannerutilities/a;

    return-object v0
.end method

.method static synthetic c(Lcom/smaato/soma/internal/connector/OrmmaBridge;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/smaato/soma/internal/connector/OrmmaBridge;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->e:Z

    return v0
.end method


# virtual methods
.method public activate(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 122
    return-void
.end method

.method public close()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lcom/smaato/soma/internal/connector/OrmmaBridge$8;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$8;-><init>(Lcom/smaato/soma/internal/connector/OrmmaBridge;)V

    .line 149
    invoke-virtual {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$8;->c()Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 610
    const-string v0, "create calendar event"

    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->isUserClicked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    sget-object v0, Lcom/smaato/soma/measurements/FraudesType;->AUTO_OPEN:Lcom/smaato/soma/measurements/FraudesType;

    invoke-virtual {p0, v0, p1}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->reportViolation(Lcom/smaato/soma/measurements/FraudesType;Ljava/lang/String;)Z

    .line 623
    :goto_0
    return-void

    .line 614
    :cond_0
    new-instance v0, Lcom/smaato/soma/internal/connector/OrmmaBridge$4;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/internal/connector/OrmmaBridge$4;-><init>(Lcom/smaato/soma/internal/connector/OrmmaBridge;Ljava/lang/String;)V

    .line 622
    invoke-virtual {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$4;->c()Ljava/lang/Object;

    goto :goto_0
.end method

.method public deactivate(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 131
    return-void
.end method

.method public expand(IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 232
    new-instance v0, Lcom/smaato/soma/internal/connector/OrmmaBridge$11;

    move-object v1, p0

    move-object v2, p5

    move v3, p4

    move v4, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/smaato/soma/internal/connector/OrmmaBridge$11;-><init>(Lcom/smaato/soma/internal/connector/OrmmaBridge;Ljava/lang/String;IILjava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$11;->c()Ljava/lang/Object;

    .line 253
    return-void
.end method

.method public foundORMMAAd()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 454
    new-instance v0, Lcom/smaato/soma/internal/connector/OrmmaBridge$15;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$15;-><init>(Lcom/smaato/soma/internal/connector/OrmmaBridge;)V

    .line 465
    invoke-virtual {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$15;->c()Ljava/lang/Object;

    .line 466
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->d:Landroid/content/Context;

    return-object v0
.end method

.method public getURLTraces(Landroid/webkit/WebView;)Ljava/util/List;
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

    .line 697
    if-eqz p1, :cond_3

    .line 700
    :try_start_0
    check-cast p1, Lcom/smaato/soma/internal/e/a;

    invoke-virtual {p1}, Lcom/smaato/soma/internal/e/a;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v3

    .line 704
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-lez v0, :cond_5

    .line 706
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 708
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 709
    invoke-virtual {v3, v2}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v4

    .line 710
    invoke-virtual {v3, v2}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 713
    if-eqz v4, :cond_0

    .line 714
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_0
    if-eqz v5, :cond_1

    .line 720
    if-nez v4, :cond_2

    .line 721
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 722
    :cond_2
    if-eqz v4, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 723
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 734
    :catch_0
    move-exception v0

    :cond_3
    move-object v0, v1

    .line 737
    :cond_4
    :goto_2
    return-object v0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->f:Landroid/webkit/WebView;

    return-object v0
.end method

.method public hide()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 261
    return-void
.end method

.method public isUserClicked(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 663
    new-instance v0, Lcom/smaato/soma/internal/connector/OrmmaBridge$6;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/internal/connector/OrmmaBridge$6;-><init>(Lcom/smaato/soma/internal/connector/OrmmaBridge;Ljava/lang/String;)V

    .line 676
    invoke-virtual {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$6;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 663
    return v0
.end method

.method public legacyExpand()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lcom/smaato/soma/internal/connector/OrmmaBridge$10;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$10;-><init>(Lcom/smaato/soma/internal/connector/OrmmaBridge;)V

    .line 213
    invoke-virtual {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$10;->c()Ljava/lang/Object;

    .line 214
    return-void
.end method

.method public legacyExpand(IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 169
    new-instance v0, Lcom/smaato/soma/internal/connector/OrmmaBridge$9;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$9;-><init>(Lcom/smaato/soma/internal/connector/OrmmaBridge;)V

    .line 193
    invoke-virtual {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$9;->c()Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lcom/smaato/soma/internal/connector/OrmmaBridge$12;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/internal/connector/OrmmaBridge$12;-><init>(Lcom/smaato/soma/internal/connector/OrmmaBridge;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$12;->c()Ljava/lang/Object;

    .line 276
    return-void
.end method

.method public open(Ljava/lang/String;ZZZ)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 291
    new-instance v0, Lcom/smaato/soma/internal/connector/OrmmaBridge$13;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/internal/connector/OrmmaBridge$13;-><init>(Lcom/smaato/soma/internal/connector/OrmmaBridge;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$13;->c()Ljava/lang/Object;

    .line 298
    return-void
.end method

.method public openMap(Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 381
    return-void
.end method

.method public playAudio(Ljava/lang/String;ZZZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 402
    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 631
    const-string v0, "play video"

    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->isUserClicked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    sget-object v0, Lcom/smaato/soma/measurements/FraudesType;->AUTO_PLAY:Lcom/smaato/soma/measurements/FraudesType;

    invoke-virtual {p0, v0, p1}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->reportViolation(Lcom/smaato/soma/measurements/FraudesType;Ljava/lang/String;)Z

    .line 652
    :goto_0
    return-void

    .line 635
    :cond_0
    new-instance v0, Lcom/smaato/soma/internal/connector/OrmmaBridge$5;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/internal/connector/OrmmaBridge$5;-><init>(Lcom/smaato/soma/internal/connector/OrmmaBridge;Ljava/lang/String;)V

    .line 651
    invoke-virtual {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$5;->c()Ljava/lang/Object;

    goto :goto_0
.end method

.method public playVideo(Ljava/lang/String;ZZZZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 425
    return-void
.end method

.method protected redirectPage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/PageRedirectionFailed;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v0, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;-><init>(Lcom/smaato/soma/internal/connector/OrmmaBridge;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$14;->c()Ljava/lang/Object;

    .line 358
    return-void
.end method

.method public reportViolation(Lcom/smaato/soma/measurements/FraudesType;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 680
    new-instance v0, Lcom/smaato/soma/internal/connector/OrmmaBridge$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/smaato/soma/internal/connector/OrmmaBridge$7;-><init>(Lcom/smaato/soma/internal/connector/OrmmaBridge;Lcom/smaato/soma/measurements/FraudesType;Ljava/lang/String;)V

    .line 688
    invoke-virtual {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$7;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 680
    return v0
.end method

.method public resize()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 509
    new-instance v0, Lcom/smaato/soma/internal/connector/OrmmaBridge$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$2;-><init>(Lcom/smaato/soma/internal/connector/OrmmaBridge;)V

    .line 532
    invoke-virtual {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$2;->c()Ljava/lang/Object;

    .line 533
    return-void
.end method

.method public resize(II)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 435
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA_Bridge"

    const-string v2, "resize ORMMA"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 439
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 659
    iput-object p1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->d:Landroid/content/Context;

    .line 660
    return-void
.end method

.method public setResizeProperties(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 491
    :try_start_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA_Bridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setResizeProperties="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->INFO:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 495
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->a:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    new-instance v1, Lcom/smaato/soma/debug/b;

    const-string v2, "SOMA_Bridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setResizeProperties "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 498
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->INFO:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v1, v2, v0, v5, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    .line 497
    invoke-static {v1}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/smaato/soma/internal/connector/OrmmaBridge;->f:Landroid/webkit/WebView;

    .line 482
    return-void
.end method

.method public show()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 447
    return-void
.end method

.method public showAlert(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/smaato/soma/internal/connector/OrmmaBridge$1;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/internal/connector/OrmmaBridge$1;-><init>(Lcom/smaato/soma/internal/connector/OrmmaBridge;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$1;->c()Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public storePicture(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 542
    const-string v0, "store picture"

    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->isUserClicked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    sget-object v0, Lcom/smaato/soma/measurements/FraudesType;->AUTO_DOWNLOAD:Lcom/smaato/soma/measurements/FraudesType;

    invoke-virtual {p0, v0, p1}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->reportViolation(Lcom/smaato/soma/measurements/FraudesType;Ljava/lang/String;)Z

    .line 602
    :goto_0
    return-void

    .line 546
    :cond_0
    new-instance v0, Lcom/smaato/soma/internal/connector/OrmmaBridge$3;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/internal/connector/OrmmaBridge$3;-><init>(Lcom/smaato/soma/internal/connector/OrmmaBridge;Ljava/lang/String;)V

    .line 601
    invoke-virtual {v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge$3;->c()Ljava/lang/Object;

    goto :goto_0
.end method
