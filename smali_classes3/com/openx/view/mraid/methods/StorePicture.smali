.class public Lcom/openx/view/mraid/methods/StorePicture;
.super Ljava/lang/Object;
.source "StorePicture.java"


# instance fields
.field private adBaseView:Lcom/openx/view/WebViewBase;

.field private context:Landroid/content/Context;

.field private jsi:Lcom/openx/view/mraid/BaseJSInterface;

.field private mUrlToStore:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/mraid/BaseJSInterface;Lcom/openx/view/WebViewBase;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/view/mraid/methods/StorePicture;->mUrlToStore:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/openx/view/mraid/methods/StorePicture;->context:Landroid/content/Context;

    .line 27
    iput-object p3, p0, Lcom/openx/view/mraid/methods/StorePicture;->adBaseView:Lcom/openx/view/WebViewBase;

    .line 28
    iput-object p2, p0, Lcom/openx/view/mraid/methods/StorePicture;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/openx/view/mraid/methods/StorePicture;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/openx/view/mraid/methods/StorePicture;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/openx/view/mraid/methods/StorePicture;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/openx/view/mraid/methods/StorePicture;->mUrlToStore:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/openx/view/mraid/methods/StorePicture;)Lcom/openx/view/mraid/BaseJSInterface;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/openx/view/mraid/methods/StorePicture;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    return-object v0
.end method


# virtual methods
.method public storePicture(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iput-object p1, p0, Lcom/openx/view/mraid/methods/StorePicture;->mUrlToStore:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/openx/view/mraid/methods/StorePicture;->adBaseView:Lcom/openx/view/WebViewBase;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/openx/view/mraid/methods/StorePicture;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/openx/view/mraid/methods/StorePicture$1;

    invoke-direct {v1, p0}, Lcom/openx/view/mraid/methods/StorePicture$1;-><init>(Lcom/openx/view/mraid/methods/StorePicture;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 93
    :cond_0
    return-void
.end method
