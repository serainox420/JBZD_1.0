.class public final Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioFrameLayout.java"


# instance fields
.field private a:F

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput v2, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->b:I

    .line 78
    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/R$styleable;->AspectRatioFrameLayout:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 82
    :try_start_0
    sget v0, Lcom/google/android/exoplayer2/R$styleable;->AspectRatioFrameLayout_resize_mode:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    :cond_0
    return-void

    .line 84
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 115
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 116
    iget v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->a:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result v1

    .line 122
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 123
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 124
    iget v3, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->a:F

    div-float v2, v3, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    .line 125
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    .line 130
    iget v3, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->b:I

    packed-switch v3, :pswitch_data_0

    .line 138
    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    .line 139
    int-to-float v0, v1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->a:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 145
    :goto_1
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 146
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 145
    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 132
    :pswitch_0
    int-to-float v0, v1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->a:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 133
    goto :goto_1

    .line 135
    :pswitch_1
    int-to-float v1, v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 136
    goto :goto_1

    .line 141
    :cond_2
    int-to-float v1, v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAspectRatio(F)V
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->a:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 96
    iput p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->a:F

    .line 97
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->requestLayout()V

    .line 99
    :cond_0
    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->b:I

    if-eq v0, p1, :cond_0

    .line 108
    iput p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->b:I

    .line 109
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->requestLayout()V

    .line 111
    :cond_0
    return-void
.end method
