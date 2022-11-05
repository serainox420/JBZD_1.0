.class public Lcom/openx/view/AdCloseButton;
.super Landroid/widget/ImageView;
.source "AdCloseButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openx/view/AdCloseButton;->init(Landroid/content/res/Resources;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openx/view/AdCloseButton;->init(Landroid/content/res/Resources;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openx/view/AdCloseButton;->init(Landroid/content/res/Resources;)V

    .line 29
    return-void
.end method

.method private init(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/openx/android_sdk_openx/R$drawable;->openx_res_mraid_close:I

    invoke-virtual {p0, v0}, Lcom/openx/view/AdCloseButton;->setImageResource(I)V

    .line 34
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/openx/view/AdCloseButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 35
    return-void
.end method


# virtual methods
.method public placeButton()Lcom/openx/view/AdCloseButton;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method
