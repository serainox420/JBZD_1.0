.class Lcom/apprupt/sdk/AdView$10;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/AdView;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$10;->a:Lcom/apprupt/sdk/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 622
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$10;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->n(Lcom/apprupt/sdk/AdView;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$10;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->n(Lcom/apprupt/sdk/AdView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 624
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$10;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->n(Lcom/apprupt/sdk/AdView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 625
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$10;->a:Lcom/apprupt/sdk/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apprupt/sdk/AdView;->b(Lcom/apprupt/sdk/AdView;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 627
    :catch_0
    move-exception v0

    goto :goto_0
.end method
