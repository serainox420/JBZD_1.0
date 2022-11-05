.class Lcom/smaato/soma/interstitial/Interstitial$6;
.super Lcom/smaato/soma/l;
.source "Interstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/interstitial/Interstitial;->e()V
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
.field final synthetic a:Lcom/smaato/soma/interstitial/Interstitial;


# direct methods
.method constructor <init>(Lcom/smaato/soma/interstitial/Interstitial;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/smaato/soma/interstitial/Interstitial$6;->a:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 320
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/settings/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial$6;->a:Lcom/smaato/soma/interstitial/Interstitial;

    sget-object v1, Lcom/smaato/soma/interstitial/Interstitial$InterstitialOrientation;->PORTRAIT:Lcom/smaato/soma/interstitial/Interstitial$InterstitialOrientation;

    invoke-static {v0, v1}, Lcom/smaato/soma/interstitial/Interstitial;->a(Lcom/smaato/soma/interstitial/Interstitial;Lcom/smaato/soma/interstitial/Interstitial$InterstitialOrientation;)V

    .line 325
    :goto_0
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->a:Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b;->e()V

    .line 327
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/settings/a;->m()V

    .line 328
    const/4 v0, 0x0

    return-object v0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial$6;->a:Lcom/smaato/soma/interstitial/Interstitial;

    sget-object v1, Lcom/smaato/soma/interstitial/Interstitial$InterstitialOrientation;->LANDSCAPE:Lcom/smaato/soma/interstitial/Interstitial$InterstitialOrientation;

    invoke-static {v0, v1}, Lcom/smaato/soma/interstitial/Interstitial;->a(Lcom/smaato/soma/interstitial/Interstitial;Lcom/smaato/soma/interstitial/Interstitial$InterstitialOrientation;)V

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
    .line 317
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/Interstitial$6;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
