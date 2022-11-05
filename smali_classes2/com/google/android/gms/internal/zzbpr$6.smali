.class Lcom/google/android/gms/internal/zzbpr$6;
.super Lcom/google/android/gms/internal/zzbod$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbod$zzb",
        "<",
        "Lcom/google/android/gms/internal/zzbrq;",
        "Lcom/google/android/gms/internal/zzbqq",
        "<",
        "Lcom/google/android/gms/internal/zzbpq;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic zzceI:Ljava/util/List;

.field final synthetic zzcfV:Lcom/google/android/gms/internal/zzbpr;

.field final synthetic zzcga:Lcom/google/android/gms/internal/zzbsc;

.field final synthetic zzcgb:Lcom/google/android/gms/internal/zzbpz;

.field final synthetic zzcgc:Lcom/google/android/gms/internal/zzbqe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbqe;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpr$6;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpr$6;->zzcga:Lcom/google/android/gms/internal/zzbsc;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpr$6;->zzcgb:Lcom/google/android/gms/internal/zzbpz;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbpr$6;->zzcgc:Lcom/google/android/gms/internal/zzbqe;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbpr$6;->zzceI:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbod$zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbqq;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbrq;",
            "Lcom/google/android/gms/internal/zzbqq",
            "<",
            "Lcom/google/android/gms/internal/zzbpq;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$6;->zzcga:Lcom/google/android/gms/internal/zzbsc;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$6;->zzcga:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$6;->zzcgb:Lcom/google/android/gms/internal/zzbpz;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbpz;->zzb(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbpz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpr$6;->zzcgc:Lcom/google/android/gms/internal/zzbqe;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzbqe;->zzc(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbqe;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpr$6;->zzceI:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpr$6;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v4, v2, p2, v0, v1}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public synthetic zzj(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbrq;

    check-cast p2, Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbpr$6;->zza(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbqq;)V

    return-void
.end method
