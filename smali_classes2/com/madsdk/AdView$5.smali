.class Lcom/madsdk/AdView$5;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madsdk/AdView;->loadBanner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/madsdk/AppInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madsdk/AdView;


# direct methods
.method constructor <init>(Lcom/madsdk/AdView;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/madsdk/AdView$5;->this$0:Lcom/madsdk/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/madsdk/AdView$5;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$300(Lcom/madsdk/AdView;)Lcom/madsdk/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/madsdk/AdView$5;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$300(Lcom/madsdk/AdView;)Lcom/madsdk/AdListener;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/madsdk/AdListener;->onLoadFailed(Ljava/lang/String;)V

    .line 521
    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    .line 526
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 527
    const-class v2, Lcom/madsdk/AdResponse;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/madsdk/AdResponse;

    .line 528
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/madsdk/AdView$5$1;

    invoke-direct {v2, p0, v0}, Lcom/madsdk/AdView$5$1;-><init>(Lcom/madsdk/AdView$5;Lcom/madsdk/AdResponse;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 542
    return-void
.end method
