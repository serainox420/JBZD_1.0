.class Lcom/google/android/gms/internal/zzbiy$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbiy;->zzTh()Ljava/util/Iterator;
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
.field private zzbMW:I

.field final synthetic zzbMX:Lcom/google/android/gms/internal/zzbiy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbiy;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbiy$1;->zzbMX:Lcom/google/android/gms/internal/zzbiy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbiy$1;->zzbMW:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzbiy$1;->zzbMW:I

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbiy$1;->zzbMX:Lcom/google/android/gms/internal/zzbiy;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbiy;->zza(Lcom/google/android/gms/internal/zzbiy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbiy$1;->zzbMX:Lcom/google/android/gms/internal/zzbiy;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbiy;->zza(Lcom/google/android/gms/internal/zzbiy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbiy$1;->zzTk()Lcom/google/android/gms/internal/zzbit;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public zzTk()Lcom/google/android/gms/internal/zzbit;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzbiy$1;->zzbMW:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbiy$1;->zzbMX:Lcom/google/android/gms/internal/zzbiy;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbiy;->zza(Lcom/google/android/gms/internal/zzbiy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbiy$1;->zzbMW:I

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbiy$1;->zzbMX:Lcom/google/android/gms/internal/zzbiy;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbiy;->zza(Lcom/google/android/gms/internal/zzbiy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbiy$1;->zzbMX:Lcom/google/android/gms/internal/zzbiy;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbiy;->zza(Lcom/google/android/gms/internal/zzbiy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/zzbiy$1;->zzbMW:I

    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    iget v1, p0, Lcom/google/android/gms/internal/zzbiy$1;->zzbMW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzbiy$1;->zzbMW:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
