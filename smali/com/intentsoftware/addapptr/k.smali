.class public Lcom/intentsoftware/addapptr/k;
.super Landroid/widget/FrameLayout;
.source "BannerPlacementLayout.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private gravity:I

.field private final height:I

.field private loadedAd:Lcom/intentsoftware/addapptr/ad/a;

.field private final width:I


# direct methods
.method public constructor <init>(IIILandroid/content/Context;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 27
    invoke-direct {p0, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput p3, p0, Lcom/intentsoftware/addapptr/k;->gravity:I

    .line 29
    if-eqz p5, :cond_0

    .line 30
    iput p1, p0, Lcom/intentsoftware/addapptr/k;->width:I

    .line 31
    iput p2, p0, Lcom/intentsoftware/addapptr/k;->height:I

    .line 45
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 34
    if-eqz p1, :cond_1

    .line 35
    int-to-float v1, p1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-double v2, v1

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/intentsoftware/addapptr/k;->width:I

    .line 39
    :goto_1
    if-eqz p2, :cond_2

    .line 40
    int-to-float v1, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/intentsoftware/addapptr/k;->height:I

    goto :goto_0

    .line 37
    :cond_1
    iput v6, p0, Lcom/intentsoftware/addapptr/k;->width:I

    goto :goto_1

    .line 42
    :cond_2
    iput v6, p0, Lcom/intentsoftware/addapptr/k;->height:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/k;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/intentsoftware/addapptr/k;->width:I

    return v0
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/k;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/intentsoftware/addapptr/k;->height:I

    return v0
.end method

.method private adjustDimensionSpec(II)I
    .locals 3

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 56
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 57
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 59
    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 78
    :goto_0
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    .line 61
    :sswitch_0
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :sswitch_1
    move p2, v2

    .line 65
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 70
    goto :goto_0

    .line 59
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/k;->removeAllViews()V

    .line 83
    iget-object v0, p0, Lcom/intentsoftware/addapptr/k;->loadedAd:Lcom/intentsoftware/addapptr/ad/a;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/intentsoftware/addapptr/k;->loadedAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/a;->unload()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/k;->loadedAd:Lcom/intentsoftware/addapptr/ad/a;

    .line 87
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/intentsoftware/addapptr/k;->width:I

    invoke-direct {p0, p1, v0}, Lcom/intentsoftware/addapptr/k;->adjustDimensionSpec(II)I

    move-result v0

    .line 50
    iget v1, p0, Lcom/intentsoftware/addapptr/k;->height:I

    invoke-direct {p0, p2, v1}, Lcom/intentsoftware/addapptr/k;->adjustDimensionSpec(II)I

    move-result v1

    .line 52
    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 53
    return-void
.end method

.method presentAd(Lcom/intentsoftware/addapptr/ad/BannerAd;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 90
    iput-object p1, p0, Lcom/intentsoftware/addapptr/k;->loadedAd:Lcom/intentsoftware/addapptr/ad/a;

    .line 91
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/ad/BannerAd;->getBannerView()Landroid/view/View;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 100
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/intentsoftware/addapptr/k;->gravity:I

    invoke-direct {v0, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 101
    invoke-virtual {p0, v1, v0}, Lcom/intentsoftware/addapptr/k;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    new-instance v0, Lcom/intentsoftware/addapptr/k$1;

    invoke-direct {v0, p0, v1}, Lcom/intentsoftware/addapptr/k$1;-><init>(Lcom/intentsoftware/addapptr/k;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/k;->post(Ljava/lang/Runnable;)Z

    .line 117
    :cond_1
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcom/intentsoftware/addapptr/k;->gravity:I

    .line 121
    return-void
.end method
