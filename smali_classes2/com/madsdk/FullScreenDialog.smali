.class public Lcom/madsdk/FullScreenDialog;
.super Landroid/app/Dialog;
.source "FullScreenDialog.java"


# instance fields
.field private mCloseButton:Landroid/widget/ImageButton;

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mWebView:Lcom/madsdk/AdWebView;

.field private mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/madsdk/javascript/MraidEventsListener;)V
    .locals 1

    .prologue
    .line 23
    const v0, 0x103000a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 24
    iput-object p2, p0, Lcom/madsdk/FullScreenDialog;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    .line 25
    invoke-direct {p0, p1}, Lcom/madsdk/FullScreenDialog;->init(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/madsdk/FullScreenDialog;)Lcom/madsdk/javascript/MraidEventsListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/madsdk/FullScreenDialog;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 29
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/madsdk/FullScreenDialog;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 30
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/madsdk/FullScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/madsdk/FullScreenDialog;->mCloseButton:Landroid/widget/ImageButton;

    .line 31
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800005

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/madsdk/R$dimen;->close_button_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 33
    iget-object v2, p0, Lcom/madsdk/FullScreenDialog;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 34
    iget-object v1, p0, Lcom/madsdk/FullScreenDialog;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object v0, p0, Lcom/madsdk/FullScreenDialog;->mCloseButton:Landroid/widget/ImageButton;

    sget v1, Lcom/madsdk/R$drawable;->ic_clear_white_24dp:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 36
    iget-object v0, p0, Lcom/madsdk/FullScreenDialog;->mCloseButton:Landroid/widget/ImageButton;

    const v1, 0x10800a9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 37
    iget-object v0, p0, Lcom/madsdk/FullScreenDialog;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/madsdk/FullScreenDialog$1;

    invoke-direct {v1, p0}, Lcom/madsdk/FullScreenDialog$1;-><init>(Lcom/madsdk/FullScreenDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/madsdk/FullScreenDialog;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/madsdk/FullScreenDialog;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 44
    iget-object v0, p0, Lcom/madsdk/FullScreenDialog;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/madsdk/FullScreenDialog;->setContentView(Landroid/view/View;)V

    .line 45
    return-void
.end method


# virtual methods
.method public addWebView(Lcom/madsdk/AdWebView;Landroid/widget/FrameLayout$LayoutParams;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    iput-object p1, p0, Lcom/madsdk/FullScreenDialog;->mWebView:Lcom/madsdk/AdWebView;

    .line 50
    invoke-virtual {p0}, Lcom/madsdk/FullScreenDialog;->removeWebView()V

    .line 51
    iget-object v0, p0, Lcom/madsdk/FullScreenDialog;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 52
    if-eqz p3, :cond_0

    .line 53
    iget-object v0, p0, Lcom/madsdk/FullScreenDialog;->mCloseButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/madsdk/FullScreenDialog;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideButton()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/madsdk/FullScreenDialog;->mCloseButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 66
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/madsdk/FullScreenDialog;->mraidEventsListener:Lcom/madsdk/javascript/MraidEventsListener;

    invoke-interface {v0}, Lcom/madsdk/javascript/MraidEventsListener;->close()V

    .line 71
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 72
    return-void
.end method

.method public removeWebView()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/madsdk/FullScreenDialog;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/madsdk/FullScreenDialog;->mWebView:Lcom/madsdk/AdWebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method public showButton()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/madsdk/FullScreenDialog;->mCloseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 61
    return-void
.end method
