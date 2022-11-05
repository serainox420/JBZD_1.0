.class public Lcom/google/android/gms/internal/zzel;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field private static final zztX:Ljava/lang/Object;

.field private static zzzT:Lcom/google/android/gms/internal/zzel;


# instance fields
.field private final zzzU:Lcom/google/android/gms/internal/zzqe;

.field private final zzzV:Lcom/google/android/gms/internal/zzek;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzel;->zztX:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzel;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzel;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzel;->zza(Lcom/google/android/gms/internal/zzel;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzqe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqe;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzzU:Lcom/google/android/gms/internal/zzqe;

    new-instance v0, Lcom/google/android/gms/internal/zzek;

    new-instance v1, Lcom/google/android/gms/internal/zzeb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzeb;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/zzea;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzea;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/zzfj;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzfj;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/zzht;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzht;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/zzny;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzny;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/zzlk;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzlk;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/zzky;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzky;-><init>()V

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzek;-><init>(Lcom/google/android/gms/internal/zzeb;Lcom/google/android/gms/internal/zzea;Lcom/google/android/gms/internal/zzfj;Lcom/google/android/gms/internal/zzht;Lcom/google/android/gms/internal/zzny;Lcom/google/android/gms/internal/zzlk;Lcom/google/android/gms/internal/zzky;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzzV:Lcom/google/android/gms/internal/zzek;

    return-void
.end method

.method protected static zza(Lcom/google/android/gms/internal/zzel;)V
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzel;->zztX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/google/android/gms/internal/zzel;->zzzT:Lcom/google/android/gms/internal/zzel;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static zzeS()Lcom/google/android/gms/internal/zzel;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzel;->zztX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzel;->zzzT:Lcom/google/android/gms/internal/zzel;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static zzeT()Lcom/google/android/gms/internal/zzqe;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeS()Lcom/google/android/gms/internal/zzel;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzel;->zzzU:Lcom/google/android/gms/internal/zzqe;

    return-object v0
.end method

.method public static zzeU()Lcom/google/android/gms/internal/zzek;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeS()Lcom/google/android/gms/internal/zzel;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzel;->zzzV:Lcom/google/android/gms/internal/zzek;

    return-object v0
.end method
