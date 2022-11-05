.class final Lcom/google/android/gms/internal/zzbqp$4;
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
        "Lcom/google/android/gms/internal/zzbqo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic zzas(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzbqo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbqp$4;->zzc(Lcom/google/android/gms/internal/zzbqo;)Z

    move-result v0

    return v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbqo;)Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzbqp;->zzZM()Lcom/google/android/gms/internal/zzbqr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbqr;->zzas(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
