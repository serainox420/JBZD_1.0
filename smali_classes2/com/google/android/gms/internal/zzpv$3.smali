.class Lcom/google/android/gms/internal/zzpv$3;
.super Lcom/google/android/gms/internal/zzac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpv;->zza(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/zzqm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzYq:[B

.field final synthetic zzYr:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpv;ILjava/lang/String;Lcom/google/android/gms/internal/zzn$zzb;Lcom/google/android/gms/internal/zzn$zza;[BLjava/util/Map;)V
    .locals 0

    iput-object p6, p0, Lcom/google/android/gms/internal/zzpv$3;->zzYq:[B

    iput-object p7, p0, Lcom/google/android/gms/internal/zzpv$3;->zzYr:Ljava/util/Map;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/zzac;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzn$zzb;Lcom/google/android/gms/internal/zzn$zza;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$3;->zzYr:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzac;->getHeaders()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$3;->zzYr:Ljava/util/Map;

    goto :goto_0
.end method

.method public zzm()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$3;->zzYq:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzac;->zzm()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$3;->zzYq:[B

    goto :goto_0
.end method
