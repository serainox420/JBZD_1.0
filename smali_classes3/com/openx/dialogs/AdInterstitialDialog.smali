.class public Lcom/openx/dialogs/AdInterstitialDialog;
.super Lcom/openx/dialogs/AdBaseDialog;
.source "AdInterstitialDialog.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/dialogs/AdInterstitialDialog$4;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private initialOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/WebViewBase;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/openx/dialogs/AdBaseDialog;-><init>(Landroid/content/Context;Lcom/openx/view/WebViewBase;)V

    .line 37
    iput-object p1, p0, Lcom/openx/dialogs/AdInterstitialDialog;->context:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/openx/dialogs/AdInterstitialDialog;->setInitialOrientation()V

    .line 41
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->isMRAID()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/openx/dialogs/AdInterstitialDialog;->lockScreenOrientation()V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    check-cast v0, Lcom/openx/view/WebViewInterstitial;

    iget-boolean v0, v0, Lcom/openx/view/WebViewInterstitial;->isImage:Z

    if-eqz v0, :cond_1

    .line 47
    invoke-direct {p0}, Lcom/openx/dialogs/AdInterstitialDialog;->initImageInterstitial()V

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getPreloadedListener()Lcom/openx/view/video/PreloadManager$PreloadedListener;

    move-result-object v0

    check-cast v0, Lcom/openx/view/AdInterstitial;

    .line 53
    iget-object v1, p0, Lcom/openx/dialogs/AdInterstitialDialog;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Lcom/openx/view/AdInterstitial;->getBackgroundOpacity()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 55
    invoke-direct {p0}, Lcom/openx/dialogs/AdInterstitialDialog;->setListeners()V

    .line 57
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0, p0}, Lcom/openx/view/WebViewBase;->setDialog(Lcom/openx/dialogs/AdBaseDialog;)V

    .line 59
    return-void

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/openx/dialogs/AdInterstitialDialog;->preInit()V

    goto :goto_0
.end method

.method private imageClickListener(Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/openx/dialogs/AdInterstitialDialog$2;

    invoke-direct {v0, p0}, Lcom/openx/dialogs/AdInterstitialDialog$2;-><init>(Lcom/openx/dialogs/AdInterstitialDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void
.end method

.method private initImageInterstitial()V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/openx/dialogs/AdInterstitialDialog;->initImageView()V

    .line 95
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->stoppedLoading()V

    .line 97
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    iget-boolean v1, p0, Lcom/openx/dialogs/AdInterstitialDialog;->trackImpression:Z

    invoke-static {v0, v1}, Lcom/openx/view/AdBase;->renderAd(Lcom/openx/view/WebViewBase;Z)V

    .line 99
    invoke-virtual {p0}, Lcom/openx/dialogs/AdInterstitialDialog;->renderCustomClose()V

    .line 101
    return-void
.end method

.method private initImageView()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 106
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/openx/dialogs/AdInterstitialDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog;->container:Landroid/widget/RelativeLayout;

    .line 107
    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 111
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 113
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    check-cast v0, Lcom/openx/view/WebViewInterstitial;

    invoke-virtual {v0}, Lcom/openx/view/WebViewInterstitial;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 119
    invoke-direct {p0, v1}, Lcom/openx/dialogs/AdInterstitialDialog;->imageClickListener(Landroid/widget/ImageView;)V

    .line 121
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method private setCloseBtnLayout(Lcom/openx/view/AdCloseButton;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 6

    .prologue
    const/4 v3, -0x2

    const/4 v5, 0x0

    const/16 v4, 0xa

    .line 207
    invoke-virtual {p0}, Lcom/openx/dialogs/AdInterstitialDialog;->getAvailableScreenSize()[I

    move-result-object v0

    aget v0, v0, v5

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v1, v0, 0x64

    .line 209
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 211
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getPreloadedListener()Lcom/openx/view/video/PreloadManager$PreloadedListener;

    move-result-object v0

    check-cast v0, Lcom/openx/view/AdInterstitial;

    .line 213
    invoke-virtual {v0}, Lcom/openx/view/AdInterstitial;->getClosePosition()Lcom/openx/view/AdInterstitial$ClosePosition;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v0, Lcom/openx/view/AdInterstitial$ClosePosition;->SCREEN_TOP_RIGHT:Lcom/openx/view/AdInterstitial$ClosePosition;

    .line 215
    :goto_0
    sget-object v3, Lcom/openx/dialogs/AdInterstitialDialog$4;->$SwitchMap$com$openx$view$AdInterstitial$ClosePosition:[I

    invoke-virtual {v0}, Lcom/openx/view/AdInterstitial$ClosePosition;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 228
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 229
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 231
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 232
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 233
    invoke-virtual {p1, v1, v5, v5, v1}, Lcom/openx/view/AdCloseButton;->setPadding(IIII)V

    .line 236
    :goto_1
    return-object v2

    .line 213
    :cond_0
    invoke-virtual {v0}, Lcom/openx/view/AdInterstitial;->getClosePosition()Lcom/openx/view/AdInterstitial$ClosePosition;

    move-result-object v0

    goto :goto_0

    .line 218
    :pswitch_0
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 219
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 221
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 222
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 223
    invoke-virtual {p1, v5, v5, v1, v1}, Lcom/openx/view/AdCloseButton;->setPadding(IIII)V

    goto :goto_1

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setInitialOrientation()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/openx/dialogs/AdInterstitialDialog;->initialOrientation:I

    .line 174
    return-void
.end method

.method private setListeners()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/openx/dialogs/AdInterstitialDialog$1;

    invoke-direct {v0, p0}, Lcom/openx/dialogs/AdInterstitialDialog$1;-><init>(Lcom/openx/dialogs/AdInterstitialDialog;)V

    invoke-virtual {p0, v0}, Lcom/openx/dialogs/AdInterstitialDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 88
    return-void
.end method


# virtual methods
.method public lockScreenOrientation()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-gt v1, v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected renderCustomClose()V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Lcom/openx/view/AdCloseButton;

    iget-object v1, p0, Lcom/openx/dialogs/AdInterstitialDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/openx/view/AdCloseButton;-><init>(Landroid/content/Context;)V

    .line 187
    const v1, 0xdaed3

    invoke-virtual {v0, v1}, Lcom/openx/view/AdCloseButton;->setId(I)V

    .line 189
    invoke-direct {p0, v0}, Lcom/openx/dialogs/AdInterstitialDialog;->setCloseBtnLayout(Lcom/openx/view/AdCloseButton;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 191
    new-instance v2, Lcom/openx/dialogs/AdInterstitialDialog$3;

    invoke-direct {v2, p0}, Lcom/openx/dialogs/AdInterstitialDialog$3;-><init>(Lcom/openx/dialogs/AdInterstitialDialog;)V

    invoke-virtual {v0, v2}, Lcom/openx/view/AdCloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v2, p0, Lcom/openx/dialogs/AdInterstitialDialog;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    invoke-virtual {v0}, Lcom/openx/view/AdCloseButton;->bringToFront()V

    .line 203
    return-void
.end method

.method public resetInitialOrientation()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/openx/dialogs/AdInterstitialDialog;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/openx/dialogs/AdInterstitialDialog;->initialOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 181
    return-void
.end method
