.class Lcom/smaato/soma/interstitial/b$1;
.super Lcom/smaato/soma/l;
.source "InterstitialBannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/interstitial/b;->setContext(Landroid/app/Activity;)V
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/smaato/soma/interstitial/b;


# direct methods
.method constructor <init>(Lcom/smaato/soma/interstitial/b;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/smaato/soma/interstitial/b$1;->b:Lcom/smaato/soma/interstitial/b;

    iput-object p2, p0, Lcom/smaato/soma/interstitial/b$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$1;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$1;->b:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->a(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/smaato/soma/interstitial/b$1;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/smaato/soma/bannerutilities/a;->b(Ljava/lang/ref/WeakReference;)V

    .line 124
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
    .line 119
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/b$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
