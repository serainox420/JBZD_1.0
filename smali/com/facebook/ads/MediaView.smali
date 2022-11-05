.class public Lcom/facebook/ads/MediaView;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I


# instance fields
.field private c:Lcom/facebook/ads/MediaViewListener;

.field private final d:Lcom/facebook/ads/internal/view/e;

.field private final e:Lcom/facebook/ads/internal/view/i;

.field private final f:Lcom/facebook/ads/internal/view/hscroll/b;

.field private g:Z

.field private h:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/MediaView;->a:Ljava/lang/String;

    const/16 v0, 0x33

    const/16 v1, 0x91

    const/16 v2, 0x96

    const/16 v3, 0xa5

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/MediaView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v1, -0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v5, p0, Lcom/facebook/ads/MediaView;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/MediaView;->h:Z

    sget v0, Lcom/facebook/ads/MediaView;->b:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/facebook/ads/internal/view/e;

    invoke-direct {v1, p1}, Lcom/facebook/ads/internal/view/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/e;

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/e;

    invoke-virtual {v1, v6}, Lcom/facebook/ads/internal/view/e;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/e;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/facebook/ads/internal/view/i;

    invoke-virtual {p0}, Lcom/facebook/ads/MediaView;->getAdEventManager()Lcom/facebook/ads/internal/g/f;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/facebook/ads/internal/view/i;-><init>(Landroid/content/Context;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/internal/g/f;)V

    iput-object v1, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/view/i;

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v1, v6}, Lcom/facebook/ads/internal/view/i;->setVisibility(I)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    new-instance v3, Lcom/facebook/ads/internal/view/hscroll/b;

    invoke-virtual {p0}, Lcom/facebook/ads/MediaView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/ads/internal/view/hscroll/b;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/internal/view/hscroll/b;

    iget-object v3, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/internal/view/hscroll/b;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/internal/view/hscroll/b;->setChildSpacing(I)V

    iget-object v2, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/internal/view/hscroll/b;

    invoke-virtual {v2, v5, v1, v5, v1}, Lcom/facebook/ads/internal/view/hscroll/b;->setPadding(IIII)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/internal/view/hscroll/b;

    invoke-virtual {v1, v6}, Lcom/facebook/ads/internal/view/hscroll/b;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/internal/view/hscroll/b;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Lcom/facebook/ads/NativeAd;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/facebook/ads/NativeAd;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->g()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getAdEventManager()Lcom/facebook/ads/internal/g/f;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/MediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/g/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/g/g;

    move-result-object v0

    return-object v0
.end method

.method public isAutoplay()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/facebook/ads/MediaView;->h:Z

    return v0
.end method

.method public setAutoplay(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/ads/MediaView;->h:Z

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/i;->setAutoplay(Z)V

    return-void
.end method

.method public setAutoplayOnMobile(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/i;->setIsAutoplayOnMobile(Z)V

    return-void
.end method

.method public setListener(Lcom/facebook/ads/MediaViewListener;)V
    .locals 1

    iput-object p1, p0, Lcom/facebook/ads/MediaView;->c:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/i;->setListener(Lcom/facebook/ads/MediaViewListener;)V

    return-void
.end method

.method public setNativeAd(Lcom/facebook/ads/NativeAd;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-virtual {p1, v7}, Lcom/facebook/ads/NativeAd;->b(Z)V

    iget-boolean v0, p0, Lcom/facebook/ads/MediaView;->h:Z

    invoke-virtual {p1, v0}, Lcom/facebook/ads/NativeAd;->setMediaViewAutoplay(Z)V

    iget-boolean v0, p0, Lcom/facebook/ads/MediaView;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/e;

    invoke-virtual {v0, v1, v1}, Lcom/facebook/ads/internal/view/e;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-boolean v5, p0, Lcom/facebook/ads/MediaView;->g:Z

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/MediaView;->b(Lcom/facebook/ads/NativeAd;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/e;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/internal/view/e;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/internal/view/i;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/internal/view/hscroll/b;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/internal/view/hscroll/b;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/internal/view/hscroll/b;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/internal/view/hscroll/b;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/internal/view/hscroll/b;->setCurrentPosition(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/internal/view/hscroll/b;

    new-instance v1, Lcom/facebook/ads/internal/adapters/g;

    iget-object v2, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/internal/view/hscroll/b;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->g()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/adapters/g;-><init>(Lcom/facebook/ads/internal/view/hscroll/b;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/hscroll/b;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/MediaView;->a(Lcom/facebook/ads/NativeAd;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v4, v1}, Lcom/facebook/ads/internal/view/i;->setImage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/e;

    invoke-virtual {v1, v6}, Lcom/facebook/ads/internal/view/e;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v1, v5}, Lcom/facebook/ads/internal/view/i;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/internal/view/hscroll/b;

    invoke-virtual {v1, v6}, Lcom/facebook/ads/internal/view/hscroll/b;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {p0, v1}, Lcom/facebook/ads/MediaView;->bringChildToFront(Landroid/view/View;)V

    iput-boolean v7, p0, Lcom/facebook/ads/MediaView;->g:Z

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/view/i;

    iget-boolean v4, p0, Lcom/facebook/ads/MediaView;->h:Z

    invoke-virtual {v1, v4}, Lcom/facebook/ads/internal/view/i;->setAutoplay(Z)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/internal/util/ak;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/facebook/ads/internal/view/i;->setIsAutoPlayFromServer(Lcom/facebook/ads/internal/util/ak;)V

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/i;->setImage(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/facebook/ads/internal/view/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/internal/view/i;->setVideoMPD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/view/i;->setVideoURI(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/e;

    invoke-virtual {v1, v5}, Lcom/facebook/ads/internal/view/e;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v1, v6}, Lcom/facebook/ads/internal/view/i;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->f:Lcom/facebook/ads/internal/view/hscroll/b;

    invoke-virtual {v1, v6}, Lcom/facebook/ads/internal/view/hscroll/b;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/e;

    invoke-virtual {p0, v1}, Lcom/facebook/ads/MediaView;->bringChildToFront(Landroid/view/View;)V

    iput-boolean v7, p0, Lcom/facebook/ads/MediaView;->g:Z

    new-instance v1, Lcom/facebook/ads/internal/util/q;

    iget-object v2, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/view/e;

    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/util/q;-><init>(Lcom/facebook/ads/internal/view/e;)V

    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/util/q;->a([Ljava/lang/String;)V

    goto/16 :goto_1
.end method
