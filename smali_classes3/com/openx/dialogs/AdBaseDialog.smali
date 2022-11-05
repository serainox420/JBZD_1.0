.class public Lcom/openx/dialogs/AdBaseDialog;
.super Landroid/app/Dialog;
.source "AdBaseDialog.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# static fields
.field protected static final CUSTOM_CLOSE_BUTTON_ID:I = 0xdaed3


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected allowOrientationChange:Z

.field protected container:Landroid/widget/RelativeLayout;

.field protected densityScalingEnabled:Z

.field protected forceOrientation:Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

.field protected hasCustomClose:Z

.field protected hasExpandProperties:Z

.field protected hasOrientationProperties:Z

.field protected mAvailableScreenSize:[I

.field protected mContentViewToAdjustWhenDeviceRotated:Lcom/openx/view/WebViewBase;

.field protected mDefinedHeightForExpand:I

.field protected mDefinedWidthForExpand:I

.field protected mOrientationManager:Lcom/openx/view/mraid/OrientationManager;

.field protected trackImpression:Z

.field protected webViewBase:Lcom/openx/view/WebViewBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/WebViewBase;)V
    .locals 1

    .prologue
    .line 58
    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    sget-object v0, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;->none:Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    iput-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->forceOrientation:Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    .line 60
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/openx/dialogs/AdBaseDialog;->activity:Landroid/app/Activity;

    .line 62
    iput-object p2, p0, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    .line 64
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    instance-of v0, v0, Lcom/openx/view/WebViewBanner;

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/dialogs/AdBaseDialog;->trackImpression:Z

    .line 69
    :goto_0
    new-instance v0, Lcom/openx/dialogs/AdBaseDialog$1;

    invoke-direct {v0, p0}, Lcom/openx/dialogs/AdBaseDialog$1;-><init>(Lcom/openx/dialogs/AdBaseDialog;)V

    invoke-virtual {p0, v0}, Lcom/openx/dialogs/AdBaseDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 80
    new-instance v0, Lcom/openx/dialogs/AdBaseDialog$2;

    invoke-direct {v0, p0}, Lcom/openx/dialogs/AdBaseDialog$2;-><init>(Lcom/openx/dialogs/AdBaseDialog;)V

    invoke-virtual {p0, v0}, Lcom/openx/dialogs/AdBaseDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 92
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/dialogs/AdBaseDialog;->trackImpression:Z

    goto :goto_0
.end method

.method private MRAIDGetExpandProperties()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getMRAID()Lcom/openx/view/mraid/BaseJSInterface;

    move-result-object v0

    new-instance v1, Lcom/openx/dialogs/AdBaseDialog$3;

    invoke-direct {v1, p0}, Lcom/openx/dialogs/AdBaseDialog$3;-><init>(Lcom/openx/dialogs/AdBaseDialog;)V

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/BaseJSInterface;->getExpandProperties(Landroid/os/Handler;)V

    .line 229
    return-void
.end method

.method private MRAIDGetOrientationProperties()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getMRAID()Lcom/openx/view/mraid/BaseJSInterface;

    move-result-object v0

    new-instance v1, Lcom/openx/dialogs/AdBaseDialog$4;

    invoke-direct {v1, p0}, Lcom/openx/dialogs/AdBaseDialog$4;-><init>(Lcom/openx/dialogs/AdBaseDialog;)V

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/BaseJSInterface;->getOrientationProperties(Landroid/os/Handler;)V

    .line 283
    return-void
.end method

.method private getContentViewToAdjustWhenDeviceRotated()Lcom/openx/view/WebViewBase;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->mContentViewToAdjustWhenDeviceRotated:Lcom/openx/view/WebViewBase;

    return-object v0
.end method


# virtual methods
.method protected MRAIDContinue()V
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/openx/dialogs/AdBaseDialog;->hasExpandProperties:Z

    if-nez v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/openx/dialogs/AdBaseDialog;->MRAIDGetExpandProperties()V

    .line 294
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-boolean v0, p0, Lcom/openx/dialogs/AdBaseDialog;->hasOrientationProperties:Z

    if-nez v0, :cond_1

    .line 291
    invoke-direct {p0}, Lcom/openx/dialogs/AdBaseDialog;->MRAIDGetOrientationProperties()V

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/openx/dialogs/AdBaseDialog;->init()V

    goto :goto_0
.end method

.method protected getAvailableScreenSize()[I
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->mAvailableScreenSize:[I

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/openx/dialogs/AdBaseDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 130
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/openx/dialogs/AdBaseDialog;->mAvailableScreenSize:[I

    .line 131
    iget-object v1, p0, Lcom/openx/dialogs/AdBaseDialog;->mAvailableScreenSize:[I

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    aput v3, v1, v2

    .line 132
    iget-object v1, p0, Lcom/openx/dialogs/AdBaseDialog;->mAvailableScreenSize:[I

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    aput v0, v1, v2

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->mAvailableScreenSize:[I

    return-object v0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->stoppedLoading()V

    .line 301
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->isMRAID()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getMRAID()Lcom/openx/view/mraid/BaseJSInterface;

    move-result-object v0

    const-string v1, "expanded"

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/BaseJSInterface;->onStateChange(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getMRAID()Lcom/openx/view/mraid/BaseJSInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/BaseJSInterface;->onViewableChange(Z)V

    .line 306
    invoke-virtual {p0}, Lcom/openx/dialogs/AdBaseDialog;->showAdjustedExpandedAdView()V

    .line 308
    new-instance v0, Lcom/openx/view/mraid/OrientationManager;

    iget-object v1, p0, Lcom/openx/dialogs/AdBaseDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/openx/view/mraid/OrientationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->mOrientationManager:Lcom/openx/view/mraid/OrientationManager;

    .line 310
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->mOrientationManager:Lcom/openx/view/mraid/OrientationManager;

    iget-boolean v1, p0, Lcom/openx/dialogs/AdBaseDialog;->allowOrientationChange:Z

    iget-object v2, p0, Lcom/openx/dialogs/AdBaseDialog;->forceOrientation:Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    invoke-virtual {v0, v1, v2}, Lcom/openx/view/mraid/OrientationManager;->onOrientationPropertiesChanged(ZLcom/openx/view/mraid/OrientationManager$ForcedOrientation;)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    iget-boolean v1, p0, Lcom/openx/dialogs/AdBaseDialog;->trackImpression:Z

    invoke-static {v0, v1}, Lcom/openx/view/AdBase;->renderAd(Lcom/openx/view/WebViewBase;Z)V

    .line 315
    iget-boolean v0, p0, Lcom/openx/dialogs/AdBaseDialog;->hasCustomClose:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/openx/dialogs/AdBaseDialog;->renderCustomClose()V

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->requestLayout()V

    .line 318
    return-void
.end method

.method protected isDensityScalingEnabled()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/openx/dialogs/AdBaseDialog;->densityScalingEnabled:Z

    return v0
.end method

.method protected preInit()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 96
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/openx/dialogs/AdBaseDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->container:Landroid/widget/RelativeLayout;

    .line 98
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 100
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 102
    iget-object v1, p0, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v1, v0}, Lcom/openx/view/WebViewBase;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewBase;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->isMRAID()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/openx/dialogs/AdBaseDialog;->MRAIDContinue()V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->container:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 111
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/openx/dialogs/AdBaseDialog;->init()V

    goto :goto_0
.end method

.method protected renderCustomClose()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method protected showAdjustedExpandedAdView()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 139
    invoke-direct {p0}, Lcom/openx/dialogs/AdBaseDialog;->getContentViewToAdjustWhenDeviceRotated()Lcom/openx/view/WebViewBase;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 141
    invoke-virtual {p0}, Lcom/openx/dialogs/AdBaseDialog;->getAvailableScreenSize()[I

    move-result-object v3

    .line 143
    iget v2, p0, Lcom/openx/dialogs/AdBaseDialog;->mDefinedWidthForExpand:I

    .line 144
    iget v0, p0, Lcom/openx/dialogs/AdBaseDialog;->mDefinedHeightForExpand:I

    .line 146
    invoke-virtual {p0}, Lcom/openx/dialogs/AdBaseDialog;->isDensityScalingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    int-to-float v2, v2

    sget v4, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 149
    int-to-float v0, v0

    sget v4, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 152
    :cond_0
    if-eqz v2, :cond_1

    const/4 v4, 0x0

    aget v4, v3, v4

    if-le v2, v4, :cond_2

    :cond_1
    move v2, v1

    .line 157
    :cond_2
    if-eqz v0, :cond_3

    const/4 v4, 0x1

    aget v3, v3, v4

    if-le v0, v3, :cond_4

    :cond_3
    move v0, v1

    .line 162
    :cond_4
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 164
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewBase;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    :cond_5
    return-void
.end method
