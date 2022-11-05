.class final Lcom/google/android/gms/wearable/internal/zzcw$zzl;
.super Lcom/google/android/gms/wearable/internal/zzcw$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/zzcw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzcw$zzb",
        "<",
        "Lcom/google/android/gms/wearable/DataItemBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/wearable/DataItemBuffer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzcw$zzb;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    return-void
.end method


# virtual methods
.method public zzar(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/DataItemBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/wearable/DataItemBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzcw$zzl;->zzaa(Ljava/lang/Object;)V

    return-void
.end method
