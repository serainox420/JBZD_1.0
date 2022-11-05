.class public final Lcom/google/android/gms/internal/zzmh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzmh$zzb;,
        Lcom/google/android/gms/internal/zzmh$zza;
    }
.end annotation


# direct methods
.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzmh$zza;)Lcom/google/android/gms/internal/zzpq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzqh;",
            "Lcom/google/android/gms/internal/zzqp",
            "<",
            "Lcom/google/android/gms/internal/zzmk;",
            ">;",
            "Lcom/google/android/gms/internal/zzmh$zza;",
            ")",
            "Lcom/google/android/gms/internal/zzpq;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzmh$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzmh$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzmh;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzmh$zza;Lcom/google/android/gms/internal/zzmh$zzb;)Lcom/google/android/gms/internal/zzpq;

    move-result-object v0

    return-object v0
.end method

.method static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzmh$zza;Lcom/google/android/gms/internal/zzmh$zzb;)Lcom/google/android/gms/internal/zzpq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzqh;",
            "Lcom/google/android/gms/internal/zzqp",
            "<",
            "Lcom/google/android/gms/internal/zzmk;",
            ">;",
            "Lcom/google/android/gms/internal/zzmh$zza;",
            "Lcom/google/android/gms/internal/zzmh$zzb;",
            ")",
            "Lcom/google/android/gms/internal/zzpq;"
        }
    .end annotation

    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/zzmh$zzb;->zza(Lcom/google/android/gms/internal/zzqh;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/zzmh;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzmh$zza;)Lcom/google/android/gms/internal/zzpq;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzmh;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzmh$zza;)Lcom/google/android/gms/internal/zzpq;

    move-result-object v0

    goto :goto_0
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzmh$zza;)Lcom/google/android/gms/internal/zzpq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzqp",
            "<",
            "Lcom/google/android/gms/internal/zzmk;",
            ">;",
            "Lcom/google/android/gms/internal/zzmh$zza;",
            ")",
            "Lcom/google/android/gms/internal/zzpq;"
        }
    .end annotation

    const-string v0, "Fetching ad response from local ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzmi$zza;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzmi$zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzmh$zza;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmi;->zziP()Ljava/lang/Object;

    return-object v0
.end method

.method private static zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzmh$zza;)Lcom/google/android/gms/internal/zzpq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzqh;",
            "Lcom/google/android/gms/internal/zzqp",
            "<",
            "Lcom/google/android/gms/internal/zzmk;",
            ">;",
            "Lcom/google/android/gms/internal/zzmh$zza;",
            ")",
            "Lcom/google/android/gms/internal/zzpq;"
        }
    .end annotation

    const-string v0, "Fetching ad response from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzqe;->zzaf(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to connect to remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzmi$zzb;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzmi$zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzmh$zza;)V

    goto :goto_0
.end method
