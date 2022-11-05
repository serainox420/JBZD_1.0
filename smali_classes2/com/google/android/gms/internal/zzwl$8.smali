.class final Lcom/google/android/gms/internal/zzwl$8;
.super Lcom/google/android/gms/internal/zzafm$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzwl;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/internal/zzafm$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamy:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/zzwl$8;->zzamy:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzafm$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzafn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzwl$8;->zza(Lcom/google/android/gms/internal/zzafn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzafn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzwn;

    iget v1, p0, Lcom/google/android/gms/internal/zzwl$8;->zzamy:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzwn;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/zzafn;->zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzwn;)V

    return-void
.end method
