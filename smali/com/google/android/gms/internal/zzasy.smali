.class public final Lcom/google/android/gms/internal/zzasy;
.super Lcom/google/android/gms/common/data/zzd;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/zzd",
        "<",
        "Lcom/google/android/gms/internal/zzasx;",
        ">;",
        "Lcom/google/android/gms/common/api/Result;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zzair:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/PlacesStatusCodes;->zzdv(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzasy;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzasx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/data/zzd;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzasy;->zzair:Lcom/google/android/gms/common/api/Status;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasy;->zzair:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
