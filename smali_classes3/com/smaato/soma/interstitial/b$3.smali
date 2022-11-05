.class Lcom/smaato/soma/interstitial/b$3;
.super Lcom/smaato/soma/l;
.source "InterstitialBannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/interstitial/b;->onAttachedToWindow()V
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
    .line 189
    iput-object p1, p0, Lcom/smaato/soma/interstitial/b$3;->a:Lcom/smaato/soma/interstitial/b;

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
    .line 192
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$3;->a:Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b;->b()Z

    .line 193
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
    .line 189
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/b$3;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
