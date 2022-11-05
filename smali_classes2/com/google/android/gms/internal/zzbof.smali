.class public abstract Lcom/google/android/gms/internal/zzbof;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbod",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zzcbc:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private zzcbd:Lcom/google/android/gms/internal/zzbod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final zzcbe:Lcom/google/android/gms/internal/zzbod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbof;->zzcbc:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbof;->value:Ljava/lang/Object;

    if-nez p3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzboc;->zzXb()Lcom/google/android/gms/internal/zzboc;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    if-nez p4, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzboc;->zzXb()Lcom/google/android/gms/internal/zzboc;

    move-result-object p4

    :cond_1
    iput-object p4, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    return-void
.end method

.method private zzXh()Lcom/google/android/gms/internal/zzbod;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzboc;->zzXb()Lcom/google/android/gms/internal/zzboc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbof;->zzXc()Lcom/google/android/gms/internal/zzbod;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXa()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbof;->zzXc()Lcom/google/android/gms/internal/zzbod;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXc()Lcom/google/android/gms/internal/zzbod;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXa()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbof;->zzXi()Lcom/google/android/gms/internal/zzbof;

    move-result-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    check-cast v0, Lcom/google/android/gms/internal/zzbof;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbof;->zzXh()Lcom/google/android/gms/internal/zzbod;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/google/android/gms/internal/zzbof;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbof;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbof;->zzXk()Lcom/google/android/gms/internal/zzbof;

    move-result-object v0

    goto :goto_0
.end method

.method private zzXi()Lcom/google/android/gms/internal/zzbof;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbof",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbof;->zzXn()Lcom/google/android/gms/internal/zzbof;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbof;->zzXd()Lcom/google/android/gms/internal/zzbod;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXc()Lcom/google/android/gms/internal/zzbod;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXa()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbof;->zzXd()Lcom/google/android/gms/internal/zzbod;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbof;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbof;->zzXm()Lcom/google/android/gms/internal/zzbof;

    move-result-object v0

    invoke-virtual {v1, v2, v2, v2, v0}, Lcom/google/android/gms/internal/zzbof;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbof;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbof;->zzXl()Lcom/google/android/gms/internal/zzbof;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbof;->zzXn()Lcom/google/android/gms/internal/zzbof;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private zzXj()Lcom/google/android/gms/internal/zzbof;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbof",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbof;->zzXn()Lcom/google/android/gms/internal/zzbof;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbof;->zzXc()Lcom/google/android/gms/internal/zzbod;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbod;->zzXc()Lcom/google/android/gms/internal/zzbod;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbod;->zzXa()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbof;->zzXm()Lcom/google/android/gms/internal/zzbof;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbof;->zzXn()Lcom/google/android/gms/internal/zzbof;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private zzXk()Lcom/google/android/gms/internal/zzbof;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbof",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXa()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXa()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbof;->zzXl()Lcom/google/android/gms/internal/zzbof;

    move-result-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXa()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    check-cast v0, Lcom/google/android/gms/internal/zzbof;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXa()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbof;->zzXm()Lcom/google/android/gms/internal/zzbof;

    move-result-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXa()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXa()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbof;->zzXn()Lcom/google/android/gms/internal/zzbof;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private zzXl()Lcom/google/android/gms/internal/zzbof;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbof",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v3, Lcom/google/android/gms/internal/zzbod$zza;->zzcaZ:Lcom/google/android/gms/internal/zzbod$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    check-cast v0, Lcom/google/android/gms/internal/zzbof;

    iget-object v5, v0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbof;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod$zza;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbod;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzbof;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbof;->zzWZ()Lcom/google/android/gms/internal/zzbod$zza;

    move-result-object v3

    move-object v2, v1

    move-object v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbod;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod$zza;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbod;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbof;

    return-object v0
.end method

.method private zzXm()Lcom/google/android/gms/internal/zzbof;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbof",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v3, Lcom/google/android/gms/internal/zzbod$zza;->zzcaZ:Lcom/google/android/gms/internal/zzbod$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    check-cast v0, Lcom/google/android/gms/internal/zzbof;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    move-object v0, p0

    move-object v2, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbof;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod$zza;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbod;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzbof;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbof;->zzWZ()Lcom/google/android/gms/internal/zzbod$zza;

    move-result-object v3

    move-object v2, v1

    move-object v4, v1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbod;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod$zza;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbod;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbof;

    return-object v0
.end method

.method private zzXn()Lcom/google/android/gms/internal/zzbof;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbof",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbof;->zza(Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbod$zza;

    move-result-object v3

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbod;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod$zza;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbod;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbof;->zza(Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbod$zza;

    move-result-object v3

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbod;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod$zza;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbod;

    move-result-object v5

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbof;->zza(Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbod$zza;

    move-result-object v3

    move-object v0, p0

    move-object v2, v1

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbof;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod$zza;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbod;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbof;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbod$zza;
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbod;->zzXa()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbod$zza;->zzcba:Lcom/google/android/gms/internal/zzbod$zza;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzbod$zza;->zzcaZ:Lcom/google/android/gms/internal/zzbod$zza;

    goto :goto_0
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbc:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zzWZ()Lcom/google/android/gms/internal/zzbod$zza;
.end method

.method public zzXc()Lcom/google/android/gms/internal/zzbod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    return-object v0
.end method

.method public zzXd()Lcom/google/android/gms/internal/zzbod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    return-object v0
.end method

.method public zzXe()Lcom/google/android/gms/internal/zzbod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXe()Lcom/google/android/gms/internal/zzbod;

    move-result-object p0

    goto :goto_0
.end method

.method public zzXf()Lcom/google/android/gms/internal/zzbod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXf()Lcom/google/android/gms/internal/zzbod;

    move-result-object p0

    goto :goto_0
.end method

.method public zzXg()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXg()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbod;->zzXg()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public synthetic zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod$zza;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbod;
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gms/internal/zzbof;->zzb(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod$zza;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbof;

    move-result-object v0

    return-object v0
.end method

.method public zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbod;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbc:Ljava/lang/Object;

    invoke-interface {p3, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbod;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbod;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/google/android/gms/internal/zzbof;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbof;

    move-result-object v0

    :goto_0
    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbof;->zzXk()Lcom/google/android/gms/internal/zzbof;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/zzbof;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbof;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbod;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbod;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/google/android/gms/internal/zzbof;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbof;

    move-result-object v0

    goto :goto_0
.end method

.method public zza(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbod;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbc:Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXa()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    check-cast v0, Lcom/google/android/gms/internal/zzbof;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXa()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbof;->zzXi()Lcom/google/android/gms/internal/zzbof;

    move-result-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbod;->zza(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbod;

    move-result-object v0

    invoke-virtual {p0, v3, v3, v0, v3}, Lcom/google/android/gms/internal/zzbof;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbof;

    move-result-object v0

    :goto_0
    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbof;->zzXk()Lcom/google/android/gms/internal/zzbof;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXa()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbof;->zzXm()Lcom/google/android/gms/internal/zzbof;

    move-result-object p0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXa()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    check-cast v0, Lcom/google/android/gms/internal/zzbof;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXa()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbof;->zzXj()Lcom/google/android/gms/internal/zzbof;

    move-result-object p0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbc:Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/zzboc;->zzXb()Lcom/google/android/gms/internal/zzboc;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->zzXe()Lcom/google/android/gms/internal/zzbod;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbod;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    check-cast v0, Lcom/google/android/gms/internal/zzbof;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbof;->zzXh()Lcom/google/android/gms/internal/zzbod;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzbof;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbof;

    move-result-object p0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbod;->zza(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbod;

    move-result-object v0

    invoke-virtual {p0, v3, v3, v3, v0}, Lcom/google/android/gms/internal/zzbof;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbof;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbof;
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
.end method

.method public zza(Lcom/google/android/gms/internal/zzbod$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbod$zzb",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbod;->zza(Lcom/google/android/gms/internal/zzbod$zzb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbc:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbof;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbod$zzb;->zzj(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbod;->zza(Lcom/google/android/gms/internal/zzbod$zzb;)V

    return-void
.end method

.method public zzb(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod$zza;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbof;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/android/gms/internal/zzbod$zza;",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;)",
            "Lcom/google/android/gms/internal/zzbof",
            "<TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbof;->zzcbc:Ljava/lang/Object;

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbof;->value:Ljava/lang/Object;

    :cond_1
    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    :cond_2
    if-nez p5, :cond_3

    iget-object p5, p0, Lcom/google/android/gms/internal/zzbof;->zzcbe:Lcom/google/android/gms/internal/zzbod;

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/zzbod$zza;->zzcaZ:Lcom/google/android/gms/internal/zzbod$zza;

    if-ne p3, v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzboe;

    invoke-direct {v0, p1, p2, p4, p5}, Lcom/google/android/gms/internal/zzboe;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)V

    :goto_0
    return-object v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/zzbob;

    invoke-direct {v0, p1, p2, p4, p5}, Lcom/google/android/gms/internal/zzbob;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)V

    goto :goto_0
.end method

.method zzb(Lcom/google/android/gms/internal/zzbod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbof;->zzcbd:Lcom/google/android/gms/internal/zzbod;

    return-void
.end method
