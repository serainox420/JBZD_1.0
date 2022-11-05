.class Lcom/apprupt/sdk/CvConfig$14$1;
.super Ljava/lang/Object;
.source "CvConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvConfig$14;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/apprupt/sdk/CvConfig$14;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvConfig$14;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig$14$1;->b:Lcom/apprupt/sdk/CvConfig$14;

    iput-object p2, p0, Lcom/apprupt/sdk/CvConfig$14$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 294
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$14$1;->b:Lcom/apprupt/sdk/CvConfig$14;

    iget-object v1, v0, Lcom/apprupt/sdk/CvConfig$14;->a:Lcom/apprupt/sdk/CvConfig;

    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$14$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/apprupt/sdk/SimpleJSON;

    invoke-static {v1, v0}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;Lcom/apprupt/sdk/SimpleJSON;)Lcom/apprupt/sdk/SimpleJSON;

    .line 295
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$14$1;->b:Lcom/apprupt/sdk/CvConfig$14;

    iget-object v0, v0, Lcom/apprupt/sdk/CvConfig$14;->a:Lcom/apprupt/sdk/CvConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;Lcom/apprupt/sdk/Q;)Lcom/apprupt/sdk/Q;

    .line 296
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$14$1;->b:Lcom/apprupt/sdk/CvConfig$14;

    iget-object v0, v0, Lcom/apprupt/sdk/CvConfig$14;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Calling listeners"

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$14$1;->b:Lcom/apprupt/sdk/CvConfig$14;

    iget-object v0, v0, Lcom/apprupt/sdk/CvConfig$14;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->b(Lcom/apprupt/sdk/CvConfig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvConfig$Listener;

    .line 298
    iget-object v2, p0, Lcom/apprupt/sdk/CvConfig$14$1;->b:Lcom/apprupt/sdk/CvConfig$14;

    iget-object v2, v2, Lcom/apprupt/sdk/CvConfig$14;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v2}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Calling listener..."

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 299
    iget-object v2, p0, Lcom/apprupt/sdk/CvConfig$14$1;->b:Lcom/apprupt/sdk/CvConfig$14;

    iget-object v2, v2, Lcom/apprupt/sdk/CvConfig$14;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v2, v0}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;Lcom/apprupt/sdk/CvConfig$Listener;)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$14$1;->b:Lcom/apprupt/sdk/CvConfig$14;

    iget-object v0, v0, Lcom/apprupt/sdk/CvConfig$14;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Calling waiting objects"

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 302
    :goto_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$14$1;->b:Lcom/apprupt/sdk/CvConfig$14;

    iget-object v0, v0, Lcom/apprupt/sdk/CvConfig$14;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->g(Lcom/apprupt/sdk/CvConfig;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$14$1;->b:Lcom/apprupt/sdk/CvConfig$14;

    iget-object v0, v0, Lcom/apprupt/sdk/CvConfig$14;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Calling waiting  object..."

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$14$1;->b:Lcom/apprupt/sdk/CvConfig$14;

    iget-object v0, v0, Lcom/apprupt/sdk/CvConfig$14;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->f(Lcom/apprupt/sdk/CvConfig;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$14$1;->b:Lcom/apprupt/sdk/CvConfig$14;

    iget-object v0, v0, Lcom/apprupt/sdk/CvConfig$14;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->g(Lcom/apprupt/sdk/CvConfig;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$14$1;->b:Lcom/apprupt/sdk/CvConfig$14;

    iget-object v0, v0, Lcom/apprupt/sdk/CvConfig$14;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Config done! next reload:"

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/apprupt/sdk/CvConfig$14$1;->b:Lcom/apprupt/sdk/CvConfig$14;

    iget-object v2, v2, Lcom/apprupt/sdk/CvConfig$14;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v2}, Lcom/apprupt/sdk/CvConfig;->e(Lcom/apprupt/sdk/CvConfig;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 307
    return-void
.end method
