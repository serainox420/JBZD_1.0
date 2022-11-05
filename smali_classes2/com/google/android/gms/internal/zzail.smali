.class public final Lcom/google/android/gms/internal/zzail;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/drive/FileUploadPreferences;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzaNJ:I

.field zzaNK:I

.field zzaNL:Z

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaim;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaim;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzail;->zzaiI:I

    iput p2, p0, Lcom/google/android/gms/internal/zzail;->zzaNJ:I

    iput p3, p0, Lcom/google/android/gms/internal/zzail;->zzaNK:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzail;->zzaNL:Z

    return-void
.end method

.method public static zzeT(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static zzeU(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getBatteryUsagePreference()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzail;->zzaNK:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzail;->zzeU(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzail;->zzaNK:I

    goto :goto_0
.end method

.method public getNetworkTypePreference()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzail;->zzaNJ:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzail;->zzeT(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzail;->zzaNJ:I

    goto :goto_0
.end method

.method public isRoamingAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzail;->zzaNL:Z

    return v0
.end method

.method public setBatteryUsagePreference(I)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzail;->zzeU(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid battery usage preference value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/zzail;->zzaNK:I

    return-void
.end method

.method public setNetworkTypePreference(I)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzail;->zzeT(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid data connection preference value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/zzail;->zzaNJ:I

    return-void
.end method

.method public setRoamingAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzail;->zzaNL:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaim;->zza(Lcom/google/android/gms/internal/zzail;Landroid/os/Parcel;I)V

    return-void
.end method
