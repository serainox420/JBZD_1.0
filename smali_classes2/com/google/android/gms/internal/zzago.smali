.class public Lcom/google/android/gms/internal/zzago;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzago;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaHE:I

.field final zzaKG:Lcom/google/android/gms/drive/DriveId;

.field final zzaLE:Lcom/google/android/gms/drive/events/zze;

.field final zzaMe:Lcom/google/android/gms/drive/events/zzu;

.field final zzaMf:Lcom/google/android/gms/drive/events/zzp;

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzagp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzagp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzago;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/drive/DriveId;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/drive/DriveId;

    move-object v0, p0

    move v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzago;-><init>(ILcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/zze;Lcom/google/android/gms/drive/events/zzu;Lcom/google/android/gms/drive/events/zzp;)V

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/zze;Lcom/google/android/gms/drive/events/zzu;Lcom/google/android/gms/drive/events/zzp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzago;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzago;->zzaKG:Lcom/google/android/gms/drive/DriveId;

    iput p3, p0, Lcom/google/android/gms/internal/zzago;->zzaHE:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzago;->zzaLE:Lcom/google/android/gms/drive/events/zze;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzago;->zzaMe:Lcom/google/android/gms/drive/events/zzu;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzago;->zzaMf:Lcom/google/android/gms/drive/events/zzp;

    return-void
.end method


# virtual methods
.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzago;->zzaKG:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzago;->zzaHE:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzagp;->zza(Lcom/google/android/gms/internal/zzago;Landroid/os/Parcel;I)V

    return-void
.end method
