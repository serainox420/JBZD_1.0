.class Lcom/google/android/gms/internal/zzly$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzid;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzly;->zzj(Lcom/google/android/gms/internal/zzqw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzQZ:Lcom/google/android/gms/internal/zzly;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzly;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzly$2;->zzQZ:Lcom/google/android/gms/internal/zzly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqw;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzly$2;->zzQZ:Lcom/google/android/gms/internal/zzly;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzly;->zza(Lcom/google/android/gms/internal/zzly;)Lcom/google/android/gms/ads/internal/zzs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzs;->zzct()V

    return-void
.end method
