.class public Lcom/facebook/ads/internal/view/a/d;
.super Lcom/facebook/ads/internal/view/b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/a/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/facebook/ads/internal/view/a/d$a;

.field private d:Lcom/facebook/ads/internal/util/m;

.field private e:J

.field private f:J

.field private g:J

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/view/a/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/internal/view/a/d;->b:Ljava/util/Set;

    sget-object v0, Lcom/facebook/ads/internal/view/a/d;->b:Ljava/util/Set;

    const-string v1, "http"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/ads/internal/view/a/d;->b:Ljava/util/Set;

    const-string v1, "https"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/b;-><init>(Landroid/content/Context;)V

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/a/d;->e:J

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/a/d;->f:J

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/a/d;->g:J

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/a/d;->h:J

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/a/d;->f()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/a/d;)Lcom/facebook/ads/internal/view/a/d$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/d;->c:Lcom/facebook/ads/internal/view/a/d$a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/view/a/d;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/a/d;)Lcom/facebook/ads/internal/util/m;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/d;->d:Lcom/facebook/ads/internal/util/m;

    return-object v0
.end method

.method static synthetic d()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/view/a/d;->b:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/view/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/d;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/d;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/d;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/d;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/d;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    new-instance v0, Lcom/facebook/ads/internal/util/m;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/util/m;-><init>(Lcom/facebook/ads/internal/view/a/d;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/a/d;->d:Lcom/facebook/ads/internal/util/m;

    return-void
.end method

.method private g()V
    .locals 4

    const-wide/16 v2, -0x1

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/a/d;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/a/d;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/a/d;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/d;->d:Lcom/facebook/ads/internal/util/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/m;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Landroid/webkit/WebChromeClient;
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/view/a/d$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/a/d$1;-><init>(Lcom/facebook/ads/internal/view/a/d;)V

    return-object v0
.end method

.method public a(J)V
    .locals 5

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/a/d;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/facebook/ads/internal/view/a/d;->e:J

    :cond_0
    return-void
.end method

.method protected b()Landroid/webkit/WebViewClient;
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/view/a/d$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/a/d$2;-><init>(Lcom/facebook/ads/internal/view/a/d;)V

    return-object v0
.end method

.method public b(J)V
    .locals 5

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/a/d;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/facebook/ads/internal/view/a/d;->f:J

    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/internal/view/a/d;->g()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/internal/view/a/d;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/a/d;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(J)V
    .locals 5

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/a/d;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/facebook/ads/internal/view/a/d;->h:J

    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/internal/view/a/d;->g()V

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/internal/util/i;->a(Landroid/webkit/WebView;)V

    invoke-super {p0}, Lcom/facebook/ads/internal/view/b;->destroy()V

    return-void
.end method

.method public getDomContentLoadedMs()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/a/d;->f:J

    return-wide v0
.end method

.method public getFirstUrl()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/d;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/d;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLoadFinishMs()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/a/d;->h:J

    return-wide v0
.end method

.method public getResponseEndMs()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/a/d;->e:J

    return-wide v0
.end method

.method public getScrollReadyMs()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/a/d;->g:J

    return-wide v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/b;->onDraw(Landroid/graphics/Canvas;)V

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/a/d;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/d;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/d;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/a/d;->g:J

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/a/d;->g()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/facebook/ads/internal/view/a/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/d;->c:Lcom/facebook/ads/internal/view/a/d$a;

    return-void
.end method
