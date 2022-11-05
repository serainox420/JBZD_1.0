.class Lcom/apprupt/sdk/AdView$7$1$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/AdView$7$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView$7$1;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$7$1$1;->a:Lcom/apprupt/sdk/AdView$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$7$1$1;->a:Lcom/apprupt/sdk/AdView$7$1;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$7$1;->a:Lcom/apprupt/sdk/AdView$7;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$7;->a:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/InlineAdWrapper;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$7$1$1;->a:Lcom/apprupt/sdk/AdView$7$1;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$7$1;->a:Lcom/apprupt/sdk/AdView$7;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$7;->b:Lcom/apprupt/sdk/AdView;

    iget-object v1, p0, Lcom/apprupt/sdk/AdView$7$1$1;->a:Lcom/apprupt/sdk/AdView$7$1;

    iget-object v1, v1, Lcom/apprupt/sdk/AdView$7$1;->a:Lcom/apprupt/sdk/AdView$7;

    iget-object v1, v1, Lcom/apprupt/sdk/AdView$7;->a:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    invoke-interface {v1}, Lcom/apprupt/sdk/mediation/InlineAdWrapper;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/AdView;->a(Lcom/apprupt/sdk/AdView;Ljava/lang/String;)V

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$7$1$1;->a:Lcom/apprupt/sdk/AdView$7$1;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$7$1;->a:Lcom/apprupt/sdk/AdView$7;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$7;->b:Lcom/apprupt/sdk/AdView;

    iget-object v1, p0, Lcom/apprupt/sdk/AdView$7$1$1;->a:Lcom/apprupt/sdk/AdView$7$1;

    iget-object v1, v1, Lcom/apprupt/sdk/AdView$7$1;->a:Lcom/apprupt/sdk/AdView$7;

    iget-object v1, v1, Lcom/apprupt/sdk/AdView$7;->a:Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    invoke-static {v0, v1}, Lcom/apprupt/sdk/AdView;->c(Lcom/apprupt/sdk/AdView;Lcom/apprupt/sdk/mediation/InlineAdWrapper;)V

    goto :goto_0
.end method
