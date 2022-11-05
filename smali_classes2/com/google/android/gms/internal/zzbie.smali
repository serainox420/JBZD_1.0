.class public Lcom/google/android/gms/internal/zzbie;
.super Ljava/lang/Object;


# instance fields
.field private zzbMd:Lcom/google/android/gms/internal/zzbhx;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbie;->zzbMd:Lcom/google/android/gms/internal/zzbhx;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbie;->zzbMd:Lcom/google/android/gms/internal/zzbhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbhx;->getContainerId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public zzSK()Lcom/google/android/gms/internal/zzbhx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbie;->zzbMd:Lcom/google/android/gms/internal/zzbhx;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbhx;)Lcom/google/android/gms/internal/zzbie;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbie;->zzbMd:Lcom/google/android/gms/internal/zzbhx;

    return-object p0
.end method
