.class Lcom/apprupt/sdk/AdView$11$1$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView$11$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/AdView$11$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView$11$1;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$11$1$1;->a:Lcom/apprupt/sdk/AdView$11$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$11$1$1;->a:Lcom/apprupt/sdk/AdView$11$1;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$11$1;->a:Lcom/apprupt/sdk/AdView$11;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$11;->b:Lcom/apprupt/sdk/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apprupt/sdk/AdView;->b(Lcom/apprupt/sdk/AdView;Ljava/util/Timer;)Ljava/util/Timer;

    .line 647
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$11$1$1;->a:Lcom/apprupt/sdk/AdView$11$1;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$11$1;->a:Lcom/apprupt/sdk/AdView$11;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$11;->b:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->o(Lcom/apprupt/sdk/AdView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$11$1$1;->a:Lcom/apprupt/sdk/AdView$11$1;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$11$1;->a:Lcom/apprupt/sdk/AdView$11;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$11;->b:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->a(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$11$1$1;->a:Lcom/apprupt/sdk/AdView$11$1;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$11$1;->a:Lcom/apprupt/sdk/AdView$11;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$11;->b:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->h(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apprupt/sdk/AdView$11$1$1;->a:Lcom/apprupt/sdk/AdView$11$1;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$11$1;->a:Lcom/apprupt/sdk/AdView$11;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$11;->b:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->h(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/InlineAdWrapper;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 650
    :cond_2
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$11$1$1;->a:Lcom/apprupt/sdk/AdView$11$1;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$11$1;->a:Lcom/apprupt/sdk/AdView$11;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$11;->b:Lcom/apprupt/sdk/AdView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/AdView;->a()V

    goto :goto_0

    .line 652
    :cond_3
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$11$1$1;->a:Lcom/apprupt/sdk/AdView$11$1;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$11$1;->a:Lcom/apprupt/sdk/AdView$11;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$11;->b:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->p(Lcom/apprupt/sdk/AdView;)V

    goto :goto_0
.end method
