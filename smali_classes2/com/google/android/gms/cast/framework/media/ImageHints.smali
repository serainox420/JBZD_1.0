.class public Lcom/google/android/gms/cast/framework/media/ImageHints;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/cast/framework/media/ImageHints;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzakD:I

.field private final zzarQ:I

.field private final zzarR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/ImageHints;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->zzakD:I

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->zzarQ:I

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->zzarR:I

    return-void
.end method


# virtual methods
.method public getHeightInPixels()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->zzarR:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->zzakD:I

    return v0
.end method

.method public getWidthInPixels()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->zzarQ:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/zzd;->zza(Lcom/google/android/gms/cast/framework/media/ImageHints;Landroid/os/Parcel;I)V

    return-void
.end method
