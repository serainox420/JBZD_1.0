.class final Lcom/google/android/gms/wearable/internal/zzcw$zzi;
.super Lcom/google/android/gms/wearable/internal/zzcw$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/zzcw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzcw$zzb",
        "<",
        "Lcom/google/android/gms/wearable/Channel$GetOutputStreamResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbUS:Lcom/google/android/gms/wearable/internal/zzac;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/internal/zzac;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/Channel$GetOutputStreamResult;",
            ">;",
            "Lcom/google/android/gms/wearable/internal/zzac;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzcw$zzb;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzac;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcw$zzi;->zzbUS:Lcom/google/android/gms/wearable/internal/zzac;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/wearable/internal/zzaz;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/google/android/gms/wearable/internal/zzaz;->zzbUv:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzx;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v2, p1, Lcom/google/android/gms/wearable/internal/zzaz;->zzbUv:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/internal/zzx;-><init>(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzcw$zzi;->zzbUS:Lcom/google/android/gms/wearable/internal/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/internal/zzx;->zzUu()Lcom/google/android/gms/wearable/internal/zzad;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/internal/zzac;->zza(Lcom/google/android/gms/wearable/internal/zzad;)V

    :cond_0
    new-instance v1, Lcom/google/android/gms/wearable/internal/zzu$zzb;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget v3, p1, Lcom/google/android/gms/wearable/internal/zzaz;->statusCode:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/wearable/internal/zzu$zzb;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/internal/zzcw$zzi;->zzaa(Ljava/lang/Object;)V

    return-void
.end method
