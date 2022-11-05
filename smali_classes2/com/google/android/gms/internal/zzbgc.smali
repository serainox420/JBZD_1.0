.class public Lcom/google/android/gms/internal/zzbgc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbcq;


# instance fields
.field private final zzbLw:Lcom/google/android/gms/internal/zzbaz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbaz;->zzcd(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbaz;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbgc;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzbaz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbgc;->zzbLw:Lcom/google/android/gms/internal/zzbaz;

    return-void
.end method


# virtual methods
.method public varargs zzb(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbcd;",
            "[",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;)",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    array-length v0, p2

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbgc;->zzbLw:Lcom/google/android/gms/internal/zzbaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbaz;->zzPV()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzbjb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method
