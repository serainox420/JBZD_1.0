.class Lcom/google/android/gms/internal/zzapm$zza;
.super Lcom/google/android/gms/internal/zzaom$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzapm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/fitness/result/DataReadResult;",
            ">;"
        }
    .end annotation
.end field

.field private zzaUV:I

.field private zzaUW:Lcom/google/android/gms/fitness/result/DataReadResult;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/fitness/result/DataReadResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaom$zza;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzapm$zza;->zzaUV:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapm$zza;->zzaUW:Lcom/google/android/gms/fitness/result/DataReadResult;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapm$zza;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzapm$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzapm$zza;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/fitness/result/DataReadResult;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "Fitness"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Fitness"

    iget v1, p0, Lcom/google/android/gms/internal/zzapm$zza;->zzaUV:I

    const/16 v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Received batch result "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapm$zza;->zzaUW:Lcom/google/android/gms/fitness/result/DataReadResult;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapm$zza;->zzaUW:Lcom/google/android/gms/fitness/result/DataReadResult;

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/zzapm$zza;->zzaUV:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapm$zza;->zzaUV:I

    iget v0, p0, Lcom/google/android/gms/internal/zzapm$zza;->zzaUV:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapm$zza;->zzaUW:Lcom/google/android/gms/fitness/result/DataReadResult;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/result/DataReadResult;->zzDq()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapm$zza;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapm$zza;->zzaUW:Lcom/google/android/gms/fitness/result/DataReadResult;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaad$zzb;->setResult(Ljava/lang/Object;)V

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapm$zza;->zzaUW:Lcom/google/android/gms/fitness/result/DataReadResult;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/result/DataReadResult;->zzb(Lcom/google/android/gms/fitness/result/DataReadResult;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
