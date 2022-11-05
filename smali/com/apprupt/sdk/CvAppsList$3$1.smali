.class Lcom/apprupt/sdk/CvAppsList$3$1;
.super Ljava/lang/Object;
.source "CvAppsList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvAppsList$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvAppsList$3;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvAppsList$3;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/apprupt/sdk/CvAppsList$3$1;->a:Lcom/apprupt/sdk/CvAppsList$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppsList$3$1;->a:Lcom/apprupt/sdk/CvAppsList$3;

    iget-object v0, v0, Lcom/apprupt/sdk/CvAppsList$3;->b:Lcom/apprupt/sdk/CvAppsList;

    invoke-static {v0}, Lcom/apprupt/sdk/CvAppsList;->b(Lcom/apprupt/sdk/CvAppsList;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppsList$3$1;->a:Lcom/apprupt/sdk/CvAppsList$3;

    iget-object v0, v0, Lcom/apprupt/sdk/CvAppsList$3;->a:Lcom/apprupt/sdk/CvAppsList$MultiAppInfoListener;

    iget-object v2, p0, Lcom/apprupt/sdk/CvAppsList$3$1;->a:Lcom/apprupt/sdk/CvAppsList$3;

    iget-object v2, v2, Lcom/apprupt/sdk/CvAppsList$3;->b:Lcom/apprupt/sdk/CvAppsList;

    invoke-static {v2}, Lcom/apprupt/sdk/CvAppsList;->c(Lcom/apprupt/sdk/CvAppsList;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/apprupt/sdk/CvAppsList$MultiAppInfoListener;->a(Ljava/util/Collection;)V

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
