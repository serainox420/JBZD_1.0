.class public Lcom/openx/view/mraid/InterstitialJSInterface;
.super Lcom/openx/view/mraid/BaseJSInterface;
.source "InterstitialJSInterface.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/WebViewBase;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/openx/view/mraid/BaseJSInterface;-><init>(Landroid/content/Context;Lcom/openx/view/WebViewBase;)V

    .line 17
    iput-object p1, p0, Lcom/openx/view/mraid/InterstitialJSInterface;->context:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public expand()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 32
    return-void
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 25
    const-string v0, "interstitial"

    return-object v0
.end method
