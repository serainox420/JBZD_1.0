.class public Lcom/openx/view/mraid/methods/Resize;
.super Ljava/lang/Object;
.source "Resize.java"


# instance fields
.field adBaseView:Lcom/openx/view/WebViewBase;

.field private context:Landroid/content/Context;

.field private customCloseButton:Lcom/openx/view/AdCloseButton;

.field jsi:Lcom/openx/view/mraid/BaseJSInterface;

.field mResizeProperties:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/mraid/BaseJSInterface;Lcom/openx/view/WebViewBase;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/openx/view/mraid/methods/Resize;->context:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lcom/openx/view/mraid/methods/Resize;->adBaseView:Lcom/openx/view/WebViewBase;

    .line 38
    iput-object p2, p0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/openx/view/mraid/methods/Resize;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/openx/view/mraid/methods/Resize;->setResizeProperties(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/openx/view/mraid/methods/Resize;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/openx/view/mraid/methods/Resize;->getResizeProperties()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/openx/view/mraid/methods/Resize;IIIILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p6}, Lcom/openx/view/mraid/methods/Resize;->showExpandDialog(IIIILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/openx/view/mraid/methods/Resize;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/openx/view/mraid/methods/Resize;->positionCloseButton(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/openx/view/mraid/methods/Resize;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/openx/view/mraid/methods/Resize;)Lcom/openx/view/AdCloseButton;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize;->customCloseButton:Lcom/openx/view/AdCloseButton;

    return-object v0
.end method

.method static synthetic access$502(Lcom/openx/view/mraid/methods/Resize;Lcom/openx/view/AdCloseButton;)Lcom/openx/view/AdCloseButton;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/openx/view/mraid/methods/Resize;->customCloseButton:Lcom/openx/view/AdCloseButton;

    return-object p1
.end method

.method private getResizeProperties()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize;->mResizeProperties:Ljava/lang/String;

    return-object v0
.end method

.method private positionCloseButton(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x32

    .line 223
    const/16 v0, 0x35

    .line 225
    const-string v1, "top-left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    const/16 v0, 0x33

    .line 250
    :cond_0
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 252
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize;->customCloseButton:Lcom/openx/view/AdCloseButton;

    invoke-virtual {v0, v1}, Lcom/openx/view/AdCloseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    return-void

    .line 229
    :cond_1
    const-string v1, "center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    const/16 v0, 0x11

    goto :goto_0

    .line 233
    :cond_2
    const-string v1, "bottom-left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    const/16 v0, 0x53

    goto :goto_0

    .line 237
    :cond_3
    const-string v1, "bottom-right"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 239
    const/16 v0, 0x55

    goto :goto_0

    .line 241
    :cond_4
    const-string v1, "top-center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 243
    const/16 v0, 0x31

    goto :goto_0

    .line 245
    :cond_5
    const-string v1, "bottom-center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const/16 v0, 0x51

    goto :goto_0
.end method

.method private setResizeProperties(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/openx/view/mraid/methods/Resize;->mResizeProperties:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private showExpandDialog(IIIILjava/lang/String;Z)V
    .locals 9

    .prologue
    .line 133
    iget-object v8, p0, Lcom/openx/view/mraid/methods/Resize;->adBaseView:Lcom/openx/view/WebViewBase;

    new-instance v0, Lcom/openx/view/mraid/methods/Resize$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/openx/view/mraid/methods/Resize$2;-><init>(Lcom/openx/view/mraid/methods/Resize;IIIILjava/lang/String;Z)V

    invoke-virtual {v8, v0}, Lcom/openx/view/WebViewBase;->post(Ljava/lang/Runnable;)Z

    .line 218
    return-void
.end method


# virtual methods
.method public resize()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/view/mraid/methods/Resize;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0, v1}, Lcom/openx/core/sdk/OXMManagersResolver;->setCurrentAd(Lcom/openx/view/WebViewBase;)V

    .line 55
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    new-instance v1, Lcom/openx/view/mraid/methods/Resize$1;

    invoke-direct {v1, p0}, Lcom/openx/view/mraid/methods/Resize$1;-><init>(Lcom/openx/view/mraid/methods/Resize;)V

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/BaseJSInterface;->getState(Landroid/os/Handler;)V

    .line 128
    return-void
.end method
