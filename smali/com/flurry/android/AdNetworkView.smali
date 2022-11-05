.class public abstract Lcom/flurry/android/AdNetworkView;
.super Lcom/flurry/sdk/gz;
.source "SourceFile"


# instance fields
.field private final a:Lcom/flurry/android/AdCreative;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/AdCreative;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0, v0}, Lcom/flurry/sdk/gz;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V

    .line 22
    iput-object p2, p0, Lcom/flurry/android/AdNetworkView;->a:Lcom/flurry/android/AdCreative;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/android/AdCreative;)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/sdk/gz;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V

    .line 17
    iput-object p3, p0, Lcom/flurry/android/AdNetworkView;->a:Lcom/flurry/android/AdCreative;

    .line 18
    return-void
.end method


# virtual methods
.method public getAdCreative()Lcom/flurry/android/AdCreative;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/flurry/android/AdNetworkView;->a:Lcom/flurry/android/AdCreative;

    return-object v0
.end method

.method public onAdClicked(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lcom/flurry/sdk/bc;->h:Lcom/flurry/sdk/bc;

    invoke-super {p0, v0, p1}, Lcom/flurry/sdk/gz;->onEvent(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 47
    return-void
.end method

.method public onAdClosed(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lcom/flurry/sdk/bc;->v:Lcom/flurry/sdk/bc;

    invoke-super {p0, v0, p1}, Lcom/flurry/sdk/gz;->onEvent(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 51
    return-void
.end method

.method public onAdFilled(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lcom/flurry/sdk/bc;->d:Lcom/flurry/sdk/bc;

    invoke-super {p0, v0, p1}, Lcom/flurry/sdk/gz;->onEvent(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 31
    return-void
.end method

.method public onAdPrepared(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lcom/flurry/sdk/bc;->P:Lcom/flurry/sdk/bc;

    invoke-super {p0, v0, p1}, Lcom/flurry/sdk/gz;->onEvent(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 39
    return-void
.end method

.method public onAdShown(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    invoke-super {p0, v0, p1}, Lcom/flurry/sdk/gz;->onEvent(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method public onAdUnFilled(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lcom/flurry/sdk/bc;->e:Lcom/flurry/sdk/bc;

    invoke-super {p0, v0, p1}, Lcom/flurry/sdk/gz;->onEvent(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 35
    return-void
.end method

.method public onRenderFailed(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/flurry/sdk/bc;->g:Lcom/flurry/sdk/bc;

    invoke-super {p0, v0, p1}, Lcom/flurry/sdk/gz;->onEvent(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 55
    return-void
.end method
