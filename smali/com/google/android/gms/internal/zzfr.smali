.class public Lcom/google/android/gms/internal/zzfr;
.super Lcom/google/android/gms/internal/zzeg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeg;)V
    .locals 11

    iget-object v1, p1, Lcom/google/android/gms/internal/zzeg;->zzzy:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/gms/internal/zzeg;->height:I

    iget v3, p1, Lcom/google/android/gms/internal/zzeg;->heightPixels:I

    iget-boolean v4, p1, Lcom/google/android/gms/internal/zzeg;->zzzz:Z

    iget v5, p1, Lcom/google/android/gms/internal/zzeg;->width:I

    iget v6, p1, Lcom/google/android/gms/internal/zzeg;->widthPixels:I

    iget-object v7, p1, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    iget-boolean v8, p1, Lcom/google/android/gms/internal/zzeg;->zzzB:Z

    iget-boolean v9, p1, Lcom/google/android/gms/internal/zzeg;->zzzC:Z

    iget-boolean v10, p1, Lcom/google/android/gms/internal/zzeg;->zzzD:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzeg;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/zzeg;ZZZ)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzaZ(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfr;->zzzy:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/zzfr;->height:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/internal/zzfr;->width:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzJ(Landroid/os/Parcel;I)V

    return-void
.end method
