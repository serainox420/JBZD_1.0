.class public Lcom/facebook/ads/AdView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/facebook/ads/Ad;


# static fields
.field private static final a:Lcom/facebook/ads/internal/c;


# instance fields
.field private final b:Landroid/util/DisplayMetrics;

.field private final c:Lcom/facebook/ads/AdSize;

.field private final d:Ljava/lang/String;

.field private e:Lcom/facebook/ads/internal/DisplayAdController;

.field private f:Lcom/facebook/ads/AdListener;

.field private g:Lcom/facebook/ads/ImpressionListener;

.field private h:Landroid/view/View;

.field private volatile i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/c;->a:Lcom/facebook/ads/internal/c;

    sput-object v0, Lcom/facebook/ads/AdView;->a:Lcom/facebook/ads/internal/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_0

    sget-object v0, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    if-ne p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adSize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/AdView;->b:Landroid/util/DisplayMetrics;

    iput-object p3, p0, Lcom/facebook/ads/AdView;->c:Lcom/facebook/ads/AdSize;

    iput-object p2, p0, Lcom/facebook/ads/AdView;->d:Ljava/lang/String;

    invoke-static {p3}, Lcom/facebook/ads/internal/util/h;->a(Lcom/facebook/ads/AdSize;)Lcom/facebook/ads/internal/e;

    move-result-object v3

    new-instance v0, Lcom/facebook/ads/internal/DisplayAdController;

    sget-object v4, Lcom/facebook/ads/internal/server/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/server/AdPlacementType;

    sget-object v6, Lcom/facebook/ads/AdView;->a:Lcom/facebook/ads/internal/c;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/internal/DisplayAdController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/e;Lcom/facebook/ads/internal/server/AdPlacementType;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/c;IZ)V

    iput-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    new-instance v1, Lcom/facebook/ads/AdView$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/AdView$1;-><init>(Lcom/facebook/ads/AdView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/a;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/AdView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/AdView;->h:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AdView;->f:Lcom/facebook/ads/AdListener;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/DisplayAdController;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/AdView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AdView;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/AdView;)Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AdView;->b:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdSize;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AdView;->c:Lcom/facebook/ads/AdSize;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/ImpressionListener;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AdView;->g:Lcom/facebook/ads/ImpressionListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->d()V

    iput-object v1, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/AdView;->removeAllViews()V

    iput-object v1, p0, Lcom/facebook/ads/AdView;->h:Landroid/view/View;

    return-void
.end method

.method public disableAutoRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->h()V

    :cond_0
    return-void
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AdView;->d:Ljava/lang/String;

    return-object v0
.end method

.method public loadAd()V
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/AdView;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/AdView;->i:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->g()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/facebook/ads/AdView;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AdView;->b:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/facebook/ads/AdView;->h:Landroid/view/View;

    iget-object v2, p0, Lcom/facebook/ads/AdView;->c:Lcom/facebook/ads/AdSize;

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/util/h;->a(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/AdSize;)V

    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->f()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->e()V

    goto :goto_0
.end method

.method public setAdListener(Lcom/facebook/ads/AdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/AdView;->f:Lcom/facebook/ads/AdListener;

    return-void
.end method

.method public setImpressionListener(Lcom/facebook/ads/ImpressionListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/AdView;->g:Lcom/facebook/ads/ImpressionListener;

    return-void
.end method
