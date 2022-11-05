.class final Lcom/google/android/gms/internal/zzbqp$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbqr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbqp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbqr",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/google/android/gms/internal/zzbrb;",
        "Lcom/google/android/gms/internal/zzbqo;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzaD(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzbrb;",
            "Lcom/google/android/gms/internal/zzbqo;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzbrb;->zzcie:Lcom/google/android/gms/internal/zzbrb;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzbqo;->zzbqY:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic zzas(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbqp$2;->zzaD(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method
