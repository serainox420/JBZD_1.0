.class Lcom/smartadserver/android/library/c/h$a;
.super Ljava/lang/Object;
.source "SASMediationAdManager.java"

# interfaces
.implements Lcom/smartadserver/android/library/c/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/h;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/smartadserver/android/library/c/h;)V
    .locals 1

    .prologue
    .line 38
    iput-object p1, p0, Lcom/smartadserver/android/library/c/h$a;->a:Lcom/smartadserver/android/library/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/c/h$a;->b:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/h$a;->c:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/c/h$a;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartadserver/android/library/c/h;Lcom/smartadserver/android/library/c/h$1;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/c/h$a;-><init>(Lcom/smartadserver/android/library/c/h;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/smartadserver/android/library/c/h$a;->b:I

    return v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/smartadserver/android/library/c/h$a;->b:I

    .line 68
    iput-object p1, p0, Lcom/smartadserver/android/library/c/h$a;->c:Ljava/lang/String;

    .line 69
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 71
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/smartadserver/android/library/c/h$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 58
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Lcom/smartadserver/android/library/c/h$a;->b:I

    .line 59
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 61
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :try_start_2
    iget-boolean v1, p0, Lcom/smartadserver/android/library/c/h$a;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 58
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/smartadserver/android/library/c/h$a;->a:Lcom/smartadserver/android/library/c/h;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/h;->a(Lcom/smartadserver/android/library/c/h;)Lcom/smartadserver/android/library/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/smartadserver/android/library/c/h$a;->a:Lcom/smartadserver/android/library/c/h;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/c/h;->a()V

    .line 87
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/c/h$a;->d:Z

    .line 91
    return-void
.end method
