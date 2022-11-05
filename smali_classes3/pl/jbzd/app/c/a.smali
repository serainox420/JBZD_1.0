.class public final Lpl/jbzd/app/c/a;
.super Ljava/lang/Object;
.source "AppUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Lpl/jbzd/app/model/Media;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/FrameLayout;I)[I
    .locals 5

    .prologue
    const/high16 v3, 0x40400000    # 3.0f

    .line 21
    invoke-virtual {p1}, Lpl/jbzd/app/model/Media;->realmGet$width()I

    move-result v0

    .line 23
    invoke-virtual {p1}, Lpl/jbzd/app/model/Media;->realmGet$ratio()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lpl/jbzd/app/model/Media;->realmGet$ratio()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 25
    :cond_0
    iput p5, p1, Lpl/jbzd/app/model/Media;->maxHeight:I

    move v0, p5

    .line 39
    :goto_0
    if-eqz p2, :cond_1

    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 42
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 43
    iput p5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 44
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    :cond_1
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 48
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 49
    iput p5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    if-eqz p4, :cond_2

    .line 53
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 54
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 55
    iput p5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p5, v1, v0

    return-object v1

    .line 29
    :cond_3
    int-to-float v1, p5

    int-to-float v2, v0

    div-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    .line 30
    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int p5, v0

    .line 36
    :cond_4
    int-to-float v0, p5

    invoke-virtual {p1}, Lpl/jbzd/app/model/Media;->realmGet$ratio()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lpl/jbzd/app/model/Media;->maxHeight:I

    move v4, v0

    move v0, p5

    move p5, v4

    goto :goto_0
.end method
