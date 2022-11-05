.class public Lcom/google/android/gms/wallet/firstparty/zzm;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/firstparty/zzm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzbRK:I

.field zzbRL:Landroid/os/Bundle;

.field zzbRM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/firstparty/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/firstparty/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/firstparty/zzm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/wallet/firstparty/zzm;->zzbRK:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wallet/firstparty/zzm;->zzbRL:Landroid/os/Bundle;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wallet/firstparty/zzm;->zzbRM:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/wallet/firstparty/zzm;->zzbRL:Landroid/os/Bundle;

    iput p1, p0, Lcom/google/android/gms/wallet/firstparty/zzm;->zzbRK:I

    iput-object p3, p0, Lcom/google/android/gms/wallet/firstparty/zzm;->zzbRM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/firstparty/zzn;->zza(Lcom/google/android/gms/wallet/firstparty/zzm;Landroid/os/Parcel;I)V

    return-void
.end method
