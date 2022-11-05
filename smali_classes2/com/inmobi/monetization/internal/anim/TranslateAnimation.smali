.class public Lcom/inmobi/monetization/internal/anim/TranslateAnimation;
.super Landroid/view/animation/Animation;
.source "TranslateAnimation.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 7
    iput v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->a:I

    .line 8
    iput v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->b:I

    .line 10
    iput v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->c:I

    .line 11
    iput v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->d:I

    .line 13
    iput v1, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->e:F

    .line 14
    iput v1, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->f:F

    .line 16
    iput v1, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->g:F

    .line 17
    iput v1, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->h:F

    .line 26
    iput p1, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->e:F

    .line 27
    iput p2, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->f:F

    .line 28
    iput p3, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->g:F

    .line 29
    iput p4, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->h:F

    .line 31
    iput v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->a:I

    .line 32
    iput v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->b:I

    .line 33
    iput v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->c:I

    .line 34
    iput v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->d:I

    .line 35
    return-void
.end method

.method public constructor <init>(IFIFIFIF)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 7
    iput v1, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->a:I

    .line 8
    iput v1, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->b:I

    .line 10
    iput v1, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->c:I

    .line 11
    iput v1, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->d:I

    .line 13
    iput v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->e:F

    .line 14
    iput v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->f:F

    .line 16
    iput v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->g:F

    .line 17
    iput v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->h:F

    .line 40
    iput p2, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->e:F

    .line 41
    iput p4, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->f:F

    .line 42
    iput p6, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->g:F

    .line 43
    iput p8, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->h:F

    .line 45
    iput p1, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->a:I

    .line 46
    iput p3, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->b:I

    .line 47
    iput p5, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->c:I

    .line 48
    iput p7, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->d:I

    .line 49
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .prologue
    .line 62
    iget v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->i:F

    .line 63
    iget v1, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->k:F

    .line 64
    iget v2, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->i:F

    iget v3, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->j:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 65
    iget v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->i:F

    iget v2, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->j:F

    iget v3, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->i:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    .line 67
    :cond_0
    iget v2, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->k:F

    iget v3, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->l:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 68
    iget v1, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->k:F

    iget v2, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->l:F

    iget v3, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->k:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 71
    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 72
    return-void
.end method

.method public initialize(IIII)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 55
    iget v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->a:I

    iget v1, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->e:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->i:F

    .line 56
    iget v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->b:I

    iget v1, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->f:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->j:F

    .line 57
    iget v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->c:I

    iget v1, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->g:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->k:F

    .line 58
    iget v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->d:I

    iget v1, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->h:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/inmobi/monetization/internal/anim/TranslateAnimation;->l:F

    .line 59
    return-void
.end method
