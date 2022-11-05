.class public final Lcom/google/android/gms/internal/zzawx;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzawx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbyY:Lcom/google/android/gms/internal/zzaxi;

.field private final zzbyZ:Z

.field private final zzbyp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzawy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzawy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzawx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzaxi;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawx;->zzbyp:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzawx;->zzbyY:Lcom/google/android/gms/internal/zzaxi;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzawx;->zzbyZ:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzawx;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/zzawx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzawx;->zzbyp:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzawx;->zzbyp:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzawx;->zzbyY:Lcom/google/android/gms/internal/zzaxi;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzawx;->zzbyY:Lcom/google/android/gms/internal/zzaxi;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzawx;->zzbyZ:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzawx;->zzbyZ:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzawx;->zzbyp:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzawx;->zzbyY:Lcom/google/android/gms/internal/zzaxi;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzawx;->zzbyZ:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzawy;->zza(Lcom/google/android/gms/internal/zzawx;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzOf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawx;->zzbyp:Ljava/lang/String;

    return-object v0
.end method

.method public zzOp()Lcom/google/android/gms/internal/zzaxi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawx;->zzbyY:Lcom/google/android/gms/internal/zzaxi;

    return-object v0
.end method

.method public zzOq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzawx;->zzbyZ:Z

    return v0
.end method
