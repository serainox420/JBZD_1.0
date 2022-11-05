.class Lcom/google/android/gms/internal/zzbdj$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbcq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbdj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbdj$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbdj$zzb;-><init>()V

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

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcr;->zzd(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbcr;->zzd(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbiv;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    return-object v2
.end method
