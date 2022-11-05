.class Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/WebController$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

.field final synthetic b:Lcom/millennialmedia/internal/adcontrollers/WebController$7;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/WebController$7;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->b:Lcom/millennialmedia/internal/adcontrollers/WebController$7;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->a:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 507
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->b:Lcom/millennialmedia/internal/adcontrollers/WebController$7;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 508
    if-nez v0, :cond_1

    .line 509
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/WebController;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Expanded web view is no longer valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->b:Lcom/millennialmedia/internal/adcontrollers/WebController$7;

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/SizableStateManager;

    .line 517
    if-nez v1, :cond_2

    .line 518
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/WebController;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sizing container is no longer valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 525
    :cond_2
    invoke-virtual {v1}, Lcom/millennialmedia/internal/SizableStateManager;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 526
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/WebController;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sizing container has been collapsed"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_3
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->b:Lcom/millennialmedia/internal/adcontrollers/WebController$7;

    iget-object v2, v2, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->a:Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/SizableStateManager;->hideLoadingSpinner(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)V

    .line 535
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->a:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->a:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    iget v2, v2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->a:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    iget-object v2, v2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 536
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->a:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    iget-object v1, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/MMWebView;->setContent(Ljava/lang/String;)V

    .line 542
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/MMWebView;->setVisibility(I)V

    goto :goto_0

    .line 538
    :cond_4
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/WebController;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to retrieve expanded content"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/SizableStateManager;->showCloseIndicator(Z)V

    goto :goto_1
.end method
