.class public Lcom/facebook/ads/internal/view/d/b/e;
.super Lcom/facebook/ads/internal/view/d/b/m;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/widget/TextView;

.field private final e:Ljava/lang/String;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, -0x2

    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v5, 0x40800000    # 4.0f

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/d/b/m;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/d/b/e;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/d/b/e;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/b/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/d/b/e;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/e;->d:Landroid/widget/TextView;

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/e;->d:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/e;->d:Landroid/widget/TextView;

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b/e;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/e;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/e;->f:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/e;->f:Landroid/graphics/Paint;

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b/e;->g:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d/b/e;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/e;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/e;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/internal/view/d/b/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/d/b/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/d/b/e;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/e;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/d/b/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/e;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/facebook/ads/internal/view/m;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/e;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/facebook/ads/internal/view/d/b/e$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/view/d/b/e$1;-><init>(Lcom/facebook/ads/internal/view/d/b/e;Lcom/facebook/ads/internal/view/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/e;->g:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/b/e;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/b/e;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/e;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/e;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/d/b/m;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
