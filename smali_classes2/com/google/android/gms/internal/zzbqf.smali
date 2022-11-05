.class public Lcom/google/android/gms/internal/zzbqf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbqf$zza;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final zzcgR:Lcom/google/android/gms/internal/zzbqf;

.field public static final zzcgS:Lcom/google/android/gms/internal/zzbqf;


# instance fields
.field private final zzcgT:Lcom/google/android/gms/internal/zzbqf$zza;

.field private final zzcgU:Lcom/google/android/gms/internal/zzbrb;

.field private final zzcgV:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-class v0, Lcom/google/android/gms/internal/zzbqf;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzbqf;->$assertionsDisabled:Z

    new-instance v0, Lcom/google/android/gms/internal/zzbqf;

    sget-object v2, Lcom/google/android/gms/internal/zzbqf$zza;->zzcgW:Lcom/google/android/gms/internal/zzbqf$zza;

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzbqf;-><init>(Lcom/google/android/gms/internal/zzbqf$zza;Lcom/google/android/gms/internal/zzbrb;Z)V

    sput-object v0, Lcom/google/android/gms/internal/zzbqf;->zzcgR:Lcom/google/android/gms/internal/zzbqf;

    new-instance v0, Lcom/google/android/gms/internal/zzbqf;

    sget-object v2, Lcom/google/android/gms/internal/zzbqf$zza;->zzcgX:Lcom/google/android/gms/internal/zzbqf$zza;

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzbqf;-><init>(Lcom/google/android/gms/internal/zzbqf$zza;Lcom/google/android/gms/internal/zzbrb;Z)V

    sput-object v0, Lcom/google/android/gms/internal/zzbqf;->zzcgS:Lcom/google/android/gms/internal/zzbqf;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbqf$zza;Lcom/google/android/gms/internal/zzbrb;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqf;->zzcgT:Lcom/google/android/gms/internal/zzbqf$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbqf;->zzcgU:Lcom/google/android/gms/internal/zzbrb;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzbqf;->zzcgV:Z

    sget-boolean v0, Lcom/google/android/gms/internal/zzbqf;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbqf;->zzZB()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/zzbrb;)Lcom/google/android/gms/internal/zzbqf;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbqf;

    sget-object v1, Lcom/google/android/gms/internal/zzbqf$zza;->zzcgX:Lcom/google/android/gms/internal/zzbqf$zza;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/zzbqf;-><init>(Lcom/google/android/gms/internal/zzbqf$zza;Lcom/google/android/gms/internal/zzbrb;Z)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqf;->zzcgT:Lcom/google/android/gms/internal/zzbqf$zza;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqf;->zzcgU:Lcom/google/android/gms/internal/zzbrb;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbqf;->zzcgV:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x34

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "OperationSource{source="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", queryParams="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tagged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzZA()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqf;->zzcgT:Lcom/google/android/gms/internal/zzbqf$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzbqf$zza;->zzcgW:Lcom/google/android/gms/internal/zzbqf$zza;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzZB()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqf;->zzcgT:Lcom/google/android/gms/internal/zzbqf$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzbqf$zza;->zzcgX:Lcom/google/android/gms/internal/zzbqf$zza;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzZC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbqf;->zzcgV:Z

    return v0
.end method

.method public zzZD()Lcom/google/android/gms/internal/zzbrb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqf;->zzcgU:Lcom/google/android/gms/internal/zzbrb;

    return-object v0
.end method
