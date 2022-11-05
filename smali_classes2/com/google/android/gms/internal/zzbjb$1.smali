.class Lcom/google/android/gms/internal/zzbjb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbjb;->zzTh()Ljava/util/Iterator;
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

.field final synthetic zzbNd:Lcom/google/android/gms/internal/zzbjb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbjb;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbjb$1;->zzbNd:Lcom/google/android/gms/internal/zzbjb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbjb$1;->zzbMW:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzbjb$1;->zzbMW:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbjb$1;->zzbNd:Lcom/google/android/gms/internal/zzbjb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbjb;->zza(Lcom/google/android/gms/internal/zzbjb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjb$1;->zzTk()Lcom/google/android/gms/internal/zzbit;

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

    iget v0, p0, Lcom/google/android/gms/internal/zzbjb$1;->zzbMW:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbjb$1;->zzbNd:Lcom/google/android/gms/internal/zzbjb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbjb;->zza(Lcom/google/android/gms/internal/zzbjb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    iget v1, p0, Lcom/google/android/gms/internal/zzbjb$1;->zzbMW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzbjb$1;->zzbMW:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    return-object v0
.end method
