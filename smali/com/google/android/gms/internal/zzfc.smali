.class public Lcom/google/android/gms/internal/zzfc;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzfc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzzZ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzfc;->zzzZ:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzfd;->zza(Lcom/google/android/gms/internal/zzfc;Landroid/os/Parcel;I)V

    return-void
.end method
