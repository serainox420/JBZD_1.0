.class public Lcom/google/android/gms/internal/zzboe;
.super Lcom/google/android/gms/internal/zzbof;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzbof",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzboc;->zzXb()Lcom/google/android/gms/internal/zzboc;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzboc;->zzXb()Lcom/google/android/gms/internal/zzboc;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbof;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbof;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)V

    return-void
.end method


# virtual methods
.method protected zzWZ()Lcom/google/android/gms/internal/zzbod$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbod$zza;->zzcaZ:Lcom/google/android/gms/internal/zzbod$zza;

    return-object v0
.end method

.method public zzXa()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbof;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;)",
            "Lcom/google/android/gms/internal/zzbof",
            "<TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboe;->getKey()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboe;->getValue()Ljava/lang/Object;

    move-result-object p2

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboe;->zzXc()Lcom/google/android/gms/internal/zzbod;

    move-result-object p3

    :cond_2
    if-nez p4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboe;->zzXd()Lcom/google/android/gms/internal/zzbod;

    move-result-object p4

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzboe;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzboe;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)V

    return-object v0
.end method
