.class public Lcom/google/android/gms/internal/zzbnq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbnq$zza;
    }
.end annotation


# static fields
.field private static zzbZm:Lcom/google/android/gms/internal/zzbnq;


# instance fields
.field private zzbZl:Lcom/google/android/gms/dynamite/DynamiteModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzWD()Lcom/google/android/gms/internal/zzbnq;
    .locals 2

    const-class v1, Lcom/google/android/gms/internal/zzbnq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzbnq;->zzbZm:Lcom/google/android/gms/internal/zzbnq;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbnq;->zzbZm:Lcom/google/android/gms/internal/zzbnq;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbnq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbnq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbnq;->zzbZm:Lcom/google/android/gms/internal/zzbnq;

    sget-object v0, Lcom/google/android/gms/internal/zzbnq;->zzbZm:Lcom/google/android/gms/internal/zzbnq;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public zzWE()Lcom/google/android/gms/internal/zzbnp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbnq$zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnq;->zzbZl:Lcom/google/android/gms/dynamite/DynamiteModule;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnq;->zzbZl:Lcom/google/android/gms/dynamite/DynamiteModule;

    const-string v1, "com.google.firebase.crash.internal.api.FirebaseCrashApiImpl"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzdT(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbnp$zza;->zzfM(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbnp;
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zza; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzbnq$zza;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzbnq$zza;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/zzbnq$1;)V

    throw v1
.end method

.method public zzaG(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbnq$zza;
        }
    .end annotation

    const-class v1, Lcom/google/android/gms/internal/zzbnq;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnq;->zzbZl:Lcom/google/android/gms/dynamite/DynamiteModule;

    if-eqz v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRW:Lcom/google/android/gms/dynamite/DynamiteModule$zzb;

    const-string v2, "com.google.android.gms.crash"

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$zzb;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnq;->zzbZl:Lcom/google/android/gms/dynamite/DynamiteModule;
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zza; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v2, Lcom/google/android/gms/internal/zzbnq$zza;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/zzbnq$zza;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/zzbnq$1;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
