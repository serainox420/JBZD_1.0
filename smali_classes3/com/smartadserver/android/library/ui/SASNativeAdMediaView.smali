.class public Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;
.super Landroid/widget/FrameLayout;
.source "SASNativeAdMediaView.java"


# instance fields
.field private a:Lcom/smartadserver/android/library/model/SASNativeAdElement;

.field private b:Lcom/smartadserver/android/library/SASBannerView;

.field private c:Landroid/widget/FrameLayout;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->d:Z

    .line 45
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;)Lcom/smartadserver/android/library/SASBannerView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->b:Lcom/smartadserver/android/library/SASBannerView;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 49
    new-instance v0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView$1;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView$1;-><init>(Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->b:Lcom/smartadserver/android/library/SASBannerView;

    .line 67
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->b:Lcom/smartadserver/android/library/SASBannerView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->c:Landroid/widget/FrameLayout;

    .line 70
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->c:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->c:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-void
.end method

.method private a(Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;)V
    .locals 2

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->b:Lcom/smartadserver/android/library/SASBannerView;

    iput-object p1, v0, Lcom/smartadserver/android/library/SASBannerView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    .line 126
    new-instance v0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView$2;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView$2;-><init>(Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;)V

    .line 139
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 140
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->b:Lcom/smartadserver/android/library/SASBannerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/SASBannerView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 246
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->c:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->b:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASBannerView;->d()V

    .line 248
    return-void
.end method

.method public getNativeAdElement()Lcom/smartadserver/android/library/model/SASNativeAdElement;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->a:Lcom/smartadserver/android/library/model/SASNativeAdElement;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 156
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->a:Lcom/smartadserver/android/library/model/SASNativeAdElement;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->a:Lcom/smartadserver/android/library/model/SASNativeAdElement;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->getMediaElement()Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->d:Z

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getMediaWidth()I

    move-result v2

    .line 160
    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getMediaHeight()I

    move-result v3

    .line 162
    if-lez v3, :cond_0

    if-lez v3, :cond_0

    .line 164
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 165
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 169
    int-to-float v4, v1

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 170
    int-to-float v5, v0

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 171
    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 173
    cmpl-float v3, v4, v5

    if-lez v3, :cond_1

    const/4 v3, 0x0

    cmpl-float v3, v5, v3

    if-lez v3, :cond_1

    .line 174
    int-to-float v1, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 181
    :goto_0
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 182
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 187
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 188
    return-void

    .line 178
    :cond_1
    int-to-float v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0
.end method

.method public setEnforceAspectRatio(Z)V
    .locals 0

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->d:Z

    .line 237
    return-void
.end method

.method public setNativeAdElement(Lcom/smartadserver/android/library/model/SASNativeAdElement;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 86
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->a:Lcom/smartadserver/android/library/model/SASNativeAdElement;

    if-eq v1, p1, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->a()V

    .line 88
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->a:Lcom/smartadserver/android/library/model/SASNativeAdElement;

    .line 89
    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->triggerImpressionCount()V

    .line 94
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->getSelectedMediationAd()Lcom/smartadserver/android/library/model/a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 95
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->getSelectedMediationAd()Lcom/smartadserver/android/library/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/a;->e()Lcom/smartadserver/android/library/c/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/smartadserver/android/library/c/g;->b()Lcom/smartadserver/android/library/c/g$a;

    move-result-object v1

    .line 99
    :goto_0
    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/smartadserver/android/library/c/g$a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 103
    :cond_0
    if-eqz v0, :cond_2

    .line 105
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->b:Lcom/smartadserver/android/library/SASBannerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/smartadserver/android/library/SASBannerView;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->c:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 107
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->c:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    :cond_1
    :goto_1
    return-void

    .line 111
    :cond_2
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->getMediaElement()Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    move-result-object v0

    .line 112
    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->a(Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
