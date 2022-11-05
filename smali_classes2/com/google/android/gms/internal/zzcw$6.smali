.class Lcom/google/android/gms/internal/zzcw$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzid;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzwP:Lcom/google/android/gms/internal/zzcw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcw$6;->zzwP:Lcom/google/android/gms/internal/zzcw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V
    .locals 2
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcw$6;->zzwP:Lcom/google/android/gms/internal/zzcw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcw;->zza(Lcom/google/android/gms/internal/zzcw;)Lcom/google/android/gms/internal/zzct;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzct;->zzb(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcw$6;->zzwP:Lcom/google/android/gms/internal/zzcw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcw;->zza(Lcom/google/android/gms/internal/zzcw;)Lcom/google/android/gms/internal/zzct;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcw$6;->zzwP:Lcom/google/android/gms/internal/zzcw;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zzct;->zza(Lcom/google/android/gms/internal/zzcx;Ljava/util/Map;)V

    goto :goto_0
.end method
