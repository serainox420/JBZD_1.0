.class Lcom/google/android/gms/internal/zzbit$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbit;->zzTj()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/android/gms/internal/zzbit",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic zzbMK:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbit;Ljava/util/Iterator;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbit$1;->zzbMK:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbit$1;->zzbMK:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbit$1;->zzTk()Lcom/google/android/gms/internal/zzbit;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbit$1;->zzbMK:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method

.method public zzTk()Lcom/google/android/gms/internal/zzbit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzbjb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbit$1;->zzbMK:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
