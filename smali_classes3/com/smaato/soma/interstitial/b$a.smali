.class Lcom/smaato/soma/interstitial/b$a;
.super Landroid/os/Handler;
.source "InterstitialBannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/interstitial/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/interstitial/b;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smaato/soma/j;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/smaato/soma/j;


# direct methods
.method private constructor <init>(Lcom/smaato/soma/interstitial/b;Lcom/smaato/soma/j;)V
    .locals 1

    .prologue
    .line 250
    iput-object p1, p0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    .line 251
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/interstitial/b$a;->b:Ljava/lang/ref/WeakReference;

    .line 252
    iput-object p2, p0, Lcom/smaato/soma/interstitial/b$a;->c:Lcom/smaato/soma/j;

    .line 253
    return-void
.end method

.method synthetic constructor <init>(Lcom/smaato/soma/interstitial/b;Lcom/smaato/soma/j;Lcom/smaato/soma/interstitial/b$1;)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Lcom/smaato/soma/interstitial/b$a;-><init>(Lcom/smaato/soma/interstitial/b;Lcom/smaato/soma/j;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smaato/soma/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/smaato/soma/interstitial/b$a;->c:Lcom/smaato/soma/j;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/smaato/soma/interstitial/b$a;->b:Ljava/lang/ref/WeakReference;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 271
    new-instance v0, Lcom/smaato/soma/interstitial/b$a$1;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/interstitial/b$a$1;-><init>(Lcom/smaato/soma/interstitial/b$a;Landroid/os/Message;)V

    .line 413
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b$a$1;->c()Ljava/lang/Object;

    .line 414
    return-void
.end method
