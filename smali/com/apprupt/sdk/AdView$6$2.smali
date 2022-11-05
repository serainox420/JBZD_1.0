.class Lcom/apprupt/sdk/AdView$6$2;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/AdView$6;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView$6;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$6$2;->a:Lcom/apprupt/sdk/AdView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6$2;->a:Lcom/apprupt/sdk/AdView$6;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    new-instance v1, Lcom/apprupt/sdk/AdView$6$2$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/AdView$6$2$1;-><init>(Lcom/apprupt/sdk/AdView$6$2;)V

    invoke-static {v0, v1}, Lcom/apprupt/sdk/AdView;->a(Lcom/apprupt/sdk/AdView;Ljava/lang/Runnable;)V

    .line 498
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6$2;->a:Lcom/apprupt/sdk/AdView$6;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/AdView;->b()V

    .line 503
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6$2;->a:Lcom/apprupt/sdk/AdView$6;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->b(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/AdView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6$2;->a:Lcom/apprupt/sdk/AdView$6;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->b(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/AdView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/AdView$6$2;->a:Lcom/apprupt/sdk/AdView$6;

    iget-object v1, v1, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/AdView$Listener;->onFirstTap(Lcom/apprupt/sdk/AdView;)V

    .line 516
    :cond_0
    return-void
.end method
