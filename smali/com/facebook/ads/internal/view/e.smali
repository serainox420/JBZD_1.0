.class public Lcom/facebook/ads/internal/view/e;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:D

.field private o:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e;->d()V

    return-void
.end method

.method private a(D)I
    .locals 3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e;->getWidth()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private a()V
    .locals 4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e;->getMeasuredWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e;->getMeasuredHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/e;->o:D

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/e;->n:D

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/e;->n:D

    iget-wide v2, p0, Lcom/facebook/ads/internal/view/e;->o:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e;->b()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e;->c()V

    goto :goto_0
.end method

.method private b(D)I
    .locals 3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e;->getHeight()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private b()V
    .locals 8

    const/4 v6, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/facebook/ads/internal/view/e;->n:D

    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/internal/view/e;->a(D)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/e;->j:I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/e;->k:I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/facebook/ads/internal/view/e;->j:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lcom/facebook/ads/internal/view/e;->h:I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/facebook/ads/internal/view/e;->j:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lcom/facebook/ads/internal/view/e;->i:I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/facebook/ads/internal/view/e;->j:I

    int-to-float v2, v2

    div-float v7, v0, v2

    iget v0, p0, Lcom/facebook/ads/internal/view/e;->h:I

    int-to-float v0, v0

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-lez v4, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e;->f:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget v0, p0, Lcom/facebook/ads/internal/view/e;->i:I

    int-to-float v0, v0

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v4

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e;->g:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method private c()V
    .locals 14

    const/4 v6, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/facebook/ads/internal/view/e;->n:D

    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/internal/view/e;->b(D)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/e;->k:I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/e;->j:I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/facebook/ads/internal/view/e;->k:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lcom/facebook/ads/internal/view/e;->l:I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/facebook/ads/internal/view/e;->k:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lcom/facebook/ads/internal/view/e;->m:I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/facebook/ads/internal/view/e;->k:I

    int-to-float v2, v2

    div-float v7, v0, v2

    iget v0, p0, Lcom/facebook/ads/internal/view/e;->l:I

    int-to-float v0, v0

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v3, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e;->f:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget v0, p0, Lcom/facebook/ads/internal/view/e;->m:I

    int-to-float v0, v0

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-lez v10, :cond_0

    iget-object v7, p0, Lcom/facebook/ads/internal/view/e;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int v8, v0, v10

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move v9, v1

    move-object v12, v5

    move v13, v6

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e;->g:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method private d()V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e;->setOrientation(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->c:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->d:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->d:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->e:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e;->addView(Landroid/view/View;)V

    return-void
.end method

.method private e()Z
    .locals 2

    iget v0, p0, Lcom/facebook/ads/internal/view/e;->h:I

    iget v1, p0, Lcom/facebook/ads/internal/view/e;->j:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/facebook/ads/internal/view/e;->i:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e;->getMeasuredHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/internal/view/e;->l:I

    iget v1, p0, Lcom/facebook/ads/internal/view/e;->k:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/facebook/ads/internal/view/e;->m:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->d:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e;->a:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/e;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e;->a()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/internal/view/e;->n:D

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/internal/view/e;->a(D)I

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/e;->n:D

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/internal/view/e;->b(D)I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e;->a()V

    :cond_2
    iget-wide v0, p0, Lcom/facebook/ads/internal/view/e;->n:D

    iget-wide v2, p0, Lcom/facebook/ads/internal/view/e;->o:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->c:Landroid/widget/ImageView;

    iget v1, p0, Lcom/facebook/ads/internal/view/e;->h:I

    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->d:Landroid/widget/ImageView;

    iget v1, p0, Lcom/facebook/ads/internal/view/e;->h:I

    add-int/2addr v1, p3

    iget v2, p0, Lcom/facebook/ads/internal/view/e;->h:I

    iget v3, p0, Lcom/facebook/ads/internal/view/e;->j:I

    add-int/2addr v2, v3

    invoke-virtual {v0, p2, v1, p4, v2}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->e:Landroid/widget/ImageView;

    iget v1, p0, Lcom/facebook/ads/internal/view/e;->h:I

    add-int/2addr v1, p3

    iget v2, p0, Lcom/facebook/ads/internal/view/e;->j:I

    add-int/2addr v1, v2

    invoke-virtual {v0, p2, v1, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->c:Landroid/widget/ImageView;

    iget v1, p0, Lcom/facebook/ads/internal/view/e;->l:I

    invoke-virtual {v0, p2, p3, v1, p5}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->d:Landroid/widget/ImageView;

    iget v1, p0, Lcom/facebook/ads/internal/view/e;->l:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/facebook/ads/internal/view/e;->l:I

    iget v3, p0, Lcom/facebook/ads/internal/view/e;->k:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, p3, v2, p5}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e;->e:Landroid/widget/ImageView;

    iget v1, p0, Lcom/facebook/ads/internal/view/e;->l:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/facebook/ads/internal/view/e;->k:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0
.end method
