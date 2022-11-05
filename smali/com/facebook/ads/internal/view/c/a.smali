.class public Lcom/facebook/ads/internal/view/c/a;
.super Lcom/facebook/ads/internal/view/d/b/m;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x41100000    # 9.0f

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/d/b/m;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/c/a;->b:Ljava/lang/String;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/facebook/ads/internal/view/c/a;->setPadding(IIII)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/c/a;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/c/a;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/a;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/a;->c:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/a;->c:Landroid/graphics/Paint;

    const/16 v2, 0xb2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/c/a;->d:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/c/a;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/a;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/a;->e:Landroid/graphics/Paint;

    const v2, -0x666667

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/a;->e:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/a;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/c/a;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/c/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/facebook/ads/internal/view/m;)V
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/view/c/a$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/view/c/a$1;-><init>(Lcom/facebook/ads/internal/view/c/a;Lcom/facebook/ads/internal/view/m;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/c/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/c/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c/a;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/c/a;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/c/a;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c/a;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/c/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c/a;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/c/a;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/c/a;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c/a;->d:Landroid/graphics/RectF;

    mul-float v2, v6, v0

    mul-float/2addr v0, v6

    iget-object v3, p0, Lcom/facebook/ads/internal/view/c/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/d/b/m;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
