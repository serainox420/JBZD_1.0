.class public Lcom/google/android/gms/internal/zzarh;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzarh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaJT:Ljava/lang/String;

.field private final zzbiM:I

.field private final zzbiN:[Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzari;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzari;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzarh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzarh;->zzbiM:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzarh;->zzaJT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzarh;->zzbiN:[Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->zzaJT:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzari;->zza(Lcom/google/android/gms/internal/zzarh;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzHI()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzarh;->zzbiM:I

    return v0
.end method

.method public zzHJ()[Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarh;->zzbiN:[Landroid/accounts/Account;

    return-object v0
.end method
