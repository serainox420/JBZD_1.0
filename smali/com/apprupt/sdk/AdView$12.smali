.class Lcom/apprupt/sdk/AdView$12;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/apprupt/sdk/AdView;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$12;->b:Lcom/apprupt/sdk/AdView;

    iput-object p2, p0, Lcom/apprupt/sdk/AdView$12;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$12;->b:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->i(Lcom/apprupt/sdk/AdView;)V

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$12;->b:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->a(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$12;->b:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->a(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvMediator;->f()V

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$12;->b:Lcom/apprupt/sdk/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apprupt/sdk/AdView;->a(Lcom/apprupt/sdk/AdView;Lcom/apprupt/sdk/CvMediator;)Lcom/apprupt/sdk/CvMediator;

    .line 684
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$12;->b:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->h(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$12;->b:Lcom/apprupt/sdk/AdView;

    iget-object v1, p0, Lcom/apprupt/sdk/AdView$12;->b:Lcom/apprupt/sdk/AdView;

    invoke-static {v1}, Lcom/apprupt/sdk/AdView;->h(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/apprupt/sdk/mediation/InlineAdWrapper;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/AdView;->removeView(Landroid/view/View;)V

    .line 686
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$12;->b:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->h(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/InlineAdWrapper;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$12;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 692
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$12;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 694
    :cond_2
    return-void

    .line 688
    :catch_0
    move-exception v0

    goto :goto_0
.end method
