.class public Lcom/applovin/impl/adview/s;
.super Landroid/view/View;


# instance fields
.field private final A:I

.field protected a:Landroid/graphics/Paint;

.field protected b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/RectF;

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:F

.field private q:Ljava/lang/String;

.field private r:F

.field private final s:F

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:F

.field private final z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/adview/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/adview/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0xf1

    const/16 v2, 0x91

    const/16 v1, 0x42

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/s;->e:Landroid/graphics/RectF;

    iput v4, p0, Lcom/applovin/impl/adview/s;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcom/applovin/impl/adview/s;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/applovin/impl/adview/s;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/applovin/impl/adview/s;->q:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->t:I

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->u:I

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->v:I

    iput v4, p0, Lcom/applovin/impl/adview/s;->w:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/applovin/impl/adview/s;->x:I

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/t;->b(Landroid/content/res/Resources;F)F

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->y:F

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/t;->a(Landroid/content/res/Resources;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->A:I

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/t;->a(Landroid/content/res/Resources;F)F

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->s:F

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/t;->b(Landroid/content/res/Resources;F)F

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->z:F

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->b()V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->a()V

    return-void
.end method

.method private e(I)I
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/applovin/impl/adview/s;->A:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private o()F
    .locals 2

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->d()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/applovin/impl/adview/s;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/s;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/applovin/impl/adview/s;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/applovin/impl/adview/s;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/s;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/applovin/impl/adview/s;->f:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/applovin/impl/adview/s;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/s;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/applovin/impl/adview/s;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/applovin/impl/adview/s;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/s;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/applovin/impl/adview/s;->p:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/applovin/impl/adview/s;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/s;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/applovin/impl/adview/s;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/applovin/impl/adview/s;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/s;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/s;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/applovin/impl/adview/s;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/applovin/impl/adview/s;->l:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/s;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/applovin/impl/adview/s;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/applovin/impl/adview/s;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/s;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/applovin/impl/adview/s;->l:F

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->invalidate()V

    return-void
.end method

.method public a(I)V
    .locals 2

    iput p1, p0, Lcom/applovin/impl/adview/s;->i:I

    iget v0, p0, Lcom/applovin/impl/adview/s;->i:I

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->e()I

    move-result v1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/applovin/impl/adview/s;->i:I

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->e()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/impl/adview/s;->i:I

    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->invalidate()V

    return-void
.end method

.method protected b()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/applovin/impl/adview/s;->t:I

    iput v0, p0, Lcom/applovin/impl/adview/s;->k:I

    iget v0, p0, Lcom/applovin/impl/adview/s;->u:I

    iput v0, p0, Lcom/applovin/impl/adview/s;->g:I

    iget v0, p0, Lcom/applovin/impl/adview/s;->y:F

    iput v0, p0, Lcom/applovin/impl/adview/s;->f:F

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/s;->b(I)V

    invoke-virtual {p0, v1}, Lcom/applovin/impl/adview/s;->a(I)V

    iget v0, p0, Lcom/applovin/impl/adview/s;->s:F

    iput v0, p0, Lcom/applovin/impl/adview/s;->l:F

    iput v1, p0, Lcom/applovin/impl/adview/s;->m:I

    iget v0, p0, Lcom/applovin/impl/adview/s;->z:F

    iput v0, p0, Lcom/applovin/impl/adview/s;->p:F

    iget v0, p0, Lcom/applovin/impl/adview/s;->v:I

    iput v0, p0, Lcom/applovin/impl/adview/s;->h:I

    return-void
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Lcom/applovin/impl/adview/s;->f:F

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->invalidate()V

    return-void
.end method

.method public b(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/applovin/impl/adview/s;->j:I

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->invalidate()V

    :cond_0
    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/s;->l:F

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/applovin/impl/adview/s;->g:I

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->invalidate()V

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/s;->i:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/applovin/impl/adview/s;->k:I

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->invalidate()V

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/s;->j:I

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/s;->f:F

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/s;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/s;->k:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/s;->o:Ljava/lang/String;

    return-object v0
.end method

.method public invalidate()V
    .locals 0

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->a()V

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/s;->n:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/s;->m:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/s;->q:Ljava/lang/String;

    return-object v0
.end method

.method public m()F
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/s;->p:F

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/s;->h:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/applovin/impl/adview/s;->l:F

    iget-object v1, p0, Lcom/applovin/impl/adview/s;->e:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/applovin/impl/adview/s;->l:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/applovin/impl/adview/s;->l:F

    add-float/2addr v0, v1

    div-float/2addr v0, v6

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget-object v3, p0, Lcom/applovin/impl/adview/s;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/s;->e:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-direct {p0}, Lcom/applovin/impl/adview/s;->o()F

    move-result v0

    neg-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/applovin/impl/adview/s;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/adview/s;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/s;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/s;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/adview/s;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/applovin/impl/adview/s;->a:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/applovin/impl/adview/s;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, v3, v1

    div-float/2addr v1, v6

    iget-object v3, p0, Lcom/applovin/impl/adview/s;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/s;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/applovin/impl/adview/s;->p:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/applovin/impl/adview/s;->r:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/applovin/impl/adview/s;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/applovin/impl/adview/s;->a:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/applovin/impl/adview/s;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    iget-object v3, p0, Lcom/applovin/impl/adview/s;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/s;->e(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/applovin/impl/adview/s;->e(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/adview/s;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->r:F

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "text_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->g:I

    const-string v0, "text_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->f:F

    const-string v0, "inner_bottom_text_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->p:F

    const-string v0, "inner_bottom_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/s;->q:Ljava/lang/String;

    const-string v0, "inner_bottom_text_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->h:I

    const-string v0, "finished_stroke_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->k:I

    const-string v0, "finished_stroke_width"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->l:F

    const-string v0, "inner_background_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/s;->m:I

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->a()V

    const-string v0, "max"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/s;->b(I)V

    const-string v0, "progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/s;->a(I)V

    const-string v0, "prefix"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/s;->n:Ljava/lang/String;

    const-string v0, "suffix"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/s;->o:Ljava/lang/String;

    const-string v0, "saved_instance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "saved_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "text_color"

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "text_size"

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->f()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "inner_bottom_text_size"

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->m()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "inner_bottom_text_color"

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->n()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "inner_bottom_text"

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "inner_bottom_text_color"

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->n()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "finished_stroke_color"

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "max"

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "progress"

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "suffix"

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "prefix"

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "finished_stroke_width"

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->c()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "inner_background_color"

    invoke-virtual {p0}, Lcom/applovin/impl/adview/s;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
