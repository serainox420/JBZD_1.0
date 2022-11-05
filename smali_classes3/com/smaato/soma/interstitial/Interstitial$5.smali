.class Lcom/smaato/soma/interstitial/Interstitial$5;
.super Lcom/smaato/soma/l;
.source "Interstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/interstitial/Interstitial;->onReceiveAd(Lcom/smaato/soma/b;Lcom/smaato/soma/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/p;

.field final synthetic b:Lcom/smaato/soma/interstitial/Interstitial;


# direct methods
.method constructor <init>(Lcom/smaato/soma/interstitial/Interstitial;Lcom/smaato/soma/p;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/smaato/soma/interstitial/Interstitial$5;->b:Lcom/smaato/soma/interstitial/Interstitial;

    iput-object p2, p0, Lcom/smaato/soma/interstitial/Interstitial$5;->a:Lcom/smaato/soma/p;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 278
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->b:Lcom/smaato/soma/interstitial/a;

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-object v4

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial$5;->a:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->a()Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->SUCCESS:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial$5;->a:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->a:Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0, v3}, Lcom/smaato/soma/interstitial/b;->setShouldNotifyIdle(Z)V

    .line 284
    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial$5;->b:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-static {v0, v2}, Lcom/smaato/soma/interstitial/Interstitial;->a(Lcom/smaato/soma/interstitial/Interstitial;Z)Z

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial$5;->a:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial$5;->b:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-static {v0, v3}, Lcom/smaato/soma/interstitial/Interstitial;->a(Lcom/smaato/soma/interstitial/Interstitial;Z)Z

    .line 287
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->a:Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0, v3}, Lcom/smaato/soma/interstitial/b;->setShouldNotifyIdle(Z)V

    goto :goto_0

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial$5;->b:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-static {v0, v2}, Lcom/smaato/soma/interstitial/Interstitial;->a(Lcom/smaato/soma/interstitial/Interstitial;Z)Z

    .line 290
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->a:Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0, v2}, Lcom/smaato/soma/interstitial/b;->setShouldNotifyIdle(Z)V

    .line 291
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->b:Lcom/smaato/soma/interstitial/a;

    invoke-interface {v0}, Lcom/smaato/soma/interstitial/a;->onFailedToLoadAd()V

    .line 292
    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial$5;->b:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial;->h()V

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/Interstitial$5;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
