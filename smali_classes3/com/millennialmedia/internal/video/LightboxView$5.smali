.class Lcom/millennialmedia/internal/video/LightboxView$5;
.super Landroid/view/animation/Animation;
.source "LightboxView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->animateToGone(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:F

.field c:F

.field final synthetic d:Lcom/millennialmedia/internal/video/LightboxView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$5;->d:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 698
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView$5;->a:I

    mul-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    .line 701
    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView$5;->d:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 702
    return-void

    .line 698
    :cond_0
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView$5;->b:F

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView$5;->c:F

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 2

    .prologue
    .line 689
    iput p1, p0, Lcom/millennialmedia/internal/video/LightboxView$5;->a:I

    .line 690
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$5;->d:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/LightboxView;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView$5;->b:F

    .line 691
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView$5;->b:F

    int-to-float v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView$5;->c:F

    .line 692
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 708
    const/4 v0, 0x0

    return v0
.end method
