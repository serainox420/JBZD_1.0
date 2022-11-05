.class public abstract Lcom/google/android/gms/internal/zzbrw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/zzbsb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrw;
    .locals 2

    const-string v0, ".value"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbsj;->zzabm()Lcom/google/android/gms/internal/zzbsj;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzbry;->zzabg()Lcom/google/android/gms/internal/zzbry;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ".priority"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "queryDefinition shouldn\'t ever be .priority since it\'s the default"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzbse;

    new-instance v1, Lcom/google/android/gms/internal/zzbph;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbse;-><init>(Lcom/google/android/gms/internal/zzbph;)V

    goto :goto_0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbsb;Lcom/google/android/gms/internal/zzbsb;Z)I
    .locals 1

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/zzbrw;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbrw;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsc;)Z
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbsb;

    invoke-static {}, Lcom/google/android/gms/internal/zzbrq;->zzaaG()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbsb;

    invoke-static {}, Lcom/google/android/gms/internal/zzbrq;->zzaaG()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/internal/zzbsb;-><init>(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzbrw;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaba()Lcom/google/android/gms/internal/zzbsb;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzbsb;->zzabh()Lcom/google/android/gms/internal/zzbsb;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzabb()Lcom/google/android/gms/internal/zzbsb;
.end method

.method public abstract zzabc()Ljava/lang/String;
.end method

.method public abstract zzg(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsb;
.end method

.method public abstract zzm(Lcom/google/android/gms/internal/zzbsc;)Z
.end method
