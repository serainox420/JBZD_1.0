.class public final Lcom/google/android/gms/internal/zzwi;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzwi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaml:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzwj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzwj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzwi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzwi;->zzaml:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzwi;->zzaml:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "ScreenState: SCREEN_OFF"

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzwi;->zzaml:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "ScreenState: SCREEN_ON"

    goto :goto_0

    :cond_1
    const-string v0, "ScreenState: UNKNOWN"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzwj;->zza(Lcom/google/android/gms/internal/zzwi;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzrQ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzwi;->zzaml:I

    return v0
.end method
