.class Lcom/mopub/network/MoPubRequestQueue$a;
.super Ljava/lang/Object;
.source "MoPubRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/network/MoPubRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/os/Handler;

.field final c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/mopub/network/MoPubRequestQueue;


# direct methods
.method constructor <init>(Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mopub/network/MoPubRequestQueue$a;-><init>(Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;ILandroid/os/Handler;)V

    .line 136
    return-void
.end method

.method constructor <init>(Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;ILandroid/os/Handler;)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request",
            "<*>;I",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    iput-object p1, p0, Lcom/mopub/network/MoPubRequestQueue$a;->d:Lcom/mopub/network/MoPubRequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p3, p0, Lcom/mopub/network/MoPubRequestQueue$a;->a:I

    .line 141
    iput-object p4, p0, Lcom/mopub/network/MoPubRequestQueue$a;->b:Landroid/os/Handler;

    .line 142
    new-instance v0, Lcom/mopub/network/MoPubRequestQueue$a$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/mopub/network/MoPubRequestQueue$a$1;-><init>(Lcom/mopub/network/MoPubRequestQueue$a;Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;)V

    iput-object v0, p0, Lcom/mopub/network/MoPubRequestQueue$a;->c:Ljava/lang/Runnable;

    .line 149
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mopub/network/MoPubRequestQueue$a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/network/MoPubRequestQueue$a;->c:Ljava/lang/Runnable;

    iget v2, p0, Lcom/mopub/network/MoPubRequestQueue$a;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mopub/network/MoPubRequestQueue$a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/network/MoPubRequestQueue$a;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method
