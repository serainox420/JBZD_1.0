.class public Lcom/google/android/gms/internal/zzayk;
.super Lcom/google/android/gms/nearby/messages/internal/zzm$zza;

# interfaces
.implements Lcom/google/android/gms/internal/zzayj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/nearby/messages/internal/zzm$zza;",
        "Lcom/google/android/gms/internal/zzayj",
        "<",
        "Lcom/google/android/gms/nearby/messages/MessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbBp:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzm$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayk;->zzbBp:Lcom/google/android/gms/internal/zzabh;

    return-void
.end method


# virtual methods
.method public zzL(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/Update;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayk;->zzbBp:Lcom/google/android/gms/internal/zzabh;

    new-instance v1, Lcom/google/android/gms/internal/zzayk$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzayk$1;-><init>(Lcom/google/android/gms/internal/zzayk;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    return-void
.end method

.method public zzOP()Lcom/google/android/gms/internal/zzabh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayk;->zzbBp:Lcom/google/android/gms/internal/zzabh;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/nearby/messages/internal/zzv;)V
    .locals 0

    return-void
.end method

.method public zzb(Lcom/google/android/gms/nearby/messages/internal/zzv;)V
    .locals 0

    return-void
.end method
