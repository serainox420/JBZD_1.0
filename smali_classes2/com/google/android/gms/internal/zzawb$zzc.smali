.class final Lcom/google/android/gms/internal/zzawb$zzc;
.super Lcom/google/android/gms/internal/zzawh$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzawb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzc"
.end annotation


# instance fields
.field private final zzbyA:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzabh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawh$zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzabh;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawb$zzc;->zzbyA:Lcom/google/android/gms/internal/zzabh;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzawp;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb$zzc;->zzbyA:Lcom/google/android/gms/internal/zzabh;

    new-instance v1, Lcom/google/android/gms/internal/zzawb$zzc$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzawb$zzc$1;-><init>(Lcom/google/android/gms/internal/zzawb$zzc;Lcom/google/android/gms/internal/zzawp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    return-void
.end method
