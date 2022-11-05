.class final Lcom/google/android/gms/internal/zzzo$zzb;
.super Lcom/google/android/gms/internal/zzaad$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzzo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaad$zza",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        "Lcom/google/android/gms/internal/zzzp;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaxS:Lcom/google/android/gms/internal/zzzm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzzm;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzzk;->API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzaad$zza;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzo$zzb;->zzaxS:Lcom/google/android/gms/internal/zzzm;

    return-void
.end method


# virtual methods
.method public synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaad$zza;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzzp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzzo$zzb;->zza(Lcom/google/android/gms/internal/zzzp;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzzp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzzo$zzb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzzo$zzb$1;-><init>(Lcom/google/android/gms/internal/zzzo$zzb;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzzo$zzb;->zzaxS:Lcom/google/android/gms/internal/zzzm;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzzo;->zzb(Lcom/google/android/gms/internal/zzzm;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzo$zzb;->zzaxS:Lcom/google/android/gms/internal/zzzm;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzzp;->zza(Lcom/google/android/gms/internal/zzzr;Lcom/google/android/gms/internal/zzzm;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ClearcutLoggerApiImpl"

    const-string v2, "derived ClearcutLogger.MessageProducer "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xa

    const-string v2, "MessageProducer"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzzo$zzb;->zzB(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method protected zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzzo$zzb;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
