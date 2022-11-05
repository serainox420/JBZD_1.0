.class public Lcom/openx/view/mraid/methods/Close;
.super Ljava/lang/Object;
.source "Close.java"


# instance fields
.field private context:Landroid/content/Context;

.field jsi:Lcom/openx/view/mraid/BaseJSInterface;

.field webViewBase:Lcom/openx/view/WebViewBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/mraid/BaseJSInterface;Lcom/openx/view/WebViewBase;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/openx/view/mraid/methods/Close;->context:Landroid/content/Context;

    .line 26
    iput-object p3, p0, Lcom/openx/view/mraid/methods/Close;->webViewBase:Lcom/openx/view/WebViewBase;

    .line 27
    iput-object p2, p0, Lcom/openx/view/mraid/methods/Close;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/openx/view/mraid/methods/Close;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Close;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/openx/view/mraid/methods/Close;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/openx/view/mraid/methods/Close;->makeViewInvisible()V

    return-void
.end method

.method private makeViewInvisible()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Close;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/openx/view/mraid/methods/Close$2;

    invoke-direct {v1, p0}, Lcom/openx/view/mraid/methods/Close$2;-><init>(Lcom/openx/view/mraid/methods/Close;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method


# virtual methods
.method public closeThroughJS(Z)V
    .locals 2

    .prologue
    .line 32
    const-string v0, "perm_granted"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Close;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    new-instance v1, Lcom/openx/view/mraid/methods/Close$1;

    invoke-direct {v1, p0}, Lcom/openx/view/mraid/methods/Close$1;-><init>(Lcom/openx/view/mraid/methods/Close;)V

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/BaseJSInterface;->getState(Landroid/os/Handler;)V

    .line 87
    return-void
.end method
