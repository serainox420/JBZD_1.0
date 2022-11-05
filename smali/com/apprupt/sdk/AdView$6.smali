.class Lcom/apprupt/sdk/AdView$6;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView;->a()V
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
    .line 452
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 455
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->h(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->h(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/InlineAdWrapper;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->b(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/AdView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->b(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/AdView$Listener;

    move-result-object v0

    const-string v1, "Currently displayed ad is busy - AdView loading canceled"

    iget-object v2, p0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-interface {v0, v1, v2}, Lcom/apprupt/sdk/AdView$Listener;->onAdLoadingFailure(Ljava/lang/String;Lcom/apprupt/sdk/AdView;)V

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->a(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    if-nez v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->i(Lcom/apprupt/sdk/AdView;)V

    .line 463
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apprupt/sdk/AdView;->b(Lcom/apprupt/sdk/AdView;Z)Z

    .line 464
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->j(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/Timeout;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v2, v3}, Lcom/apprupt/sdk/Timeout;->a(J)V

    .line 465
    iget-object v1, p0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    sget-object v2, Lcom/apprupt/sdk/CvSDK;->c:Lcom/apprupt/sdk/CvMediation;

    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvContext;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v3}, Lcom/apprupt/sdk/AdView;->k(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/CvContentOptions;

    move-result-object v3

    new-instance v4, Lcom/apprupt/sdk/AdView$6$1;

    invoke-direct {v4, p0}, Lcom/apprupt/sdk/AdView$6$1;-><init>(Lcom/apprupt/sdk/AdView$6;)V

    new-instance v5, Lcom/apprupt/sdk/AdView$6$2;

    invoke-direct {v5, p0}, Lcom/apprupt/sdk/AdView$6$2;-><init>(Lcom/apprupt/sdk/AdView$6;)V

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/apprupt/sdk/CvMediation;->a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvMediator$Completion;Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;)Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apprupt/sdk/AdView;->a(Lcom/apprupt/sdk/AdView;Lcom/apprupt/sdk/CvMediator;)Lcom/apprupt/sdk/CvMediator;

    goto :goto_0

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->b(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/AdView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->b(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/AdView$Listener;

    move-result-object v0

    const-string v1, "Ad loading in progress."

    iget-object v2, p0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-interface {v0, v1, v2}, Lcom/apprupt/sdk/AdView$Listener;->onAdLoadingFailure(Ljava/lang/String;Lcom/apprupt/sdk/AdView;)V

    goto :goto_0
.end method
