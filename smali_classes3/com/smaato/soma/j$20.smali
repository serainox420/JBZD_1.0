.class Lcom/smaato/soma/j$20;
.super Lcom/smaato/soma/l;
.source "BaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/j;->e()V
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
.field final synthetic a:Lcom/smaato/soma/j;


# direct methods
.method constructor <init>(Lcom/smaato/soma/j;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/smaato/soma/j$20;->a:Lcom/smaato/soma/j;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 320
    invoke-static {}, Lcom/smaato/soma/internal/requests/f;->b()Lcom/smaato/soma/internal/requests/f;

    move-result-object v2

    iget-object v0, p0, Lcom/smaato/soma/j$20;->a:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/smaato/soma/internal/requests/f;->a(Z)V

    .line 321
    iget-object v0, p0, Lcom/smaato/soma/j$20;->a:Lcom/smaato/soma/j;

    invoke-static {v0}, Lcom/smaato/soma/j;->a(Lcom/smaato/soma/j;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v2, "BannerView"

    const-string v3, "Too many background views ..."

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->WARNING:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 347
    :cond_0
    :goto_1
    return-object v5

    .line 320
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 326
    :cond_2
    invoke-static {}, Lcom/smaato/soma/measurements/a;->a()Lcom/smaato/soma/measurements/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/measurements/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-static {}, Lcom/smaato/soma/internal/c/c;->a()Lcom/smaato/soma/internal/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/c/c;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smaato/soma/j$20;->a:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->a()Lcom/smaato/soma/internal/statemachine/BannerState$State;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/internal/statemachine/BannerState$State;->STATE_BANNEREXPANDED:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    if-eq v0, v1, :cond_3

    .line 330
    iget-object v0, p0, Lcom/smaato/soma/j$20;->a:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->a()V

    .line 331
    invoke-static {}, Lcom/smaato/soma/internal/c/c;->a()Lcom/smaato/soma/internal/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/c/c;->c()V

    .line 333
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smaato/soma/j$20$1;

    invoke-direct {v1, p0}, Lcom/smaato/soma/j$20$1;-><init>(Lcom/smaato/soma/j$20;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 346
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1
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
    invoke-virtual {p0}, Lcom/smaato/soma/j$20;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
