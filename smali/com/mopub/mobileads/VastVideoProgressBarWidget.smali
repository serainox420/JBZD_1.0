.class public Lcom/mopub/mobileads/VastVideoProgressBarWidget;
.super Landroid/widget/ImageView;
.source "VastVideoProgressBarWidget.java"


# instance fields
.field private a:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setId(I)V

    .line 24
    new-instance v0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->a:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    .line 25
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->a:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->b:I

    .line 29
    return-void
.end method


# virtual methods
.method public calibrateAndMakeVisible(II)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->a:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->setDurationAndSkipOffset(II)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    .line 43
    return-void
.end method

.method getImageViewDrawable()Lcom/mopub/mobileads/resource/ProgressBarDrawable;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->a:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->a:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->reset()V

    .line 51
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->a:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->setProgress(I)V

    .line 52
    return-void
.end method

.method public setAnchorId(I)V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->b:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    return-void
.end method

.method setImageViewDrawable(Lcom/mopub/mobileads/resource/ProgressBarDrawable;)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->a:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    .line 66
    return-void
.end method

.method public updateProgress(I)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->a:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->setProgress(I)V

    .line 47
    return-void
.end method
