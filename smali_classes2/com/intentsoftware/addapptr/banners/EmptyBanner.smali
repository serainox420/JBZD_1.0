.class public Lcom/intentsoftware/addapptr/banners/EmptyBanner;
.super Lcom/intentsoftware/addapptr/ad/BannerAd;
.source "EmptyBanner.java"


# instance fields
.field private emptyView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;-><init>()V

    return-void
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/EmptyBanner;->emptyView:Landroid/view/View;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/BannerAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 22
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/EmptyBanner;->emptyView:Landroid/view/View;

    .line 23
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/EmptyBanner;->notifyListenerThatAdWasLoaded()V

    .line 24
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/EmptyBanner;->notifyListenerThatShowingEmpty()V

    .line 25
    return-void
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/EmptyBanner;->emptyView:Landroid/view/View;

    .line 30
    return-void
.end method
