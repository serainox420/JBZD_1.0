.class final Lcom/google/android/gms/internal/zzawb$zzh;
.super Lcom/google/android/gms/internal/zzawm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzawb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzh"
.end annotation


# instance fields
.field private final zzaUC:Lcom/google/android/gms/internal/zzaad$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawm$zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaad$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawb$zzh;->zzaUC:Lcom/google/android/gms/internal/zzaad$zzb;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaxb;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb$zzh;->zzaUC:Lcom/google/android/gms/internal/zzaad$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzawb$zzg;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaxb;->getStatusCode()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaxb;->getLocalEndpointName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzawb$zzg;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaad$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
