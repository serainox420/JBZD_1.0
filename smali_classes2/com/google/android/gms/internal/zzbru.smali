.class public Lcom/google/android/gms/internal/zzbru;
.super Lcom/google/android/gms/internal/zzbrz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbrz",
        "<",
        "Lcom/google/android/gms/internal/zzbru;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final zzcjn:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbru;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzbru;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Double;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbrz;-><init>(Lcom/google/android/gms/internal/zzbsc;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbru;->zzcjn:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/zzbru;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbru;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbru;->zzcjn:Ljava/lang/Double;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbru;->zzcjn:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbru;->zzciX:Lcom/google/android/gms/internal/zzbsc;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbru;->zzciX:Lcom/google/android/gms/internal/zzbsc;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbru;->zzcjn:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbru;->zzcjn:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbru;->zzciX:Lcom/google/android/gms/internal/zzbsc;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzbru;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbru;->zzcjn:Ljava/lang/Double;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbru;->zzcjn:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/internal/zzbrz;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzbru;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbru;->zza(Lcom/google/android/gms/internal/zzbru;)I

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbsc$zza;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbru;->zzb(Lcom/google/android/gms/internal/zzbsc$zza;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "number:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbru;->zzcjn:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbte;->zzl(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected zzaaF()Lcom/google/android/gms/internal/zzbrz$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbrz$zza;->zzcjw:Lcom/google/android/gms/internal/zzbrz$zza;

    return-object v0
.end method

.method public synthetic zzg(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbru;->zzk(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbru;

    move-result-object v0

    return-object v0
.end method

.method public zzk(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbru;
    .locals 2

    sget-boolean v0, Lcom/google/android/gms/internal/zzbru;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbsg;->zzq(Lcom/google/android/gms/internal/zzbsc;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbru;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbru;->zzcjn:Ljava/lang/Double;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzbru;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/zzbsc;)V

    return-object v0
.end method
