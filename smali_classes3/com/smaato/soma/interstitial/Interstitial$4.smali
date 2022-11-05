.class Lcom/smaato/soma/interstitial/Interstitial$4;
.super Lcom/smaato/soma/l;
.source "Interstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/interstitial/Interstitial;->b()V
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
    .line 179
    iput-object p1, p0, Lcom/smaato/soma/interstitial/Interstitial$4;->a:Lcom/smaato/soma/interstitial/Interstitial;

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
    .line 182
    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial$4;->a:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial$4;->a:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/Interstitial;->a(Lcom/smaato/soma/interstitial/Interstitial;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smaato/soma/interstitial/Interstitial$4$1;

    invoke-direct {v1, p0}, Lcom/smaato/soma/interstitial/Interstitial$4$1;-><init>(Lcom/smaato/soma/interstitial/Interstitial$4;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 205
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 223
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial$4;->a:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial$4;->a:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/Interstitial;->a(Lcom/smaato/soma/interstitial/Interstitial;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial$4;->a:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/Interstitial;->b(Lcom/smaato/soma/interstitial/Interstitial;)V

    .line 210
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->b:Lcom/smaato/soma/interstitial/a;

    if-eqz v0, :cond_1

    .line 211
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->b:Lcom/smaato/soma/interstitial/a;

    invoke-interface {v0}, Lcom/smaato/soma/interstitial/a;->onWillShow()V

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial$4;->a:Lcom/smaato/soma/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial;->h()V

    goto :goto_0

    .line 217
    :cond_2
    new-instance v0, Lcom/smaato/soma/debug/b;

    iget-object v1, p0, Lcom/smaato/soma/interstitial/Interstitial$4;->a:Lcom/smaato/soma/interstitial/Interstitial;

    iget-object v1, v1, Lcom/smaato/soma/interstitial/Interstitial;->e:Ljava/lang/String;

    const-string v2, "Interstitial Banner not ready"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 221
    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial$4;->a:Lcom/smaato/soma/interstitial/Interstitial;

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
    .line 179
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/Interstitial$4;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
