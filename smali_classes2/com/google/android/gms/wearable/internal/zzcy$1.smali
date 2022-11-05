.class final Lcom/google/android/gms/wearable/internal/zzcy$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzabh$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/zzcy;->zzas(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/internal/zzabh$zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzabh$zzc",
        "<",
        "Lcom/google/android/gms/wearable/DataApi$DataListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbTn:Lcom/google/android/gms/common/data/DataHolder;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzcy$1;->zzbTn:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/wearable/DataApi$DataListener;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/wearable/DataEventBuffer;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzcy$1;->zzbTn:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/DataEventBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/DataApi$DataListener;->onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy$1;->zzbTn:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzcy$1;->zzbTn:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    throw v0
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/wearable/DataApi$DataListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzcy$1;->zza(Lcom/google/android/gms/wearable/DataApi$DataListener;)V

    return-void
.end method

.method public zzwc()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy$1;->zzbTn:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void
.end method
