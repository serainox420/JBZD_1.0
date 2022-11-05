.class final Lcom/revmob/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    sget-object v0, Lcom/revmob/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/revmob/a/a;->a(Landroid/content/Context;)Lcom/revmob/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/revmob/a/b;->b()Z

    move-result v1

    invoke-static {v1}, Lcom/revmob/a/e;->a(Z)Z

    invoke-virtual {v0}, Lcom/revmob/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    invoke-static {}, Lcom/revmob/a/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/revmob/a/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/revmob/a/e;->d()Lcom/revmob/client/f;

    move-result-object v3

    sget-object v4, Lcom/revmob/a/e;->b:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/revmob/client/RevMobClient;->a(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/f;Lcom/revmob/RevMobAdsListener;)Z

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/revmob/a/e;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error with Google Play Services: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v2, "loadAdvertisingInfo1"

    invoke-static {v0, v5, v1, v5, v2}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    invoke-static {}, Lcom/revmob/a/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/revmob/a/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/revmob/a/e;->d()Lcom/revmob/client/f;

    move-result-object v3

    sget-object v4, Lcom/revmob/a/e;->b:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/revmob/client/RevMobClient;->a(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/f;Lcom/revmob/RevMobAdsListener;)Z

    goto :goto_1
.end method
