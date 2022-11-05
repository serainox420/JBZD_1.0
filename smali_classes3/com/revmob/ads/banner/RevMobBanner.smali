.class public Lcom/revmob/ads/banner/RevMobBanner;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/revmob/ads/a/a;


# static fields
.field public static DEFAULT_HEIGHT_IN_DIP:F

.field public static DEFAULT_WIDTH_IN_DIP:F

.field public static bannerCount:I

.field public static isBannerImpression:Z

.field public static usedCampaigns:Ljava/util/ArrayList;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Landroid/app/Activity;

.field private c:Lcom/revmob/ads/banner/a/b;

.field private d:Lcom/revmob/RevMobAdsListener;

.field private e:Landroid/view/View;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Lcom/revmob/ads/banner/a/a;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:F

.field private r:F

.field private s:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x43a00000    # 320.0f

    sput v0, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:F

    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_HEIGHT_IN_DIP:F

    const/4 v0, 0x0

    sput-boolean v0, Lcom/revmob/ads/banner/RevMobBanner;->isBannerImpression:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/revmob/ads/banner/RevMobBanner;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/revmob/ads/banner/RevMobBanner;->d:Lcom/revmob/RevMobAdsListener;

    sget v0, Lcom/revmob/ads/a/c;->a:I

    iput v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->f:I

    iput-boolean v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->j:Z

    sput-boolean v1, Lcom/revmob/ads/banner/RevMobBanner;->isBannerImpression:Z

    iput-boolean v2, p0, Lcom/revmob/ads/banner/RevMobBanner;->k:Z

    iput-boolean v2, p0, Lcom/revmob/ads/banner/RevMobBanner;->l:Z

    iput-boolean v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->n:Z

    return-void
.end method

.method static synthetic access$000(Lcom/revmob/ads/banner/RevMobBanner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->j:Z

    return v0
.end method

.method static synthetic access$002(Lcom/revmob/ads/banner/RevMobBanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/revmob/ads/banner/RevMobBanner;->j:Z

    return p1
.end method

.method static synthetic access$100(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->h:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/revmob/ads/banner/RevMobBanner;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/revmob/ads/banner/RevMobBanner;)V
    .locals 0

    invoke-direct {p0}, Lcom/revmob/ads/banner/RevMobBanner;->configureAndAnimateView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/revmob/ads/banner/RevMobBanner;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/revmob/ads/banner/RevMobBanner;->removeAdViewBlock(Z)V

    return-void
.end method

.method static synthetic access$202$62a0c7c7(Lcom/revmob/ads/banner/RevMobBanner;I)I
    .locals 0

    iput p1, p0, Lcom/revmob/ads/banner/RevMobBanner;->f:I

    return p1
.end method

.method static synthetic access$300(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/revmob/ads/banner/RevMobBanner;)Lcom/revmob/ads/banner/a/b;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    return-object v0
.end method

.method static synthetic access$500(Lcom/revmob/ads/banner/RevMobBanner;)Lcom/revmob/RevMobAdsListener;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->d:Lcom/revmob/RevMobAdsListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/revmob/ads/banner/RevMobBanner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->k:Z

    return v0
.end method

.method static synthetic access$702(Lcom/revmob/ads/banner/RevMobBanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/revmob/ads/banner/RevMobBanner;->m:Z

    return p1
.end method

.method static synthetic access$800(Lcom/revmob/ads/banner/RevMobBanner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/revmob/ads/banner/RevMobBanner;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/revmob/ads/banner/RevMobBanner;->load(Ljava/lang/String;)V

    return-void
.end method

.method private addDSPAdView()V
    .locals 5

    new-instance v0, Lcom/revmob/internal/s;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->d:Lcom/revmob/RevMobAdsListener;

    new-instance v2, Lcom/revmob/ads/banner/d;

    invoke-direct {v2, p0}, Lcom/revmob/ads/banner/d;-><init>(Lcom/revmob/ads/banner/RevMobBanner;)V

    iget-object v3, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    iget-object v3, v3, Lcom/revmob/ads/banner/a/b;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/revmob/internal/s;-><init>(Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/t;Ljava/lang/String;)V

    new-instance v1, Lcom/revmob/internal/r;

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    invoke-virtual {v3}, Lcom/revmob/ads/banner/a/b;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    invoke-virtual {v4}, Lcom/revmob/ads/banner/a/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/revmob/internal/r;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebViewClient;)V

    iput-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/revmob/ads/banner/RevMobBanner;->configureAndAnimateView()V

    return-void
.end method

.method private addHtmlAdView()V
    .locals 5

    new-instance v0, Lcom/revmob/internal/s;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->d:Lcom/revmob/RevMobAdsListener;

    new-instance v2, Lcom/revmob/ads/banner/c;

    invoke-direct {v2, p0}, Lcom/revmob/ads/banner/c;-><init>(Lcom/revmob/ads/banner/RevMobBanner;)V

    invoke-direct {v0, v1, v2}, Lcom/revmob/internal/s;-><init>(Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/t;)V

    new-instance v1, Lcom/revmob/internal/r;

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    invoke-virtual {v3}, Lcom/revmob/ads/banner/a/b;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/revmob/internal/r;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebViewClient;)V

    iput-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/revmob/ads/banner/RevMobBanner;->configureAndAnimateView()V

    return-void
.end method

.method private addImageView()V
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    invoke-virtual {v1}, Lcom/revmob/ads/banner/a/b;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/revmob/ads/banner/RevMobBanner;->configureAndAnimateView()V

    return-void
.end method

.method private calculateDimensions()V
    .locals 4

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->determineDefaultDimensions()V

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v0

    sget v0, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_HEIGHT_IN_DIP:F

    mul-float/2addr v0, v1

    sget v2, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:F

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    sget v1, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:F

    mul-float/2addr v1, v0

    sget v2, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_HEIGHT_IN_DIP:F

    div-float/2addr v1, v2

    :cond_0
    float-to-int v1, v1

    iput v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->o:I

    float-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->p:I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v2, v1

    sget v1, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_HEIGHT_IN_DIP:F

    mul-float/2addr v1, v2

    sget v3, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:F

    div-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:F

    mul-float/2addr v1, v0

    sget v2, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_HEIGHT_IN_DIP:F

    div-float/2addr v1, v2

    :goto_1
    float-to-int v1, v1

    iput v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->o:I

    float-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->p:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_HEIGHT_IN_DIP:F

    mul-float/2addr v1, v0

    sget v2, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->p:I

    float-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->o:I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:F

    mul-float/2addr v1, v0

    sget v2, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_HEIGHT_IN_DIP:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->o:I

    float-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->p:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->r:F

    iget v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->q:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v1, v0

    iput v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->o:I

    sget v1, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_HEIGHT_IN_DIP:F

    mul-float/2addr v0, v1

    sget v1, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->p:I

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->r:F

    iget v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->q:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v1, v0

    iput v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->o:I

    sget v1, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_HEIGHT_IN_DIP:F

    mul-float/2addr v0, v1

    sget v1, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->p:I

    goto/16 :goto_0

    :cond_6
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method private configureAndAnimateView()V
    .locals 3

    invoke-direct {p0}, Lcom/revmob/ads/banner/RevMobBanner;->calculateDimensions()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->o:I

    iget v2, p0, Lcom/revmob/ads/banner/RevMobBanner;->p:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->animateAdView()V

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/revmob/ads/banner/RevMobBanner;->addView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/revmob/ads/banner/RevMobBanner;->registerVisibilityListener()V

    invoke-direct {p0}, Lcom/revmob/ads/banner/RevMobBanner;->playSoundOnShow()V

    return-void
.end method

.method private getBarPixelSize(Landroid/content/Context;)F
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hide(Z)V
    .locals 2

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->f:I

    sget v1, Lcom/revmob/ads/a/c;->e:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/revmob/ads/a/c;->e:I

    iput v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->f:I

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/a/b;->h()Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/revmob/ads/banner/i;

    invoke-direct {v1, p0, p1}, Lcom/revmob/ads/banner/i;-><init>(Lcom/revmob/ads/banner/RevMobBanner;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->s:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->q:F

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->r:F

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->s:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->q:F

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->s:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->r:F

    iget-object v2, p0, Lcom/revmob/ads/banner/RevMobBanner;->s:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->b:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/revmob/ads/banner/RevMobBanner;->getBarPixelSize(Landroid/content/Context;)F

    move-result v1

    iget-object v2, p0, Lcom/revmob/ads/banner/RevMobBanner;->s:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private load(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->f:I

    sget v1, Lcom/revmob/ads/a/c;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->f:I

    sget v1, Lcom/revmob/ads/a/c;->e:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->f:I

    sget v1, Lcom/revmob/ads/a/c;->g:I

    if-ne v0, v1, :cond_1

    :cond_0
    sget v0, Lcom/revmob/ads/a/c;->b:I

    iput v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->f:I

    new-instance v0, Lcom/revmob/ads/banner/a/a;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->d:Lcom/revmob/RevMobAdsListener;

    iget-object v2, p0, Lcom/revmob/ads/banner/RevMobBanner;->b:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, v2}, Lcom/revmob/ads/banner/a/a;-><init>(Lcom/revmob/ads/a/a;Lcom/revmob/RevMobAdsListener;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->i:Lcom/revmob/ads/banner/a/a;

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->a:Ljava/lang/String;

    sput-object v0, Lcom/revmob/a/e;->e:Ljava/lang/String;

    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->i:Lcom/revmob/ads/banner/a/a;

    invoke-virtual {v0, p1, v1}, Lcom/revmob/client/RevMobClient;->d(Ljava/lang/String;Lcom/revmob/client/f;)V

    :cond_1
    return-void
.end method

.method private onClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/revmob/ads/banner/a;

    invoke-direct {v0, p0}, Lcom/revmob/ads/banner/a;-><init>(Lcom/revmob/ads/banner/RevMobBanner;)V

    return-object v0
.end method

.method private playSoundOnShow()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/a/b;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/a/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/revmob/internal/p;

    invoke-direct {v0}, Lcom/revmob/internal/p;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    invoke-virtual {v2}, Lcom/revmob/ads/banner/a/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/revmob/internal/p;->b(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v2, "playSoundOnShow"

    invoke-static {v0, v3, v1, v3, v2}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private registerVisibilityListener()V
    .locals 2

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/revmob/ads/banner/e;

    invoke-direct {v1, p0}, Lcom/revmob/ads/banner/e;-><init>(Lcom/revmob/ads/banner/RevMobBanner;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private removeAdViewBlock(Z)V
    .locals 2

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->b:Landroid/app/Activity;

    new-instance v1, Lcom/revmob/ads/banner/j;

    invoke-direct {v1, p0, p1}, Lcom/revmob/ads/banner/j;-><init>(Lcom/revmob/ads/banner/RevMobBanner;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static setBannerImpression(Z)V
    .locals 0

    sput-boolean p0, Lcom/revmob/ads/banner/RevMobBanner;->isBannerImpression:Z

    return-void
.end method


# virtual methods
.method public addAdView()V
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/revmob/ads/banner/RevMobBanner;->addHtmlAdView()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/revmob/ads/banner/RevMobBanner;->addDSPAdView()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/revmob/ads/banner/RevMobBanner;->addImageView()V

    goto :goto_0
.end method

.method public animateAdView()V
    .locals 3

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/a/b;->g()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/revmob/ads/banner/f;

    invoke-direct {v1, p0}, Lcom/revmob/ads/banner/f;-><init>(Lcom/revmob/ads/banner/RevMobBanner;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public determineDefaultDimensions()V
    .locals 1

    invoke-direct {p0}, Lcom/revmob/ads/banner/RevMobBanner;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x44360000    # 728.0f

    sput v0, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:F

    const/high16 v0, 0x42b40000    # 90.0f

    sput v0, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_HEIGHT_IN_DIP:F

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x43a00000    # 320.0f

    sput v0, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:F

    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_HEIGHT_IN_DIP:F

    goto :goto_0
.end method

.method public dipToPixels(F)I
    .locals 2

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->s:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->g:Ljava/lang/String;

    return-object v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/revmob/ads/banner/RevMobBanner;->hide(Z)V

    return-void
.end method

.method public isAutoReload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->k:Z

    return v0
.end method

.method public load()V
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/revmob/ads/banner/RevMobBanner;->load(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/revmob/ads/banner/RevMobBanner;->hide(Z)V

    return-void
.end method

.method public reportShowOrHidden()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/revmob/ads/banner/RevMobBanner;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->n:Z

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lcom/revmob/ads/banner/RevMobBanner;->n:Z

    sget v0, Lcom/revmob/ads/a/c;->d:I

    iput v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->f:I

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->d:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->d:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdDisplayed()V

    :cond_0
    sget-object v0, Lcom/revmob/ads/banner/RevMobBanner;->usedCampaigns:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/revmob/ads/banner/RevMobBanner;->usedCampaigns:Ljava/util/ArrayList;

    :cond_1
    sget-object v0, Lcom/revmob/ads/banner/RevMobBanner;->usedCampaigns:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    iget-object v1, v1, Lcom/revmob/client/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/revmob/ads/banner/RevMobBanner;->usedCampaigns:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    iget-object v1, v1, Lcom/revmob/client/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget v0, Lcom/revmob/ads/banner/RevMobBanner;->bannerCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/revmob/ads/banner/RevMobBanner;->bannerCount:I

    sput-boolean v2, Lcom/revmob/ads/banner/RevMobBanner;->isBannerImpression:Z

    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    invoke-virtual {v0, v1}, Lcom/revmob/client/RevMobClient;->a(Lcom/revmob/client/a;)V

    :cond_3
    return-void
.end method

.method public setAutoReload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/revmob/ads/banner/RevMobBanner;->k:Z

    return-void
.end method

.method public setAutoShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/revmob/ads/banner/RevMobBanner;->l:Z

    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/banner/RevMobBanner;->g:Ljava/lang/String;

    return-void
.end method

.method public setPublisherListener(Lcom/revmob/RevMobAdsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/banner/RevMobBanner;->d:Lcom/revmob/RevMobAdsListener;

    return-void
.end method

.method public show()V
    .locals 2

    iget v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->f:I

    sget v1, Lcom/revmob/ads/a/c;->e:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->f:I

    sget v1, Lcom/revmob/ads/a/c;->c:I

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/revmob/ads/banner/g;

    invoke-direct {v1, p0}, Lcom/revmob/ads/banner/g;-><init>(Lcom/revmob/ads/banner/RevMobBanner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->f:I

    sget v1, Lcom/revmob/ads/a/c;->d:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/revmob/ads/a/c;->d:I

    iput v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->f:I

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/revmob/ads/banner/h;

    invoke-direct {v1, p0}, Lcom/revmob/ads/banner/h;-><init>(Lcom/revmob/ads/banner/RevMobBanner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateWithData(Lcom/revmob/client/a;)V
    .locals 2

    sget v0, Lcom/revmob/ads/a/c;->c:I

    iput v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->f:I

    check-cast p1, Lcom/revmob/ads/banner/a/b;

    iput-object p1, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    invoke-virtual {v0, v1}, Lcom/revmob/client/RevMobClient;->b(Lcom/revmob/client/a;)V

    invoke-direct {p0}, Lcom/revmob/ads/banner/RevMobBanner;->onClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->h:Landroid/view/View$OnClickListener;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Banner loaded - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner;->c:Lcom/revmob/ads/banner/a/b;

    iget-object v1, v1, Lcom/revmob/client/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->m:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->n:Z

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->d:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->d:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdReceived()V

    :cond_2
    iget-boolean v0, p0, Lcom/revmob/ads/banner/RevMobBanner;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/revmob/ads/banner/RevMobBanner;->show()V

    goto :goto_0
.end method
