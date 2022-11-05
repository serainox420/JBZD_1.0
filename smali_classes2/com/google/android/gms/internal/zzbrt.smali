.class public Lcom/google/android/gms/internal/zzbrt;
.super Lcom/google/android/gms/internal/zzbrz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbrz",
        "<",
        "Lcom/google/android/gms/internal/zzbrt;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private zzcjm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbrt;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzbrt;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzbsc;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbrz;-><init>(Lcom/google/android/gms/internal/zzbsc;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbrt;->zzcjm:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/zzbrt;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbrt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrt;->zzcjm:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbrt;->zzcjm:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrt;->zzciX:Lcom/google/android/gms/internal/zzbsc;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbrt;->zzciX:Lcom/google/android/gms/internal/zzbsc;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrt;->zzcjm:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrt;->zzcjm:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrt;->zzciX:Lcom/google/android/gms/internal/zzbsc;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/internal/zzbrz;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbsc$zza;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbrt;->zzb(Lcom/google/android/gms/internal/zzbsc$zza;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrt;->zzcjm:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "deferredValue:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zzaaF()Lcom/google/android/gms/internal/zzbrz$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbrz$zza;->zzcju:Lcom/google/android/gms/internal/zzbrz$zza;

    return-object v0
.end method

.method public synthetic zzg(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbrt;->zzj(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrt;

    move-result-object v0

    return-object v0
.end method

.method public zzj(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrt;
    .locals 2

    sget-boolean v0, Lcom/google/android/gms/internal/zzbrt;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbsg;->zzq(Lcom/google/android/gms/internal/zzbsc;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbrt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrt;->zzcjm:Ljava/util/Map;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzbrt;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzbsc;)V

    return-object v0
.end method
