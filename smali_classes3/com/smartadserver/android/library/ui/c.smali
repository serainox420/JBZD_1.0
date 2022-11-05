.class public Lcom/smartadserver/android/library/ui/c;
.super Ljava/lang/Object;
.source "SASViewabilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/ui/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/Timer;

.field private static c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/smartadserver/android/library/ui/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-class v0, Lcom/smartadserver/android/library/ui/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/ui/c;->a:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/smartadserver/android/library/ui/c;->c:Ljava/util/HashSet;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/smartadserver/android/library/ui/c;->d:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic a()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/smartadserver/android/library/ui/c;->c:Ljava/util/HashSet;

    return-object v0
.end method

.method public static a(Lcom/smartadserver/android/library/ui/c$a;)V
    .locals 2

    .prologue
    .line 84
    sget-object v1, Lcom/smartadserver/android/library/ui/c;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-object v0, Lcom/smartadserver/android/library/ui/c;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static {}, Lcom/smartadserver/android/library/ui/c;->c()V

    .line 87
    monitor-exit v1

    .line 89
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/util/ArrayList;DZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartadserver/android/library/model/d;",
            ">;DZ)V"
        }
    .end annotation

    .prologue
    .line 111
    monitor-enter p0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 115
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/smartadserver/android/library/a/c;->a(Landroid/content/Context;)Lcom/smartadserver/android/library/a/c;

    move-result-object v2

    .line 117
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/model/d;

    .line 120
    iget-wide v4, v0, Lcom/smartadserver/android/library/model/d;->c:D

    cmpl-double v3, p1, v4

    if-ltz v3, :cond_2

    .line 121
    iget v3, v0, Lcom/smartadserver/android/library/model/d;->d:I

    add-int/lit16 v3, v3, 0xfa

    iput v3, v0, Lcom/smartadserver/android/library/model/d;->d:I

    .line 126
    :goto_1
    iget v3, v0, Lcom/smartadserver/android/library/model/d;->d:I

    iget v4, v0, Lcom/smartadserver/android/library/model/d;->b:I

    if-ge v3, v4, :cond_1

    if-eqz p3, :cond_0

    .line 128
    :cond_1
    iget-object v0, v0, Lcom/smartadserver/android/library/model/d;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/smartadserver/android/library/a/c;->a(Ljava/lang/String;Z)V

    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 123
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    iput v3, v0, Lcom/smartadserver/android/library/model/d;->d:I

    goto :goto_1

    .line 132
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    return-void
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/smartadserver/android/library/ui/c;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public static b(Lcom/smartadserver/android/library/ui/c$a;)V
    .locals 2

    .prologue
    .line 96
    sget-object v1, Lcom/smartadserver/android/library/ui/c;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-object v0, Lcom/smartadserver/android/library/ui/c;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 98
    invoke-static {}, Lcom/smartadserver/android/library/ui/c;->c()V

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

.method private static c()V
    .locals 6

    .prologue
    const-wide/16 v2, 0xfa

    .line 46
    sget-object v0, Lcom/smartadserver/android/library/ui/c;->b:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 48
    sget-object v0, Lcom/smartadserver/android/library/ui/c;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/Timer;

    const-string v1, "SASViewabilityManager timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/smartadserver/android/library/ui/c;->b:Ljava/util/Timer;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/smartadserver/android/library/ui/c;->d:Landroid/os/Handler;

    .line 52
    sget-object v0, Lcom/smartadserver/android/library/ui/c;->b:Ljava/util/Timer;

    new-instance v1, Lcom/smartadserver/android/library/ui/c$1;

    invoke-direct {v1}, Lcom/smartadserver/android/library/ui/c$1;-><init>()V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    sget-object v0, Lcom/smartadserver/android/library/ui/c;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lcom/smartadserver/android/library/ui/c;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/smartadserver/android/library/ui/c;->b:Ljava/util/Timer;

    goto :goto_0
.end method
