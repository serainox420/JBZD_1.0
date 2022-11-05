.class Lcom/applovin/impl/sdk/cv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/cr;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/applovin/impl/sdk/bw;

.field private final d:Lcom/applovin/impl/sdk/cs;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/cr;Lcom/applovin/impl/sdk/bw;Lcom/applovin/impl/sdk/cs;)V
    .locals 1

    iput-object p1, p0, Lcom/applovin/impl/sdk/cv;->a:Lcom/applovin/impl/sdk/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/bw;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/cv;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/cv;->c:Lcom/applovin/impl/sdk/bw;

    iput-object p3, p0, Lcom/applovin/impl/sdk/cv;->d:Lcom/applovin/impl/sdk/cs;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    :try_start_0
    invoke-static {}, Lcom/applovin/impl/sdk/n;->a()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/cv;->a:Lcom/applovin/impl/sdk/cr;

    invoke-static {v2}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/cr;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->e()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/applovin/impl/sdk/cv;->a:Lcom/applovin/impl/sdk/cr;

    invoke-static {v2}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/cr;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/sdk/cv;->a:Lcom/applovin/impl/sdk/cr;

    invoke-static {v2}, Lcom/applovin/impl/sdk/cr;->b(Lcom/applovin/impl/sdk/cr;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/cv;->b:Ljava/lang/String;

    const-string v4, "Task started execution..."

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/cv;->c:Lcom/applovin/impl/sdk/bw;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/bw;->run()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v8

    iget-object v2, p0, Lcom/applovin/impl/sdk/cv;->c:Lcom/applovin/impl/sdk/bw;

    instance-of v2, v2, Lcom/applovin/impl/sdk/dh;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/cv;->c:Lcom/applovin/impl/sdk/bw;

    move-object v0, v2

    check-cast v0, Lcom/applovin/impl/sdk/dh;

    move-object v7, v0

    invoke-static {}, Lcom/applovin/impl/sdk/dc;->a()Lcom/applovin/impl/sdk/dc;

    move-result-object v2

    invoke-interface {v7}, Lcom/applovin/impl/sdk/dh;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/applovin/impl/sdk/cv;->a:Lcom/applovin/impl/sdk/cr;

    invoke-static {v6}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/cr;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v6

    invoke-static {v6}, Lcom/applovin/impl/sdk/q;->a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7}, Lcom/applovin/impl/sdk/dh;->f()Z

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/applovin/impl/sdk/dc;->a(Ljava/lang/String;JLjava/lang/String;Z)V

    :cond_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/cv;->a:Lcom/applovin/impl/sdk/cr;

    invoke-static {v2}, Lcom/applovin/impl/sdk/cr;->b(Lcom/applovin/impl/sdk/cr;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/cv;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task executed successfully in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/cv;->a:Lcom/applovin/impl/sdk/cr;

    invoke-static {v2}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/cr;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/cc;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/applovin/impl/sdk/cv;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_count"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/cc;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/applovin/impl/sdk/cv;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_time"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/applovin/impl/sdk/cc;->a(Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/applovin/impl/sdk/cv;->a:Lcom/applovin/impl/sdk/cr;

    invoke-static {v2}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/cr;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/impl/sdk/cv;->a:Lcom/applovin/impl/sdk/cr;

    invoke-static {v2}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/cr;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g()V

    :goto_1
    iget-object v2, p0, Lcom/applovin/impl/sdk/cv;->c:Lcom/applovin/impl/sdk/bw;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/bw;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/cv;->a:Lcom/applovin/impl/sdk/cr;

    invoke-static {v3}, Lcom/applovin/impl/sdk/cr;->b(Lcom/applovin/impl/sdk/cr;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/cv;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task failed execution in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/applovin/impl/sdk/cv;->a:Lcom/applovin/impl/sdk/cr;

    invoke-static {v2}, Lcom/applovin/impl/sdk/cr;->b(Lcom/applovin/impl/sdk/cr;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/cv;->b:Ljava/lang/String;

    const-string v4, "Task not executed, SDK is disabled"

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/applovin/impl/sdk/cv;->a:Lcom/applovin/impl/sdk/cr;

    invoke-static {v2}, Lcom/applovin/impl/sdk/cr;->b(Lcom/applovin/impl/sdk/cr;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/cv;->b:Ljava/lang/String;

    const-string v4, "Task re-scheduled..."

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/cv;->a:Lcom/applovin/impl/sdk/cr;

    iget-object v3, p0, Lcom/applovin/impl/sdk/cv;->c:Lcom/applovin/impl/sdk/bw;

    iget-object v4, p0, Lcom/applovin/impl/sdk/cv;->d:Lcom/applovin/impl/sdk/cs;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/bw;Lcom/applovin/impl/sdk/cs;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
