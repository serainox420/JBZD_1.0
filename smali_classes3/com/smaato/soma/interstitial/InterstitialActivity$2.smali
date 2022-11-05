.class Lcom/smaato/soma/interstitial/InterstitialActivity$2;
.super Lcom/smaato/soma/l;
.source "InterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/interstitial/InterstitialActivity;->onWillOpenLandingPage(Lcom/smaato/soma/j;)V
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
    .line 72
    iput-object p1, p0, Lcom/smaato/soma/interstitial/InterstitialActivity$2;->a:Lcom/smaato/soma/interstitial/InterstitialActivity;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->b:Lcom/smaato/soma/interstitial/a;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->b:Lcom/smaato/soma/interstitial/a;

    invoke-interface {v0}, Lcom/smaato/soma/interstitial/a;->onWillOpenLandingPage()V

    .line 78
    :cond_0
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
    .line 72
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/InterstitialActivity$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
