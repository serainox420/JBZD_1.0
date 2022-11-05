.class public Lcom/google/android/gms/internal/zzaed;
.super Lcom/google/android/gms/common/data/zzd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/zzd",
        "<",
        "Lcom/google/android/gms/internal/zzaec;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzaec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/data/zzd;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V

    return-void
.end method


# virtual methods
.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaed;->zzdC(I)Lcom/google/android/gms/internal/zzaec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzcH(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaed;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaec;

    return-object v0
.end method

.method public zzdC(I)Lcom/google/android/gms/internal/zzaec;
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/common/data/zzd;->zzcH(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaec;

    return-object v0
.end method
