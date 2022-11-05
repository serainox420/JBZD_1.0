.class public Lcom/google/android/gms/internal/zzaks;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaks;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaHE:I

.field final zzaKG:Lcom/google/android/gms/drive/DriveId;

.field final zzaMf:Lcom/google/android/gms/drive/events/zzp;

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzakt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzakt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaks;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/zzp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzaks;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaks;->zzaKG:Lcom/google/android/gms/drive/DriveId;

    iput p3, p0, Lcom/google/android/gms/internal/zzaks;->zzaHE:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaks;->zzaMf:Lcom/google/android/gms/drive/events/zzp;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzaks;-><init>(Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/zzp;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/zzp;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzaks;-><init>(ILcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/zzp;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzakt;->zza(Lcom/google/android/gms/internal/zzaks;Landroid/os/Parcel;I)V

    return-void
.end method
