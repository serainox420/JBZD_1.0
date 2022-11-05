.class public Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;
.super Lcom/facebook/drawee/view/SimpleDraweeView;
.source "AspectRatioImageViewSimpleDraweeView.java"


# instance fields
.field private a:F

.field private b:F

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1, p2}, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1, p2}, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    invoke-direct {p0, p1, p2}, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/generic/GenericDraweeHierarchy;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;Lcom/facebook/drawee/generic/GenericDraweeHierarchy;)V

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    .line 49
    if-nez p2, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const/4 v1, 0x0

    .line 57
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lpl/jbzd/R$styleable;->AspectRatioImageView:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, p2, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_2

    .line 63
    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->setAspectRatioWidth(I)V

    .line 64
    const/4 v0, 0x1

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->setAspectRationHeight(I)V

    .line 65
    const/4 v0, 0x2

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->setWidthAsBase(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_2
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 71
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->c:Z

    return v0
.end method

.method public getAspectRatioWidth()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->a:F

    return v0
.end method

.method public getAspectRationHeight()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->b:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->onMeasure(II)V

    .line 80
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->getAspectRationHeight()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->getAspectRatioWidth()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 82
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->setMeasuredDimension(II)V

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->getAspectRatioWidth()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->getAspectRationHeight()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 85
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setAspectRatioWidth(I)V
    .locals 1

    .prologue
    .line 94
    int-to-float v0, p1

    iput v0, p0, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->a:F

    .line 95
    return-void
.end method

.method public setAspectRationHeight(I)V
    .locals 1

    .prologue
    .line 102
    int-to-float v0, p1

    iput v0, p0, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->b:F

    .line 103
    return-void
.end method

.method public setWidthAsBase(Z)V
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lpl/jbzd/app/ui/view/AspectRatioImageViewSimpleDraweeView;->c:Z

    .line 111
    return-void
.end method
