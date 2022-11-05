.class Lcom/apprupt/sdk/AFP2$2;
.super Ljava/lang/Object;
.source "AFP2.java"

# interfaces
.implements Lcom/apprupt/sdk/URLRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AFP2;->a(Ljava/util/Set;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/AFP2;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AFP2;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/apprupt/sdk/AFP2$2;->a:Lcom/apprupt/sdk/AFP2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apprupt/sdk/URLRequest$URLResponse;)V
    .locals 6

    .prologue
    .line 89
    iget-object v1, p0, Lcom/apprupt/sdk/AFP2$2;->a:Lcom/apprupt/sdk/AFP2;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-boolean v0, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->d:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->a:I

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/AFP2$2;->a:Lcom/apprupt/sdk/AFP2;

    invoke-static {v0}, Lcom/apprupt/sdk/AFP2;->a(Lcom/apprupt/sdk/AFP2;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "afp2 failed with code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "and error"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->e:Ljava/lang/Exception;

    aput-object v4, v2, v3

    invoke-interface {v0, v2}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/apprupt/sdk/AFP2;->a(J)J

    .line 97
    :goto_0
    monitor-exit v1

    .line 98
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/AFP2$2;->a:Lcom/apprupt/sdk/AFP2;

    invoke-static {v0}, Lcom/apprupt/sdk/AFP2;->a(Lcom/apprupt/sdk/AFP2;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "afp2 done"

    aput-object v4, v2, v3

    invoke-interface {v0, v2}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x2932e00

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/apprupt/sdk/AFP2;->a(J)J

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
