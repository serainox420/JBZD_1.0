.class Lcom/apprupt/sdk/CvAppInfo$1;
.super Ljava/lang/Object;
.source "CvAppInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvAppInfo;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvAppInfo;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvAppInfo;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/apprupt/sdk/CvAppInfo$1;->a:Lcom/apprupt/sdk/CvAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 120
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 121
    const-string v1, "getAdvertisingIdInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 122
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/apprupt/sdk/CvAppInfo$1;->a:Lcom/apprupt/sdk/CvAppInfo;

    invoke-static {v4}, Lcom/apprupt/sdk/CvAppInfo;->a(Lcom/apprupt/sdk/CvAppInfo;)Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 124
    iget-object v2, p0, Lcom/apprupt/sdk/CvAppInfo$1;->a:Lcom/apprupt/sdk/CvAppInfo;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/apprupt/sdk/CvAppInfo;->a(Lcom/apprupt/sdk/CvAppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "isLimitAdTrackingEnabled"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 126
    iget-object v2, p0, Lcom/apprupt/sdk/CvAppInfo$1;->a:Lcom/apprupt/sdk/CvAppInfo;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v2, v0}, Lcom/apprupt/sdk/CvAppInfo;->a(Lcom/apprupt/sdk/CvAppInfo;Z)Z

    .line 127
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo$1;->a:Lcom/apprupt/sdk/CvAppInfo;

    invoke-static {v0}, Lcom/apprupt/sdk/CvAppInfo;->b(Lcom/apprupt/sdk/CvAppInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo$1;->a:Lcom/apprupt/sdk/CvAppInfo;

    invoke-static {v0}, Lcom/apprupt/sdk/CvAppInfo;->b(Lcom/apprupt/sdk/CvAppInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo$1;->a:Lcom/apprupt/sdk/CvAppInfo;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvAppInfo;->a(Lcom/apprupt/sdk/CvAppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo$1;->a:Lcom/apprupt/sdk/CvAppInfo;

    invoke-static {v0}, Lcom/apprupt/sdk/CvAppInfo;->b(Lcom/apprupt/sdk/CvAppInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 130
    iget-object v1, p0, Lcom/apprupt/sdk/CvAppInfo$1;->a:Lcom/apprupt/sdk/CvAppInfo;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :try_start_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo$1;->a:Lcom/apprupt/sdk/CvAppInfo;

    invoke-static {v0}, Lcom/apprupt/sdk/CvAppInfo;->c(Lcom/apprupt/sdk/CvAppInfo;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GOT advident "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/apprupt/sdk/CvAppInfo$1;->a:Lcom/apprupt/sdk/CvAppInfo;

    invoke-static {v5}, Lcom/apprupt/sdk/CvAppInfo;->b(Lcom/apprupt/sdk/CvAppInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v2}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo$1;->a:Lcom/apprupt/sdk/CvAppInfo;

    iget-object v2, p0, Lcom/apprupt/sdk/CvAppInfo$1;->a:Lcom/apprupt/sdk/CvAppInfo;

    invoke-static {v2}, Lcom/apprupt/sdk/CvAppInfo;->b(Lcom/apprupt/sdk/CvAppInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apprupt/sdk/CvHash;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/apprupt/sdk/CvAppInfo;->b(Lcom/apprupt/sdk/CvAppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo$1;->a:Lcom/apprupt/sdk/CvAppInfo;

    iget-object v2, p0, Lcom/apprupt/sdk/CvAppInfo$1;->a:Lcom/apprupt/sdk/CvAppInfo;

    invoke-static {v2}, Lcom/apprupt/sdk/CvAppInfo;->b(Lcom/apprupt/sdk/CvAppInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apprupt/sdk/CvHash;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/apprupt/sdk/CvAppInfo;->c(Lcom/apprupt/sdk/CvAppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    iget-object v1, p0, Lcom/apprupt/sdk/CvAppInfo$1;->a:Lcom/apprupt/sdk/CvAppInfo;

    invoke-static {v1}, Lcom/apprupt/sdk/CvAppInfo;->c(Lcom/apprupt/sdk/CvAppInfo;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get advident ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/apprupt/sdk/CvAppInfo$1;->a:Lcom/apprupt/sdk/CvAppInfo;

    invoke-static {v1}, Lcom/apprupt/sdk/CvAppInfo;->c(Lcom/apprupt/sdk/CvAppInfo;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get advident ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
