.class Lcom/google/android/gms/internal/zzbwf$15$1;
.super Lcom/google/android/gms/internal/zzbvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbwf$15;->zza(Lcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbwg;)Lcom/google/android/gms/internal/zzbvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbvc",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzcsa:Lcom/google/android/gms/internal/zzbvc;

.field final synthetic zzcsb:Lcom/google/android/gms/internal/zzbwf$15;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbwf$15;Lcom/google/android/gms/internal/zzbvc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbwf$15$1;->zzcsb:Lcom/google/android/gms/internal/zzbwf$15;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbwf$15$1;->zzcsa:Lcom/google/android/gms/internal/zzbvc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvc;-><init>()V

    return-void
.end method


# virtual methods
.method public zzA(Lcom/google/android/gms/internal/zzbwh;)Ljava/sql/Timestamp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwf$15$1;->zzcsa:Lcom/google/android/gms/internal/zzbvc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbvc;->zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbwf$15$1;->zza(Lcom/google/android/gms/internal/zzbwj;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbwj;Ljava/sql/Timestamp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwf$15$1;->zzcsa:Lcom/google/android/gms/internal/zzbvc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbvc;->zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbwf$15$1;->zzA(Lcom/google/android/gms/internal/zzbwh;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method
