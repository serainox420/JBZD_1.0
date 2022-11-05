.class final Lcom/google/android/gms/wearable/internal/zzq$zzb;
.super Lcom/google/android/gms/wearable/internal/zzm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/zzq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzm",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaiJ:Ljava/lang/String;

.field private zzbTT:Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzm;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzq$zzb;->zzbTT:Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzq$zzb;->zzaiJ:Ljava/lang/String;

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

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzcx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzq$zzb;->zza(Lcom/google/android/gms/wearable/internal/zzcx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/wearable/internal/zzcx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzq$zzb;->zzbTT:Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzq$zzb;->zzaiJ:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzcx;->zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzq$zzb;->zzbTT:Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzq$zzb;->zzbTT:Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    return-object p1
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzq$zzb;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
