.class public Lcom/google/android/gms/internal/zzahf;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzahf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaKG:Lcom/google/android/gms/drive/DriveId;

.field final zzaMw:I

.field final zzaMx:I

.field final zzaMy:Lcom/google/android/gms/internal/zzako;

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzahg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzahg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzahf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/internal/zzako;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzahf;->zzaiI:I

    iput p2, p0, Lcom/google/android/gms/internal/zzahf;->zzaMw:I

    iput p3, p0, Lcom/google/android/gms/internal/zzahf;->zzaMx:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzahf;->zzaKG:Lcom/google/android/gms/drive/DriveId;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzahf;->zzaMy:Lcom/google/android/gms/internal/zzako;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzahg;->zza(Lcom/google/android/gms/internal/zzahf;Landroid/os/Parcel;I)V

    return-void
.end method
