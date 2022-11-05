.class public Lcom/google/android/gms/instantapps/LaunchData;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/instantapps/LaunchData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final intent:Landroid/content/Intent;

.field private final packageName:Ljava/lang/String;

.field private final zzbig:Ljava/lang/String;

.field final zzbih:Lcom/google/android/gms/common/data/BitmapTeleporter;

.field private final zzbii:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/instantapps/zza;

    invoke-direct {v0}, Lcom/google/android/gms/instantapps/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/instantapps/LaunchData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/BitmapTeleporter;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/instantapps/LaunchData;->intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/instantapps/LaunchData;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/instantapps/LaunchData;->zzbig:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/instantapps/LaunchData;->zzbih:Lcom/google/android/gms/common/data/BitmapTeleporter;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zzxg()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/instantapps/LaunchData;->zzbii:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getApplicationIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/instantapps/LaunchData;->zzbii:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getApplicationLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/instantapps/LaunchData;->zzbig:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/instantapps/LaunchData;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/instantapps/LaunchData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/instantapps/zza;->zza(Lcom/google/android/gms/instantapps/LaunchData;Landroid/os/Parcel;I)V

    return-void
.end method
