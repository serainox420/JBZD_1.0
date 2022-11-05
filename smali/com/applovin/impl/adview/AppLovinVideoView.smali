.class public Lcom/applovin/impl/adview/AppLovinVideoView;
.super Landroid/widget/VideoView;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/adview/AppLovinVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/adview/AppLovinVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/applovin/impl/adview/AppLovinVideoView;->a:I

    iput v0, p0, Lcom/applovin/impl/adview/AppLovinVideoView;->b:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    iget v0, p0, Lcom/applovin/impl/adview/AppLovinVideoView;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/applovin/impl/adview/AppLovinVideoView;->b:I

    if-gtz v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onMeasure(II)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/applovin/impl/adview/AppLovinVideoView;->b:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AppLovinVideoView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/applovin/impl/adview/AppLovinVideoView;->a:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AppLovinVideoView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    iget v1, p0, Lcom/applovin/impl/adview/AppLovinVideoView;->b:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p0, Lcom/applovin/impl/adview/AppLovinVideoView;->a:I

    int-to-float v2, v2

    div-float v0, v2, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/adview/AppLovinVideoView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/applovin/impl/adview/AppLovinVideoView;->b:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    iget v0, p0, Lcom/applovin/impl/adview/AppLovinVideoView;->a:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_1
.end method

.method public setVideoSize(II)V
    .locals 1

    iput p1, p0, Lcom/applovin/impl/adview/AppLovinVideoView;->a:I

    iput p2, p0, Lcom/applovin/impl/adview/AppLovinVideoView;->b:I

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/impl/adview/AppLovinVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AppLovinVideoView;->requestLayout()V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AppLovinVideoView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
