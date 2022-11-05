.class Lcom/apprupt/sdk/AdView$6$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lcom/apprupt/sdk/CvMediator$Completion;


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
    .line 465
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$6$1;->a:Lcom/apprupt/sdk/AdView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apprupt/sdk/mediation/AdWrapper;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 480
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6$1;->a:Lcom/apprupt/sdk/AdView$6;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->j(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/Timeout;->a()V

    .line 481
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6$1;->a:Lcom/apprupt/sdk/AdView$6;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->l(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Ad loaded"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 482
    new-instance v0, Lcom/apprupt/sdk/AdView$6$1$2;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/AdView$6$1$2;-><init>(Lcom/apprupt/sdk/AdView$6$1;Lcom/apprupt/sdk/mediation/AdWrapper;)V

    invoke-static {v0, v4}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 488
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 468
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6$1;->a:Lcom/apprupt/sdk/AdView$6;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->j(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/Timeout;->a()V

    .line 469
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$6$1;->a:Lcom/apprupt/sdk/AdView$6;

    iget-object v0, v0, Lcom/apprupt/sdk/AdView$6;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->l(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Ad loading error:"

    aput-object v3, v1, v2

    aput-object p1, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 470
    new-instance v0, Lcom/apprupt/sdk/AdView$6$1$1;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/AdView$6$1$1;-><init>(Lcom/apprupt/sdk/AdView$6$1;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 476
    return-void
.end method
