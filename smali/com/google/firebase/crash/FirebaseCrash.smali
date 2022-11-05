.class public Lcom/google/firebase/crash/FirebaseCrash;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile e:Lcom/google/firebase/crash/FirebaseCrash;


# instance fields
.field private b:Z

.field private c:Lcom/google/android/gms/internal/zzbnp;

.field private d:Lcom/google/android/gms/internal/zzbnl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/firebase/crash/FirebaseCrash;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/a;Z)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/firebase/crash/FirebaseCrash;->b:Z

    invoke-virtual {p1}, Lcom/google/firebase/a;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    const-string v2, "Application context is missing, disabling api"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/google/firebase/crash/FirebaseCrash;->b:Z

    :cond_0
    iget-boolean v1, p0, Lcom/google/firebase/crash/FirebaseCrash;->b:Z

    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/a;->c()Lcom/google/firebase/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/a;->c()Lcom/google/firebase/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzbnn;

    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/zzbnn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbnq;->zzWD()Lcom/google/android/gms/internal/zzbnq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbnq;->zzaG(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbnq;->zzWD()Lcom/google/android/gms/internal/zzbnq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbnq;->zzWE()Lcom/google/android/gms/internal/zzbnp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crash/FirebaseCrash;->c:Lcom/google/android/gms/internal/zzbnp;

    iget-object v1, p0, Lcom/google/firebase/crash/FirebaseCrash;->c:Lcom/google/android/gms/internal/zzbnp;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/zzbnp;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzbnn;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbnl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbnl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/firebase/crash/FirebaseCrash;->d:Lcom/google/android/gms/internal/zzbnl;

    invoke-direct {p0}, Lcom/google/firebase/crash/FirebaseCrash;->f()V

    sget-object v1, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    const-string v2, "FirebaseCrash reporting initialized "

    invoke-static {}, Lcom/google/android/gms/internal/zzbnq;->zzWD()Lcom/google/android/gms/internal/zzbnq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    const-string v2, "Failed to initialize crash reporting: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/google/firebase/crash/FirebaseCrash;->b:Z

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    const-string v1, "Crash reporting is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static a()Lcom/google/firebase/crash/FirebaseCrash;
    .locals 2

    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->e:Lcom/google/firebase/crash/FirebaseCrash;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/firebase/crash/FirebaseCrash;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->e:Lcom/google/firebase/crash/FirebaseCrash;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/a;->d()Lcom/google/firebase/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->getInstance(Lcom/google/firebase/a;)Lcom/google/firebase/crash/FirebaseCrash;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crash/FirebaseCrash;->e:Lcom/google/firebase/crash/FirebaseCrash;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->e:Lcom/google/firebase/crash/FirebaseCrash;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/google/firebase/crash/FirebaseCrash;->a()Lcom/google/firebase/crash/FirebaseCrash;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/crash/FirebaseCrash;->b(Ljava/lang/String;JLandroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzbnm; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbnm;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbnm;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/crash/FirebaseCrash;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbnm;

    const-string v1, "Firebase Crash Reporting is disabled."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbnm;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->d:Lcom/google/android/gms/internal/zzbnl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbnl;->zzWB()V

    return-void
.end method

.method private c()Lcom/google/android/gms/internal/zzbnp;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->c:Lcom/google/android/gms/internal/zzbnp;

    return-object v0
.end method

.method private d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->b:Z

    return v0
.end method

.method private static e()Z
    .locals 4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/google/firebase/crash/FirebaseCrash;->e()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FirebaseCrash reporting may only be initialized on the main thread (preferably in your app\'s Application.onCreate)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbnr;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/zzbnr;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/google/firebase/crash/FirebaseCrash;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/firebase/iid/b;->a()Lcom/google/firebase/iid/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/a;)Lcom/google/firebase/crash/FirebaseCrash;
    .locals 4
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbns;->initialize(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/zzbns;->zzbZp:Lcom/google/android/gms/internal/zzaqa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqa;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Lcom/google/firebase/crash/FirebaseCrash;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/crash/FirebaseCrash;-><init>(Lcom/google/firebase/a;Z)V

    const-class v2, Lcom/google/firebase/crash/FirebaseCrash;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->e:Lcom/google/firebase/crash/FirebaseCrash;

    if-nez v0, :cond_0

    sput-object v1, Lcom/google/firebase/crash/FirebaseCrash;->e:Lcom/google/firebase/crash/FirebaseCrash;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->e:Lcom/google/firebase/crash/FirebaseCrash;

    invoke-direct {v0}, Lcom/google/firebase/crash/FirebaseCrash;->b()V
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzbnm; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-object v1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    const-string v3, "Cannot register Firebase Analytics listener since Firebase Crash Reporting is not enabled"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbnm;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/crash/FirebaseCrash;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbnm;

    const-string v1, "Firebase Crash Reporting is disabled."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbnm;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/crash/FirebaseCrash;->c()Lcom/google/android/gms/internal/zzbnp;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/crash/FirebaseCrash;->d:Lcom/google/android/gms/internal/zzbnl;

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/gms/internal/zzbnl;->zza(ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v2, 0xc8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/google/firebase/crash/FirebaseCrash;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbnp;->zziC(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbnp;->zzO(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    const-string v2, "report remoting failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public b(Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbnm;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/crash/FirebaseCrash;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbnm;

    const-string v1, "Firebase Crash Reporting is disabled."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbnm;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/crash/FirebaseCrash;->c()Lcom/google/android/gms/internal/zzbnp;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbnp;->zzb(Ljava/lang/String;JLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    const-string v2, "log remoting failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
