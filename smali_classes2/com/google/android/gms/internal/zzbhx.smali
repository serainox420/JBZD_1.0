.class public Lcom/google/android/gms/internal/zzbhx;
.super Ljava/lang/Object;


# instance fields
.field private final zzbEU:Ljava/lang/String;

.field private final zzbHv:Ljava/lang/String;

.field private final zzbJg:Ljava/lang/String;

.field private final zzbLO:Ljava/lang/String;

.field private final zzbLP:Z

.field private final zzbLQ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbhx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbhx;->zzbEU:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbhx;->zzbJg:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbhx;->zzbLO:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzbhx;->zzbLP:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbhx;->zzbLQ:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbhx;->zzbHv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhx;->zzbEU:Ljava/lang/String;

    return-object v0
.end method

.method public zzSD()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhx;->zzbJg:Ljava/lang/String;

    return-object v0
.end method

.method public zzSE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhx;->zzbLO:Ljava/lang/String;

    return-object v0
.end method

.method public zzSF()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhx;->zzbLO:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhx;->zzbLO:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbhx;->zzbEU:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhx;->zzbEU:Ljava/lang/String;

    goto :goto_0
.end method

.method public zzSG()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbhx;->zzbLP:Z

    return v0
.end method

.method public zzSH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhx;->zzbLQ:Ljava/lang/String;

    return-object v0
.end method

.method public zzSI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhx;->zzbHv:Ljava/lang/String;

    return-object v0
.end method
