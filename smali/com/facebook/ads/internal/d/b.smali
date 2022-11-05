.class public Lcom/facebook/ads/internal/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/d/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/d/b;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/d/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const/16 v0, 0xa

    :try_start_1
    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    invoke-static {p2}, Lcom/facebook/ads/internal/util/ag;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.facebook.ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/facebook/ads/internal/util/n;

    sget-object v2, Lcom/facebook/ads/internal/f/i;->f:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/facebook/ads/internal/util/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/g/p;

    invoke-static {}, Lcom/facebook/ads/internal/f/g;->b()D

    move-result-wide v2

    invoke-static {}, Lcom/facebook/ads/internal/f/g;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/facebook/ads/internal/g/p;-><init>(DLjava/lang/String;Lcom/facebook/ads/internal/util/n;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/d/b;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/util/o;->a(Lcom/facebook/ads/internal/g/p;Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/d/b;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
