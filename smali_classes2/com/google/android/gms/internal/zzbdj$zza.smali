.class Lcom/google/android/gms/internal/zzbdj$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbdj;->zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/zzbit",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic zzbLs:Lcom/google/android/gms/internal/zzbiw;

.field final synthetic zzbLt:Lcom/google/android/gms/internal/zzbcd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbdj;Lcom/google/android/gms/internal/zzbiw;Lcom/google/android/gms/internal/zzbcd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbdj$zza;->zzbLs:Lcom/google/android/gms/internal/zzbiw;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbdj$zza;->zzbLt:Lcom/google/android/gms/internal/zzbcd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzbit;

    check-cast p2, Lcom/google/android/gms/internal/zzbit;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbdj$zza;->zze(Lcom/google/android/gms/internal/zzbit;Lcom/google/android/gms/internal/zzbit;)I

    move-result v0

    return v0
.end method

.method public zze(Lcom/google/android/gms/internal/zzbit;Lcom/google/android/gms/internal/zzbit;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;)I"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdj$zza;->zzbLs:Lcom/google/android/gms/internal/zzbiw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbiw;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbcq;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbdj$zza;->zzbLt:Lcom/google/android/gms/internal/zzbcd;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/android/gms/internal/zzbit;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/zzbcq;->zzb(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbiv;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    check-cast v0, Lcom/google/android/gms/internal/zzbiv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbiv;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method
