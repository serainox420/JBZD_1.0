.class Lcom/google/android/gms/internal/zzbuk$3;
.super Lcom/google/android/gms/internal/zzbvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbuk;->zzbj(Z)Lcom/google/android/gms/internal/zzbvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbvc",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzcpj:Lcom/google/android/gms/internal/zzbuk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbuk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbuk$3;->zzcpj:Lcom/google/android/gms/internal/zzbuk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvc;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Number;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadP()Lcom/google/android/gms/internal/zzbwj;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbuk$3;->zzcpj:Lcom/google/android/gms/internal/zzbuk;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/zzbuk;->zza(Lcom/google/android/gms/internal/zzbuk;D)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzbwj;->zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/zzbwj;

    goto :goto_0
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbuk$3;->zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbuk$3;->zze(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public zze(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->zzadF()Lcom/google/android/gms/internal/zzbwi;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbwi;->zzcsI:Lcom/google/android/gms/internal/zzbwi;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method
