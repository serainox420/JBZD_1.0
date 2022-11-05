.class Lcom/google/android/gms/internal/zzbnx$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbnx;->zze(IZ)Ljava/util/Iterator;
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
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field zzcaP:I

.field final synthetic zzcaQ:I

.field final synthetic zzcaR:Z

.field final synthetic zzcaS:Lcom/google/android/gms/internal/zzbnx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnx;IZ)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnx$1;->zzcaS:Lcom/google/android/gms/internal/zzbnx;

    iput p2, p0, Lcom/google/android/gms/internal/zzbnx$1;->zzcaQ:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzbnx$1;->zzcaR:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p0, Lcom/google/android/gms/internal/zzbnx$1;->zzcaQ:I

    iput v0, p0, Lcom/google/android/gms/internal/zzbnx$1;->zzcaP:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbnx$1;->zzcaR:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/zzbnx$1;->zzcaP:I

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/google/android/gms/internal/zzbnx$1;->zzcaP:I

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnx$1;->zzcaS:Lcom/google/android/gms/internal/zzbnx;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbnx;->zza(Lcom/google/android/gms/internal/zzbnx;)[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbnx$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnx$1;->zzcaS:Lcom/google/android/gms/internal/zzbnx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbnx;->zza(Lcom/google/android/gms/internal/zzbnx;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbnx$1;->zzcaP:I

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnx$1;->zzcaS:Lcom/google/android/gms/internal/zzbnx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbnx;->zzb(Lcom/google/android/gms/internal/zzbnx;)[Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/zzbnx$1;->zzcaP:I

    aget-object v2, v0, v2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbnx$1;->zzcaR:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzbnx$1;->zzcaP:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/zzbnx$1;->zzcaP:I

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbnx$1;->zzcaP:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove elements from ImmutableSortedMap"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
