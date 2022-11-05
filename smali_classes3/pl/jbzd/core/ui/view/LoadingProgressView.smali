.class public Lpl/jbzd/core/ui/view/LoadingProgressView;
.super Landroid/view/View;
.source "LoadingProgressView.java"


# instance fields
.field private a:I

.field private b:F

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lpl/jbzd/core/ui/view/LoadingProgressView;->a:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lpl/jbzd/core/ui/view/LoadingProgressView;->b:F

    .line 36
    invoke-direct {p0}, Lpl/jbzd/core/ui/view/LoadingProgressView;->a()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lpl/jbzd/core/ui/view/LoadingProgressView;->a:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lpl/jbzd/core/ui/view/LoadingProgressView;->b:F

    .line 41
    invoke-direct {p0}, Lpl/jbzd/core/ui/view/LoadingProgressView;->a()V

    .line 42
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpl/jbzd/core/ui/view/LoadingProgressView;->c:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lpl/jbzd/core/ui/view/LoadingProgressView;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v0, p0, Lpl/jbzd/core/ui/view/LoadingProgressView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lpl/jbzd/core/ui/view/LoadingProgressView;->c:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lpl/jbzd/core/ui/view/LoadingProgressView;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 57
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    .line 85
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/LoadingProgressView;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/LoadingProgressView;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lpl/jbzd/core/ui/view/LoadingProgressView;->d:Landroid/graphics/RectF;

    .line 87
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 68
    iget v0, p0, Lpl/jbzd/core/ui/view/LoadingProgressView;->b:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 70
    iget-object v1, p0, Lpl/jbzd/core/ui/view/LoadingProgressView;->d:Landroid/graphics/RectF;

    iget-object v5, p0, Lpl/jbzd/core/ui/view/LoadingProgressView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 79
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    return-void

    :cond_1
    move v0, v2

    .line 74
    :goto_0
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    .line 75
    iget-object v6, p0, Lpl/jbzd/core/ui/view/LoadingProgressView;->d:Landroid/graphics/RectF;

    iget v1, p0, Lpl/jbzd/core/ui/view/LoadingProgressView;->b:F

    mul-float/2addr v1, v3

    const/high16 v5, 0x43fa0000    # 500.0f

    div-float v8, v1, v5

    iget-object v10, p0, Lpl/jbzd/core/ui/view/LoadingProgressView;->c:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v2

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 74
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 62
    invoke-direct {p0}, Lpl/jbzd/core/ui/view/LoadingProgressView;->b()V

    .line 63
    return-void
.end method

.method public setCurrentProgress(F)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lpl/jbzd/core/ui/view/LoadingProgressView;->b:F

    .line 91
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/LoadingProgressView;->postInvalidate()V

    .line 92
    return-void
.end method
