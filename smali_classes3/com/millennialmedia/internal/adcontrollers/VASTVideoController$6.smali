.class Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$6;
.super Ljava/lang/Object;
.source "VASTVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$6;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$6;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->a(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$6;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->a(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->error:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$6;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->a(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->error:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$6;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->d(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$6;->a:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->d(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    .line 411
    iget-object v2, v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->error:Ljava/lang/String;

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 412
    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->error:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    goto :goto_0

    .line 416
    :cond_2
    return-void
.end method
