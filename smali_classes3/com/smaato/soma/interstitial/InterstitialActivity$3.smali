.class Lcom/smaato/soma/interstitial/InterstitialActivity$3;
.super Lcom/smaato/soma/l;
.source "InterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/interstitial/InterstitialActivity;->onWillCloseLandingPage(Lcom/smaato/soma/j;)V
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
.field final synthetic a:Lcom/smaato/soma/interstitial/InterstitialActivity;


# direct methods
.method constructor <init>(Lcom/smaato/soma/interstitial/InterstitialActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/smaato/soma/interstitial/InterstitialActivity$3;->a:Lcom/smaato/soma/interstitial/InterstitialActivity;

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
    .line 93
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->b:Lcom/smaato/soma/interstitial/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/interstitial/InterstitialActivity$3;->a:Lcom/smaato/soma/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/InterstitialActivity;->a(Lcom/smaato/soma/interstitial/InterstitialActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->b:Lcom/smaato/soma/interstitial/a;

    invoke-interface {v0}, Lcom/smaato/soma/interstitial/a;->onWillClose()V

    .line 95
    iget-object v0, p0, Lcom/smaato/soma/interstitial/InterstitialActivity$3;->a:Lcom/smaato/soma/interstitial/InterstitialActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smaato/soma/interstitial/InterstitialActivity;->a(Lcom/smaato/soma/interstitial/InterstitialActivity;Z)Z

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/interstitial/InterstitialActivity$3;->a:Lcom/smaato/soma/interstitial/InterstitialActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/InterstitialActivity;->finish()V

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/InterstitialActivity$3;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
