.class Lcom/millennialmedia/internal/video/LightboxView$11;
.super Landroid/view/animation/Animation;
.source "LightboxView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->b(Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Landroid/graphics/Point;

.field final synthetic d:Lcom/millennialmedia/internal/video/LightboxView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;Landroid/graphics/Point;)V
    .locals 0

    .prologue
    .line 980
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->c:Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 996
    cmpl-float v0, p1, v9

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 1000
    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/LightboxView;->i(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v4}, Lcom/millennialmedia/internal/video/LightboxView;->i(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 1001
    cmpl-float v3, p1, v9

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->c:Landroid/graphics/Point;

    iget v6, v3, Landroid/graphics/Point;->x:I

    .line 1004
    :goto_1
    cmpl-float v3, p1, v9

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v3}, Lcom/millennialmedia/internal/video/LightboxView;->k(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v5

    .line 1006
    :goto_2
    cmpl-float v3, p1, v9

    if-nez v3, :cond_4

    move v4, v2

    .line 1009
    :goto_3
    cmpl-float v3, p1, v9

    if-nez v3, :cond_5

    move v3, v2

    .line 1012
    :goto_4
    cmpl-float v7, p1, v9

    if-nez v7, :cond_6

    move v1, v2

    .line 1015
    :goto_5
    iget-object v7, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->c:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-ge v6, v7, :cond_0

    iget-object v7, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->c:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-ge v0, v7, :cond_0

    if-lez v3, :cond_0

    if-gtz v1, :cond_7

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->c:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 1019
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->c:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 1021
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->k(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v0

    move v4, v0

    move v5, v1

    move v6, v3

    move v3, v2

    move v1, v2

    .line 1026
    :goto_6
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    .line 1027
    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->o(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1029
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1030
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0, v6}, Lcom/millennialmedia/internal/video/LightboxView;->a(Lcom/millennialmedia/internal/video/LightboxView;I)V

    .line 1031
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->b(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1032
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->b(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1033
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationY(F)V

    .line 1034
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->b(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->setTranslationX(F)V

    .line 1035
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/LightboxView;->requestLayout()V

    .line 1036
    return-void

    .line 996
    :cond_1
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->b:I

    int-to-float v0, v0

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->a:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto/16 :goto_0

    .line 1001
    :cond_2
    iget-object v3, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    .line 1002
    invoke-static {v3}, Lcom/millennialmedia/internal/video/LightboxView;->j(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->c:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v5}, Lcom/millennialmedia/internal/video/LightboxView;->j(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    float-to-int v6, v3

    goto/16 :goto_1

    .line 1004
    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v3}, Lcom/millennialmedia/internal/video/LightboxView;->k(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v5, v3

    goto/16 :goto_2

    .line 1006
    :cond_4
    iget-object v3, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    .line 1007
    invoke-static {v3}, Lcom/millennialmedia/internal/video/LightboxView;->l(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v3

    iget-object v4, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v4}, Lcom/millennialmedia/internal/video/LightboxView;->l(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    sub-int v4, v3, v4

    goto/16 :goto_3

    .line 1009
    :cond_5
    iget-object v3, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v6

    iget-object v7, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    .line 1010
    invoke-static {v7}, Lcom/millennialmedia/internal/video/LightboxView;->m(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v7

    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->m(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v1

    float-to-int v8, v8

    sub-int/2addr v7, v8

    sub-int/2addr v3, v7

    .line 1009
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto/16 :goto_4

    .line 1012
    :cond_6
    iget-object v7, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->c:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v0

    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    .line 1013
    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->n(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v8

    iget-object v9, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->d:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v9}, Lcom/millennialmedia/internal/video/LightboxView;->n(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v1, v9

    float-to-int v1, v1

    sub-int v1, v8, v1

    sub-int v1, v7, v1

    .line 1012
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto/16 :goto_5

    :cond_7
    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v0

    goto/16 :goto_6
.end method

.method public initialize(IIII)V
    .locals 1

    .prologue
    .line 988
    iput p2, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->b:I

    .line 989
    sub-int v0, p4, p2

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->a:I

    .line 990
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 1042
    const/4 v0, 0x1

    return v0
.end method
