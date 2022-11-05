.class public Lcom/google/android/gms/location/places/internal/zzu$zza;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/internal/zzu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/places/internal/zzu$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field final zzbmN:I

.field final zzbmO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/internal/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/zzu$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/internal/zzu$zza;->zzaiI:I

    iput p2, p0, Lcom/google/android/gms/location/places/internal/zzu$zza;->zzbmN:I

    iput p3, p0, Lcom/google/android/gms/location/places/internal/zzu$zza;->zzbmO:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/zzd;->zza(Lcom/google/android/gms/location/places/internal/zzu$zza;Landroid/os/Parcel;I)V

    return-void
.end method
