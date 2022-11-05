.class public Lcom/mopub/mobileads/VastVideoCtaButtonWidget;
.super Landroid/widget/ImageView;
.source "VastVideoCtaButtonWidget.java"


# instance fields
.field private a:Lcom/mopub/mobileads/resource/CtaButtonDrawable;

.field private final b:Landroid/widget/RelativeLayout$LayoutParams;

.field private final c:Landroid/widget/RelativeLayout$LayoutParams;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 5

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 32
    iput-boolean p3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->f:Z

    .line 33
    iput-boolean p4, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->g:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->h:Z

    .line 36
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setId(I)V

    .line 38
    const/high16 v0, 0x43160000    # 150.0f

    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    .line 39
    const/high16 v1, 0x42180000    # 38.0f

    invoke-static {v1, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    .line 40
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 42
    new-instance v3, Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    invoke-direct {v3, p1}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->a:Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    .line 43
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->a:Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    invoke-virtual {p0, v3}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->b:Landroid/widget/RelativeLayout$LayoutParams;

    .line 47
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 48
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->b:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 49
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->b:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->c:Landroid/widget/RelativeLayout$LayoutParams;

    .line 53
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 54
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->c:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->c:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->c()V

    .line 58
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 92
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->g:Z

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    .line 133
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->d:Z

    if-nez v0, :cond_1

    .line 99
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    goto :goto_0

    .line 105
    :cond_1
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->e:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->f:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->h:Z

    if-nez v0, :cond_2

    .line 106
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 112
    packed-switch v0, :pswitch_data_0

    .line 128
    const-string v0, "Unrecognized screen orientation: CTA button widget defaulting to portrait layout"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    goto :goto_0

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 120
    :pswitch_2
    const-string v0, "Screen orientation undefined: CTA button widget defaulting to portrait layout"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 124
    :pswitch_3
    const-string v0, "Screen orientation is deprecated ORIENTATION_SQUARE: CTA button widget defaulting to portrait layout"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->d:Z

    .line 81
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->c()V

    .line 82
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->a:Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->setCtaText(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->d:Z

    .line 86
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->e:Z

    .line 87
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->c()V

    .line 88
    return-void
.end method

.method getCtaText()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->a:Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->getCtaText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getHasSocialActions()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->h:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 64
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->c()V

    .line 65
    return-void
.end method

.method setHasSocialActions(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->h:Z

    .line 73
    return-void
.end method
