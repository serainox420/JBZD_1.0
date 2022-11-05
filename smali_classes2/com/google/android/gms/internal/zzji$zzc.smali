.class public Lcom/google/android/gms/internal/zzji$zzc;
.super Lcom/google/android/gms/internal/zzqq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzqq",
        "<",
        "Lcom/google/android/gms/internal/zzjj;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzKb:Lcom/google/android/gms/internal/zzji$zzd;

.field private zzKc:Z

.field private final zzrJ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzji$zzd;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqq;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzji$zzc;->zzrJ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzji$zzc;->zzKb:Lcom/google/android/gms/internal/zzji$zzd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzji$zzc;)Lcom/google/android/gms/internal/zzji$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$zzc;->zzKb:Lcom/google/android/gms/internal/zzji$zzd;

    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzji$zzc;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzji$zzc;->zzKc:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzji$zzc;->zzKc:Z

    new-instance v0, Lcom/google/android/gms/internal/zzji$zzc$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzji$zzc$1;-><init>(Lcom/google/android/gms/internal/zzji$zzc;)V

    new-instance v2, Lcom/google/android/gms/internal/zzqp$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzqp$zzb;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzji$zzc;->zza(Lcom/google/android/gms/internal/zzqp$zzc;Lcom/google/android/gms/internal/zzqp$zza;)V

    new-instance v0, Lcom/google/android/gms/internal/zzji$zzc$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzji$zzc$2;-><init>(Lcom/google/android/gms/internal/zzji$zzc;)V

    new-instance v2, Lcom/google/android/gms/internal/zzji$zzc$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzji$zzc$3;-><init>(Lcom/google/android/gms/internal/zzji$zzc;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzji$zzc;->zza(Lcom/google/android/gms/internal/zzqp$zzc;Lcom/google/android/gms/internal/zzqp$zza;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
