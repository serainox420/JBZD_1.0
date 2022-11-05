.class Lcom/intentsoftware/addapptr/p;
.super Lcom/intentsoftware/addapptr/j;
.source "MultiSizeBannerPlacement.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/intentsoftware/addapptr/j;-><init>(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;Landroid/content/Context;)V

    .line 17
    iput-object p3, p0, Lcom/intentsoftware/addapptr/p;->context:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public onResume(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/j;->onResume(Landroid/app/Activity;)V

    .line 23
    iput-object p1, p0, Lcom/intentsoftware/addapptr/p;->context:Landroid/content/Context;

    .line 24
    return-void
.end method

.method protected presentNewAd()V
    .locals 6

    .prologue
    .line 28
    iget-object v0, p0, Lcom/intentsoftware/addapptr/p;->newAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/a;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/b;->getBannerSize()Lcom/intentsoftware/addapptr/BannerSize;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/intentsoftware/addapptr/p;->newAd:Lcom/intentsoftware/addapptr/ad/a;

    check-cast v0, Lcom/intentsoftware/addapptr/ad/BannerAd;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/BannerAd;->getCustomSize()Lcom/intentsoftware/addapptr/ad/BannerAd$a;

    move-result-object v0

    .line 32
    const/4 v5, 0x0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/BannerAd$a;->getWidth()I

    move-result v1

    .line 35
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/BannerAd$a;->getHeight()I

    move-result v2

    .line 36
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/BannerAd$a;->areDimensionsInPixels()Z

    move-result v5

    .line 42
    :goto_0
    new-instance v0, Lcom/intentsoftware/addapptr/k;

    iget v3, p0, Lcom/intentsoftware/addapptr/p;->gravity:I

    iget-object v4, p0, Lcom/intentsoftware/addapptr/p;->context:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/intentsoftware/addapptr/k;-><init>(IIILandroid/content/Context;Z)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/p;->placementView:Lcom/intentsoftware/addapptr/k;

    .line 44
    invoke-super {p0}, Lcom/intentsoftware/addapptr/j;->presentNewAd()V

    .line 45
    iget-object v0, p0, Lcom/intentsoftware/addapptr/p;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/u;

    .line 46
    iget-object v2, p0, Lcom/intentsoftware/addapptr/p;->placementView:Lcom/intentsoftware/addapptr/k;

    invoke-interface {v0, p0, v2}, Lcom/intentsoftware/addapptr/u;->onPlacementHaveAdWithBannerView(Lcom/intentsoftware/addapptr/s;Lcom/intentsoftware/addapptr/k;)V

    goto :goto_1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/p;->newAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/a;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/b;->getBannerSize()Lcom/intentsoftware/addapptr/BannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/BannerSize;->getWidth()I

    move-result v1

    .line 39
    iget-object v0, p0, Lcom/intentsoftware/addapptr/p;->newAd:Lcom/intentsoftware/addapptr/ad/a;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/a;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/b;->getBannerSize()Lcom/intentsoftware/addapptr/BannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/BannerSize;->getHeight()I

    move-result v2

    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    const-string v0, "Error, banner ad does not have information about size."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    :cond_2
    return-void
.end method

.method public setDefaultImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default image is not supported for placement of size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/p;->getSize()Lcom/intentsoftware/addapptr/PlacementSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/PlacementSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public setDefaultImageResource(I)V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default image is not supported for placement of size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/p;->getSize()Lcom/intentsoftware/addapptr/PlacementSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/PlacementSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method
