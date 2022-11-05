.class public Lcom/facebook/ads/internal/view/i;
.super Lcom/facebook/ads/internal/view/m;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final c:Lcom/facebook/ads/internal/view/d/a/k;

.field private final d:Lcom/facebook/ads/internal/view/d/a/i;

.field private final e:Lcom/facebook/ads/internal/view/d/a/m;

.field private final f:Lcom/facebook/ads/internal/view/d/a/c;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/facebook/ads/MediaView;

.field private final i:Lcom/facebook/ads/internal/g/f;

.field private final j:Lcom/facebook/ads/internal/j/a;

.field private final k:Lcom/facebook/ads/internal/adapters/aa;

.field private final l:Lcom/facebook/ads/internal/view/d/b/f;

.field private m:Lcom/facebook/ads/internal/util/ad;

.field private n:Ljava/lang/String;

.field private o:Landroid/net/Uri;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Lcom/facebook/ads/MediaViewListener;

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/ads/internal/view/i;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/internal/g/f;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, -0x2

    const/high16 v7, 0x41c80000    # 25.0f

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/m;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/view/i$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/i$1;-><init>(Lcom/facebook/ads/internal/view/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/i;->c:Lcom/facebook/ads/internal/view/d/a/k;

    new-instance v0, Lcom/facebook/ads/internal/view/i$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/i$2;-><init>(Lcom/facebook/ads/internal/view/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/i;->d:Lcom/facebook/ads/internal/view/d/a/i;

    new-instance v0, Lcom/facebook/ads/internal/view/i$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/i$3;-><init>(Lcom/facebook/ads/internal/view/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/i;->e:Lcom/facebook/ads/internal/view/d/a/m;

    new-instance v0, Lcom/facebook/ads/internal/view/i$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/i$4;-><init>(Lcom/facebook/ads/internal/view/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/i;->f:Lcom/facebook/ads/internal/view/d/a/c;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/i;->g:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/facebook/ads/internal/view/i;->s:Z

    iput-object p2, p0, Lcom/facebook/ads/internal/view/i;->h:Lcom/facebook/ads/MediaView;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/i;->i:Lcom/facebook/ads/internal/g/f;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/i;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i;->c:Lcom/facebook/ads/internal/view/d/a/k;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/i;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i;->d:Lcom/facebook/ads/internal/view/d/a/i;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/i;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i;->f:Lcom/facebook/ads/internal/view/d/a/c;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    invoke-virtual {p0, v9}, Lcom/facebook/ads/internal/view/i;->setAutoplay(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/i;->setVolume(F)V

    new-instance v0, Lcom/facebook/ads/internal/view/d/b/f;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/d/b/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/i;->l:Lcom/facebook/ads/internal/view/d/b/f;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->l:Lcom/facebook/ads/internal/view/d/b/f;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/i;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/view/d/b/g;

    invoke-direct {v1, p1}, Lcom/facebook/ads/internal/view/d/b/g;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v6

    float-to-int v0, v0

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/facebook/ads/internal/view/d/b/g;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/d/b/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/view/i;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/i;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i;->e:Lcom/facebook/ads/internal/view/d/a/m;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    new-instance v0, Lcom/facebook/ads/internal/adapters/aa;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/adapters/aa;-><init>(Lcom/facebook/ads/internal/view/i;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/i;->k:Lcom/facebook/ads/internal/adapters/aa;

    new-instance v0, Lcom/facebook/ads/internal/j/a;

    const/16 v1, 0x32

    new-instance v2, Lcom/facebook/ads/internal/view/i$5;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/view/i$5;-><init>(Lcom/facebook/ads/internal/view/i;)V

    invoke-direct {v0, p0, v1, v9, v2}, Lcom/facebook/ads/internal/j/a;-><init>(Landroid/view/View;IZLcom/facebook/ads/internal/j/a$a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/i;->j:Lcom/facebook/ads/internal/j/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->j:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/internal/j/a;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->j:Lcom/facebook/ads/internal/j/a;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/a;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/MediaViewListener;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->r:Lcom/facebook/ads/MediaViewListener;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-boolean v0, Lcom/facebook/ads/internal/view/i;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/facebook/ads/internal/view/i;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->o:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->q:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v0, "useNativeCloseButton"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "viewType"

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$Type;->VIDEO:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "videoURL"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i;->o:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "clientToken"

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->p:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_0
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "videoMPD"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i;->q:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "videoReportURL"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i;->n:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "predefinedOrientationKey"

    const/16 v1, 0xd

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "autoplay"

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/i;->a()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "videoSeekTime"

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/i;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "uniqueId"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i;->g:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "videoLogger"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i;->m:Lcom/facebook/ads/internal/util/ad;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/util/ad;->getSaveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/MediaView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->h:Lcom/facebook/ads/MediaView;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i;->k()V

    return-void
.end method

.method private k()V
    .locals 3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/i;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/internal/view/i;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/i;->e()V

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/view/i;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v2

    :try_start_1
    const-class v2, Lcom/facebook/ads/InterstitialAdActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Error occurred while loading fullscreen video activity."

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/util/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/util/c;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/d;->a(Lcom/facebook/ads/internal/util/c;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "Error occurred while loading fullscreen video activity."

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/util/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/util/c;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/d;->a(Lcom/facebook/ads/internal/util/c;)V

    goto :goto_0
.end method

.method private l()V
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/i;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/i;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->j:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/a;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->j:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/a;->b()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->m:Lcom/facebook/ads/internal/util/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->m:Lcom/facebook/ads/internal/util/ad;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/util/ad;->a()V

    :cond_0
    if-nez p2, :cond_1

    const-string v5, ""

    :goto_0
    new-instance v0, Lcom/facebook/ads/internal/util/ad;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/i;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/i;->i:Lcom/facebook/ads/internal/g/f;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/util/ad;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/g/f;Lcom/facebook/ads/internal/view/m;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/i;->m:Lcom/facebook/ads/internal/util/ad;

    iput-object v5, p0, Lcom/facebook/ads/internal/view/i;->p:Ljava/lang/String;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i;->n:Ljava/lang/String;

    return-void

    :cond_1
    move-object v5, p2

    goto :goto_0
.end method

.method public d()V
    .locals 1

    const/16 v0, 0x32

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;I)Lcom/facebook/ads/internal/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/facebook/ads/internal/view/m;->d()V

    :cond_0
    return-void
.end method

.method public getListener()Lcom/facebook/ads/MediaViewListener;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->r:Lcom/facebook/ads/MediaViewListener;

    return-object v0
.end method

.method public getMediaView()Lcom/facebook/ads/MediaView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->h:Lcom/facebook/ads/MediaView;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/facebook/ads/internal/view/m;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/i;->s:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->k:Lcom/facebook/ads/internal/adapters/aa;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/aa;->a()V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i;->l()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/facebook/ads/internal/view/m;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/i;->s:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->k:Lcom/facebook/ads/internal/adapters/aa;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/aa;->b()V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i;->l()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i;->l()V

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/internal/view/m;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->l:Lcom/facebook/ads/internal/view/d/b/f;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/d/b/f;->setImage(Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/facebook/ads/MediaViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i;->r:Lcom/facebook/ads/MediaViewListener;

    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/facebook/ads/internal/view/i;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->m:Lcom/facebook/ads/internal/util/ad;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/internal/view/i;->q:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/m;->setVideoMPD(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    sget-boolean v0, Lcom/facebook/ads/internal/view/i;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->m:Lcom/facebook/ads/internal/util/ad;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/internal/view/i;->o:Landroid/net/Uri;

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/m;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method
