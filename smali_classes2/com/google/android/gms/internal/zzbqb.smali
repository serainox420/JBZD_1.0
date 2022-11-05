.class public Lcom/google/android/gms/internal/zzbqb;
.super Lcom/google/android/gms/internal/zzbqe;


# instance fields
.field private final zzcgH:Z

.field private final zzcgI:Lcom/google/android/gms/internal/zzbqq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbqq",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbqq",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzbqe$zza;->zzcgO:Lcom/google/android/gms/internal/zzbqe$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzbqf;->zzcgR:Lcom/google/android/gms/internal/zzbqf;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/zzbqe;-><init>(Lcom/google/android/gms/internal/zzbqe$zza;Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbqb;->zzcgI:Lcom/google/android/gms/internal/zzbqq;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzbqb;->zzcgH:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "AckUserWrite { path=%s, revert=%s, affectedTree=%s }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbqb;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzbqb;->zzcgH:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbqb;->zzcgI:Lcom/google/android/gms/internal/zzbqq;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzZv()Lcom/google/android/gms/internal/zzbqq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbqq",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqb;->zzcgI:Lcom/google/android/gms/internal/zzbqq;

    return-object v0
.end method

.method public zzZw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbqb;->zzcgH:Z

    return v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbqe;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqb;->zzcag:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqb;->zzcag:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbrq;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "operationForChild called for unrelated child."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbte;->zzb(ZLjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbqb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqb;->zzcag:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqb;->zzcgI:Lcom/google/android/gms/internal/zzbqq;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzbqb;->zzcgH:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbqb;-><init>(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;Z)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqb;->zzcgI:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqb;->zzcgI:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->zzZO()Lcom/google/android/gms/internal/zzbny;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbny;->isEmpty()Z

    move-result v0

    const-string v1, "affectedTree should not have overlapping affected paths."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbte;->zzb(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqb;->zzcgI:Lcom/google/android/gms/internal/zzbqq;

    new-instance v1, Lcom/google/android/gms/internal/zzbph;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/zzbrq;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzbph;-><init>([Lcom/google/android/gms/internal/zzbrq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbqq;->zzI(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzbqb;

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzbqb;->zzcgH:Z

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/zzbqb;-><init>(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;Z)V

    move-object p0, v0

    goto :goto_0
.end method
