.class Lcom/apprupt/sdk/CvMediation$8;
.super Ljava/lang/Object;
.source "CvMediation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvMediation;->a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvContentManager$PreloaderListener;Z[Ljava/lang/String;)Lcom/apprupt/sdk/CvMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvMediator;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/apprupt/sdk/CvMediation;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvMediation;Lcom/apprupt/sdk/CvMediator;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediation$8;->c:Lcom/apprupt/sdk/CvMediation;

    iput-object p2, p0, Lcom/apprupt/sdk/CvMediation$8;->a:Lcom/apprupt/sdk/CvMediator;

    iput-object p3, p0, Lcom/apprupt/sdk/CvMediation$8;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 279
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$8;->c:Lcom/apprupt/sdk/CvMediation;

    invoke-static {v0}, Lcom/apprupt/sdk/CvMediation;->e(Lcom/apprupt/sdk/CvMediation;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "load mediator"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$8;->a:Lcom/apprupt/sdk/CvMediator;

    iget-object v1, p0, Lcom/apprupt/sdk/CvMediation$8;->c:Lcom/apprupt/sdk/CvMediation;

    invoke-static {v1}, Lcom/apprupt/sdk/CvMediation;->g(Lcom/apprupt/sdk/CvMediation;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/apprupt/sdk/CvMediation$8;->c:Lcom/apprupt/sdk/CvMediation;

    iget-object v3, p0, Lcom/apprupt/sdk/CvMediation$8;->a:Lcom/apprupt/sdk/CvMediator;

    invoke-virtual {v3}, Lcom/apprupt/sdk/CvMediator;->a()Lcom/apprupt/sdk/CvContentOptions;

    move-result-object v3

    iget-object v3, v3, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/apprupt/sdk/CvMediation$8;->b:[Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/apprupt/sdk/CvMediation;->a(Lcom/apprupt/sdk/CvMediation;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/apprupt/sdk/CvMediator;->a(Ljava/util/HashMap;Ljava/util/List;)V

    .line 281
    return-void
.end method
