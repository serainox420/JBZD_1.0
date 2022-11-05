.class Lcom/millennialmedia/internal/video/LightboxView$7;
.super Landroid/view/animation/Animation;
.source "LightboxView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->a(Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:F

.field c:F

.field final synthetic d:Landroid/graphics/Point;

.field final synthetic e:Lcom/millennialmedia/internal/video/LightboxView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;Landroid/graphics/Point;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->e:Lcom/millennialmedia/internal/video/LightboxView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->d:Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 771
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    .line 775
    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->e:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 776
    return-void

    .line 771
    :cond_0
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->b:F

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->c:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 2

    .prologue
    .line 762
    iput p1, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->a:I

    .line 763
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->e:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/LightboxView;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->b:F

    .line 764
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->b:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->c:F

    .line 765
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x0

    return v0
.end method
