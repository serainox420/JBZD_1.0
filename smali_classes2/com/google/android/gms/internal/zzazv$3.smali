.class final Lcom/google/android/gms/internal/zzazv$3;
.super Lcom/google/android/gms/internal/zzazv$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzazv;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ILjava/lang/String;[I)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbDk:Ljava/lang/String;

.field final synthetic zzbDm:Ljava/lang/String;

.field final synthetic zzbDn:[I

.field final synthetic zzbDo:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;[IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzazv$3;->zzbDn:[I

    iput p3, p0, Lcom/google/android/gms/internal/zzazv$3;->zzbDo:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzazv$3;->zzbDm:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzazv$3;->zzbDk:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzazv$zzf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzazw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzazv$3;->zza(Lcom/google/android/gms/internal/zzazw;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzazw;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazv$3;->zzbDn:[I

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzazv$3;->zzbDr:Lcom/google/android/gms/internal/zzazt;

    iget v3, p0, Lcom/google/android/gms/internal/zzazv$3;->zzbDo:I

    iget-object v4, p0, Lcom/google/android/gms/internal/zzazv$3;->zzbDm:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzazv$3;->zzbDk:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzazw;->zza(Lcom/google/android/gms/internal/zzazt;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
