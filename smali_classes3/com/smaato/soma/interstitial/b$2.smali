.class Lcom/smaato/soma/interstitial/b$2;
.super Lcom/smaato/soma/l;
.source "InterstitialBannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/interstitial/b;->j()V
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
.field final synthetic a:Lcom/smaato/soma/interstitial/b;


# direct methods
.method constructor <init>(Lcom/smaato/soma/interstitial/b;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/smaato/soma/interstitial/b$2;->a:Lcom/smaato/soma/interstitial/b;

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
    .line 142
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$2;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->b(Lcom/smaato/soma/interstitial/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$2;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->c(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/interstitial/Interstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial;->g()V

    .line 144
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->b:Lcom/smaato/soma/interstitial/a;

    invoke-interface {v0}, Lcom/smaato/soma/interstitial/a;->onReadyToShow()V

    .line 145
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$2;->a:Lcom/smaato/soma/interstitial/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smaato/soma/interstitial/b;->a(Lcom/smaato/soma/interstitial/b;Z)Z

    .line 147
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
    .line 139
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/b$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
