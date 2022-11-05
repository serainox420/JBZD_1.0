.class public Lcom/openx/dialogs/AdExpandedDialog;
.super Lcom/openx/dialogs/AdBaseDialog;
.source "AdExpandedDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/WebViewBase;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/openx/dialogs/AdBaseDialog;-><init>(Landroid/content/Context;Lcom/openx/view/WebViewBase;)V

    .line 21
    iget-object v0, p0, Lcom/openx/dialogs/AdExpandedDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->detachFromParent()Landroid/view/ViewGroup;

    .line 23
    iget-object v0, p0, Lcom/openx/dialogs/AdExpandedDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getPreloadedListener()Lcom/openx/view/video/PreloadManager$PreloadedListener;

    move-result-object v0

    check-cast v0, Lcom/openx/view/AdBanner;

    .line 24
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/openx/view/AdBanner;->setVisibility(I)V

    .line 26
    invoke-virtual {p0}, Lcom/openx/dialogs/AdExpandedDialog;->preInit()V

    .line 28
    new-instance v0, Lcom/openx/dialogs/AdExpandedDialog$1;

    invoke-direct {v0, p0}, Lcom/openx/dialogs/AdExpandedDialog$1;-><init>(Lcom/openx/dialogs/AdExpandedDialog;)V

    invoke-virtual {p0, v0}, Lcom/openx/dialogs/AdExpandedDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 48
    iget-object v0, p0, Lcom/openx/dialogs/AdExpandedDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0, p0}, Lcom/openx/view/WebViewBase;->setDialog(Lcom/openx/dialogs/AdBaseDialog;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected renderCustomClose()V
    .locals 6

    .prologue
    const/4 v3, -0x2

    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 54
    new-instance v0, Lcom/openx/view/AdCloseButton;

    iget-object v1, p0, Lcom/openx/dialogs/AdExpandedDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/openx/view/AdCloseButton;-><init>(Landroid/content/Context;)V

    .line 55
    const v1, 0xdaed3

    invoke-virtual {v0, v1}, Lcom/openx/view/AdCloseButton;->setId(I)V

    .line 58
    invoke-virtual {p0}, Lcom/openx/dialogs/AdExpandedDialog;->getAvailableScreenSize()[I

    move-result-object v1

    aget v1, v1, v4

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v1, v1, 0x64

    .line 59
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 62
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 63
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 64
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 65
    invoke-virtual {v0, v1, v4, v4, v1}, Lcom/openx/view/AdCloseButton;->setPadding(IIII)V

    .line 67
    new-instance v1, Lcom/openx/dialogs/AdExpandedDialog$2;

    invoke-direct {v1, p0}, Lcom/openx/dialogs/AdExpandedDialog$2;-><init>(Lcom/openx/dialogs/AdExpandedDialog;)V

    invoke-virtual {v0, v1}, Lcom/openx/view/AdCloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v1, p0, Lcom/openx/dialogs/AdExpandedDialog;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-void
.end method
