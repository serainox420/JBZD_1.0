.class public Lcom/google/android/gms/internal/zzbif;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbif$zza;
    }
.end annotation


# instance fields
.field private final zzAW:I

.field private final zzair:Lcom/google/android/gms/common/api/Status;

.field private final zzbMe:Lcom/google/android/gms/internal/zzbif$zza;

.field private final zzbMf:Lcom/google/android/gms/internal/zzbir;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/gms/internal/zzbif;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/zzbif$zza;Lcom/google/android/gms/internal/zzbir;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/zzbif$zza;Lcom/google/android/gms/internal/zzbir;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbif;->zzair:Lcom/google/android/gms/common/api/Status;

    iput p2, p0, Lcom/google/android/gms/internal/zzbif;->zzAW:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbif;->zzbMe:Lcom/google/android/gms/internal/zzbif$zza;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbif;->zzbMf:Lcom/google/android/gms/internal/zzbir;

    return-void
.end method


# virtual methods
.method public getSource()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbif;->zzAW:I

    return v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbif;->zzair:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public zzSL()Lcom/google/android/gms/internal/zzbif$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbif;->zzbMe:Lcom/google/android/gms/internal/zzbif$zza;

    return-object v0
.end method

.method public zzSM()Lcom/google/android/gms/internal/zzbir;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbif;->zzbMf:Lcom/google/android/gms/internal/zzbir;

    return-object v0
.end method

.method public zzSN()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzbif;->zzAW:I

    if-nez v0, :cond_0

    const-string v0, "Network"

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbif;->zzAW:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "Saved file on disk"

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzbif;->zzAW:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "Default resource"

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Resource source is unknown."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
