.class Lcom/facebook/drawee/controller/AbstractDraweeController$1;
.super Lcom/facebook/datasource/BaseDataSubscriber;
.source "AbstractDraweeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/drawee/controller/AbstractDraweeController;->submitRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/BaseDataSubscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/drawee/controller/AbstractDraweeController;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$wasImmediate:Z


# direct methods
.method constructor <init>(Lcom/facebook/drawee/controller/AbstractDraweeController;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$1;->this$0:Lcom/facebook/drawee/controller/AbstractDraweeController;

    iput-object p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$1;->val$id:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$1;->val$wasImmediate:Z

    invoke-direct {p0}, Lcom/facebook/datasource/BaseDataSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailureImpl(Lcom/facebook/datasource/DataSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$1;->this$0:Lcom/facebook/drawee/controller/AbstractDraweeController;

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$1;->val$id:Ljava/lang/String;

    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getFailureCause()Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->access$200(Lcom/facebook/drawee/controller/AbstractDraweeController;Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Throwable;Z)V

    .line 485
    return-void
.end method

.method public onNewResultImpl(Lcom/facebook/datasource/DataSource;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 470
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->isFinished()Z

    move-result v5

    .line 471
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getProgress()F

    move-result v4

    .line 472
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getResult()Ljava/lang/Object;

    move-result-object v3

    .line 473
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$1;->this$0:Lcom/facebook/drawee/controller/AbstractDraweeController;

    invoke-static {v0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->access$000(Lcom/facebook/drawee/controller/AbstractDraweeController;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v3, Lcom/facebook/common/references/CloseableReference;

    if-eqz v0, :cond_0

    move-object v0, v3

    .line 474
    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$1;->this$0:Lcom/facebook/drawee/controller/AbstractDraweeController;

    invoke-static {v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->access$000(Lcom/facebook/drawee/controller/AbstractDraweeController;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/common/references/CloseableReference;->setUnclosedRelevantTrance(Ljava/lang/Throwable;)V

    .line 476
    :cond_0
    if-eqz v3, :cond_2

    .line 477
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$1;->this$0:Lcom/facebook/drawee/controller/AbstractDraweeController;

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$1;->val$id:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$1;->val$wasImmediate:Z

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/facebook/drawee/controller/AbstractDraweeController;->access$100(Lcom/facebook/drawee/controller/AbstractDraweeController;Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Object;FZZ)V

    .line 481
    :cond_1
    :goto_0
    return-void

    .line 478
    :cond_2
    if-eqz v5, :cond_1

    .line 479
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$1;->this$0:Lcom/facebook/drawee/controller/AbstractDraweeController;

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$1;->val$id:Ljava/lang/String;

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    const/4 v3, 0x1

    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->access$200(Lcom/facebook/drawee/controller/AbstractDraweeController;Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Throwable;Z)V

    goto :goto_0
.end method

.method public onProgressUpdate(Lcom/facebook/datasource/DataSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 488
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->isFinished()Z

    move-result v0

    .line 489
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getProgress()F

    move-result v1

    .line 490
    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$1;->this$0:Lcom/facebook/drawee/controller/AbstractDraweeController;

    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController$1;->val$id:Ljava/lang/String;

    invoke-static {v2, v3, p1, v1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->access$300(Lcom/facebook/drawee/controller/AbstractDraweeController;Ljava/lang/String;Lcom/facebook/datasource/DataSource;FZ)V

    .line 491
    return-void
.end method
