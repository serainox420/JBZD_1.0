.class public final Lcom/google/android/gms/internal/zzvz;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/awareness/state/HeadphoneState;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzvz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzamf:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzwa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzwa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzvz;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzvz;->zzamf:I

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzvz;->zzamf:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzvz;->zzamf:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzwa;->zza(Lcom/google/android/gms/internal/zzvz;Landroid/os/Parcel;I)V

    return-void
.end method
