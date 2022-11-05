.class Lcom/madsdk/AdView$5$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madsdk/AdView$5;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/madsdk/AdView$5;

.field final synthetic val$adResponse:Lcom/madsdk/AdResponse;


# direct methods
.method constructor <init>(Lcom/madsdk/AdView$5;Lcom/madsdk/AdResponse;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/madsdk/AdView$5$1;->this$1:Lcom/madsdk/AdView$5;

    iput-object p2, p0, Lcom/madsdk/AdView$5$1;->val$adResponse:Lcom/madsdk/AdResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/madsdk/AdView$5$1;->val$adResponse:Lcom/madsdk/AdResponse;

    iget-object v0, v0, Lcom/madsdk/AdResponse;->html:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 532
    const-string v0, "html"

    iget-object v1, p0, Lcom/madsdk/AdView$5$1;->val$adResponse:Lcom/madsdk/AdResponse;

    iget-object v1, v1, Lcom/madsdk/AdResponse;->html:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lcom/madsdk/AdView$5$1;->this$1:Lcom/madsdk/AdView$5;

    iget-object v0, v0, Lcom/madsdk/AdView$5;->this$0:Lcom/madsdk/AdView;

    iget-object v1, p0, Lcom/madsdk/AdView$5$1;->val$adResponse:Lcom/madsdk/AdResponse;

    iget-object v1, v1, Lcom/madsdk/AdResponse;->html:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/madsdk/AdView;->access$2000(Lcom/madsdk/AdView;Ljava/lang/String;)V

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/madsdk/AdView$5$1;->this$1:Lcom/madsdk/AdView$5;

    iget-object v0, v0, Lcom/madsdk/AdView$5;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$300(Lcom/madsdk/AdView;)Lcom/madsdk/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/madsdk/AdView$5$1;->this$1:Lcom/madsdk/AdView$5;

    iget-object v0, v0, Lcom/madsdk/AdView$5;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$300(Lcom/madsdk/AdView;)Lcom/madsdk/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/madsdk/AdView$5$1;->val$adResponse:Lcom/madsdk/AdResponse;

    iget-object v1, v1, Lcom/madsdk/AdResponse;->msg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/madsdk/AdListener;->onLoadFailed(Ljava/lang/String;)V

    goto :goto_0
.end method
