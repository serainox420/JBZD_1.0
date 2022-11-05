.class public Lcom/facebook/ads/internal/view/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/d;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/facebook/ads/AudienceNetworkActivity;

.field private final c:Lcom/facebook/ads/internal/view/a/a;

.field private final d:Lcom/facebook/ads/internal/view/a/d;

.field private final e:Lcom/facebook/ads/internal/view/a/b;

.field private final f:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Z

.field private k:J

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/view/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/view/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/view/d$a;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/view/f$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/f$1;-><init>(Lcom/facebook/ads/internal/view/f;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f;->f:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

    iput-boolean v2, p0, Lcom/facebook/ads/internal/view/f;->j:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/f;->k:J

    iput-boolean v2, p0, Lcom/facebook/ads/internal/view/f;->l:Z

    iput-object p1, p0, Lcom/facebook/ads/internal/view/f;->b:Lcom/facebook/ads/AudienceNetworkActivity;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Lcom/facebook/ads/internal/view/a/a;

    invoke-direct {v1, p1}, Lcom/facebook/ads/internal/view/a/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/a/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/a/a;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/a/a;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/a/a;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/view/a/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/a/a;

    new-instance v2, Lcom/facebook/ads/internal/view/f$2;

    invoke-direct {v2, p0, p1}, Lcom/facebook/ads/internal/view/f$2;-><init>(Lcom/facebook/ads/internal/view/f;Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/a/a;->setListener(Lcom/facebook/ads/internal/view/a/a$a;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/a/a;

    invoke-interface {p2, v1}, Lcom/facebook/ads/internal/view/d$a;->a(Landroid/view/View;)V

    new-instance v1, Lcom/facebook/ads/internal/view/a/d;

    invoke-direct {v1, p1}, Lcom/facebook/ads/internal/view/a/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/f;->d:Lcom/facebook/ads/internal/view/a/d;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/a/a;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/a/a;->getId()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/view/a/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->d:Lcom/facebook/ads/internal/view/a/d;

    new-instance v2, Lcom/facebook/ads/internal/view/f$3;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/view/f$3;-><init>(Lcom/facebook/ads/internal/view/f;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/a/d;->setListener(Lcom/facebook/ads/internal/view/a/d$a;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-interface {p2, v1}, Lcom/facebook/ads/internal/view/d$a;->a(Landroid/view/View;)V

    new-instance v1, Lcom/facebook/ads/internal/view/a/b;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v1, p1, v2, v3}, Lcom/facebook/ads/internal/view/a/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/view/a/b;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/a/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/a/a;->getId()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/view/a/b;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/a/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/view/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/a/b;->setProgress(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/view/a/b;

    invoke-interface {p2, v0}, Lcom/facebook/ads/internal/view/d$a;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->f:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->addBackButtonInterceptor(Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/view/a/d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->d:Lcom/facebook/ads/internal/view/a/d;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/f;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/view/a/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->c:Lcom/facebook/ads/internal/view/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/f;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/f;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/view/a/b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->e:Lcom/facebook/ads/internal/view/a/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 6

    const-wide/16 v4, -0x1

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/f;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/f;->k:J

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "browserURL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f;->g:Ljava/lang/String;

    const-string v0, "clientToken"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f;->h:Ljava/lang/String;

    const-string v0, "handlerTime"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/f;->i:J

    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->d:Lcom/facebook/ads/internal/view/a/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->g:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/a/d;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "browserURL"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f;->g:Ljava/lang/String;

    const-string v0, "clientToken"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/f;->h:Ljava/lang/String;

    const-string v0, "handlerTime"

    invoke-virtual {p2, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/f;->i:J

    goto :goto_0

    :cond_2
    const-string v0, "about:blank"

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "browserURL"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d$a;)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/a/d;->onPause()V

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/f;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/f;->l:Z

    new-instance v0, Lcom/facebook/ads/internal/util/l$a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/a/d;->getFirstUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/util/l$a;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/facebook/ads/internal/view/f;->i:J

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/internal/util/l$a;->a(J)Lcom/facebook/ads/internal/util/l$a;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/ads/internal/view/f;->k:J

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/internal/util/l$a;->b(J)Lcom/facebook/ads/internal/util/l$a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/a/d;->getResponseEndMs()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/internal/util/l$a;->c(J)Lcom/facebook/ads/internal/util/l$a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/a/d;->getDomContentLoadedMs()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/internal/util/l$a;->d(J)Lcom/facebook/ads/internal/util/l$a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/a/d;->getScrollReadyMs()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/internal/util/l$a;->e(J)Lcom/facebook/ads/internal/util/l$a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/a/d;->getLoadFinishMs()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/internal/util/l$a;->f(J)Lcom/facebook/ads/internal/util/l$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/internal/util/l$a;->g(J)Lcom/facebook/ads/internal/util/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/util/l$a;->a()Lcom/facebook/ads/internal/util/l;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->b:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v1}, Lcom/facebook/ads/internal/g/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/g/g;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/f;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/internal/g/g;->a(Ljava/lang/String;Lcom/facebook/ads/internal/util/l;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/a/d;->onResume()V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->b:Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f;->f:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/AudienceNetworkActivity;->removeBackButtonInterceptor(Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/i;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/a/d;->destroy()V

    return-void
.end method
