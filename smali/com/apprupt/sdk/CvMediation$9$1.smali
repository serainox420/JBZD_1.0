.class Lcom/apprupt/sdk/CvMediation$9$1;
.super Ljava/lang/Object;
.source "CvMediation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvMediation$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvMediation$9;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvMediation$9;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediation$9$1;->a:Lcom/apprupt/sdk/CvMediation$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 295
    invoke-static {}, Lcom/apprupt/sdk/CvMediation;->c()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvMediation$9$1;->a:Lcom/apprupt/sdk/CvMediation$9;

    iget-object v1, v1, Lcom/apprupt/sdk/CvMediation$9;->a:Lcom/apprupt/sdk/CvContentOptions;

    iget-object v1, v1, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$9$1;->a:Lcom/apprupt/sdk/CvMediation$9;

    iget-object v0, v0, Lcom/apprupt/sdk/CvMediation$9;->b:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 296
    invoke-static {}, Lcom/apprupt/sdk/CvMediation;->c()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvMediation$9$1;->a:Lcom/apprupt/sdk/CvMediation$9;

    iget-object v1, v1, Lcom/apprupt/sdk/CvMediation$9;->a:Lcom/apprupt/sdk/CvContentOptions;

    iget-object v1, v1, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 297
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 298
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apprupt/sdk/mediation/AdWrapper;

    .line 299
    iget-object v2, p0, Lcom/apprupt/sdk/CvMediation$9$1;->a:Lcom/apprupt/sdk/CvMediation$9;

    iget-object v2, v2, Lcom/apprupt/sdk/CvMediation$9;->a:Lcom/apprupt/sdk/CvContentOptions;

    iget-boolean v2, v2, Lcom/apprupt/sdk/CvContentOptions;->d:Z

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/apprupt/sdk/mediation/InterstitialAdWrapper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/apprupt/sdk/CvMediation$9$1;->a:Lcom/apprupt/sdk/CvMediation$9;

    iget-object v2, v2, Lcom/apprupt/sdk/CvMediation$9;->a:Lcom/apprupt/sdk/CvContentOptions;

    iget-boolean v2, v2, Lcom/apprupt/sdk/CvContentOptions;->g:Z

    invoke-interface {v1}, Lcom/apprupt/sdk/mediation/AdWrapper;->j()Z

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/apprupt/sdk/CvMediation$9$1;->a:Lcom/apprupt/sdk/CvMediation$9;

    iget-object v2, v2, Lcom/apprupt/sdk/CvMediation$9;->a:Lcom/apprupt/sdk/CvContentOptions;

    iget-boolean v2, v2, Lcom/apprupt/sdk/CvContentOptions;->d:Z

    if-nez v2, :cond_2

    instance-of v2, v1, Lcom/apprupt/sdk/mediation/InlineAdWrapper;

    if-eqz v2, :cond_2

    .line 301
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$9$1;->a:Lcom/apprupt/sdk/CvMediation$9;

    iget-object v0, v0, Lcom/apprupt/sdk/CvMediation$9;->c:Lcom/apprupt/sdk/CvMediator;

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvMediator;->a(Lcom/apprupt/sdk/mediation/AdWrapper;)V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$9$1;->a:Lcom/apprupt/sdk/CvMediation$9;

    iget-object v0, v0, Lcom/apprupt/sdk/CvMediation$9;->d:Lcom/apprupt/sdk/CvMediation;

    invoke-static {v0}, Lcom/apprupt/sdk/CvMediation;->e(Lcom/apprupt/sdk/CvMediation;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "load mediator"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$9$1;->a:Lcom/apprupt/sdk/CvMediation$9;

    iget-object v0, v0, Lcom/apprupt/sdk/CvMediation$9;->c:Lcom/apprupt/sdk/CvMediator;

    iget-object v1, p0, Lcom/apprupt/sdk/CvMediation$9$1;->a:Lcom/apprupt/sdk/CvMediation$9;

    iget-object v1, v1, Lcom/apprupt/sdk/CvMediation$9;->d:Lcom/apprupt/sdk/CvMediation;

    invoke-static {v1}, Lcom/apprupt/sdk/CvMediation;->g(Lcom/apprupt/sdk/CvMediation;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/apprupt/sdk/CvMediation$9$1;->a:Lcom/apprupt/sdk/CvMediation$9;

    iget-object v2, v2, Lcom/apprupt/sdk/CvMediation$9;->d:Lcom/apprupt/sdk/CvMediation;

    iget-object v3, p0, Lcom/apprupt/sdk/CvMediation$9$1;->a:Lcom/apprupt/sdk/CvMediation$9;

    iget-object v3, v3, Lcom/apprupt/sdk/CvMediation$9;->c:Lcom/apprupt/sdk/CvMediator;

    invoke-virtual {v3}, Lcom/apprupt/sdk/CvMediator;->a()Lcom/apprupt/sdk/CvContentOptions;

    move-result-object v3

    iget-object v3, v3, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/apprupt/sdk/CvMediation$9$1;->a:Lcom/apprupt/sdk/CvMediation$9;

    iget-object v4, v4, Lcom/apprupt/sdk/CvMediation$9;->b:[Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/apprupt/sdk/CvMediation;->a(Lcom/apprupt/sdk/CvMediation;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/apprupt/sdk/CvMediator;->a(Ljava/util/HashMap;Ljava/util/List;)V

    goto :goto_0
.end method
