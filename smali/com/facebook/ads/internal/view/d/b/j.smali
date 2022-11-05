.class public Lcom/facebook/ads/internal/view/d/b/j;
.super Lcom/facebook/ads/internal/view/d/b/d;


# instance fields
.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/d/b/d;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b/j;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/j;->b:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/j;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/j;->b:Landroid/widget/TextView;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b/j;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/j;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/j;->c:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/j;->c:Landroid/graphics/Paint;

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b/j;->d:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d/b/j;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/j;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d/b/j;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/j;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/b/j;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/b/j;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/j;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/j;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/d/b/d;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
