.class public Lcom/google/android/gms/internal/zzaqr;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaqr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final zzRz:Landroid/content/pm/PackageInfo;

.field final zzbij:Lcom/google/android/gms/common/data/BitmapTeleporter;

.field private final zzbik:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzarn;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbil:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzaqt;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbim:I

.field private final zzbin:[B

.field private final zzbio:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzarq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbip:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaqs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaqs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaqr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/BitmapTeleporter;Ljava/util/List;Ljava/util/List;I[BLandroid/content/pm/PackageInfo;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/data/BitmapTeleporter;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzarn;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzaqt;",
            ">;I[B",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzarq;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqr;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaqr;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaqr;->zzbij:Lcom/google/android/gms/common/data/BitmapTeleporter;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaqr;->zzbik:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzaqr;->zzbil:Ljava/util/List;

    iput p6, p0, Lcom/google/android/gms/internal/zzaqr;->zzbim:I

    iput-object p7, p0, Lcom/google/android/gms/internal/zzaqr;->zzbin:[B

    iput-object p8, p0, Lcom/google/android/gms/internal/zzaqr;->zzRz:Landroid/content/pm/PackageInfo;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzaqr;->zzbio:Ljava/util/List;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->zzbip:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zzxg()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->zzbip:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzarn;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->zzbik:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaqs;->zza(Lcom/google/android/gms/internal/zzaqr;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzHp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzaqt;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->zzbil:Ljava/util/List;

    return-object v0
.end method

.method public zzHq()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzarq;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->zzbio:Ljava/util/List;

    return-object v0
.end method

.method public zzHr()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzaqr;->zzbim:I

    return v0
.end method

.method public zzHs()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->zzbin:[B

    return-object v0
.end method

.method public zzHt()Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->zzRz:Landroid/content/pm/PackageInfo;

    return-object v0
.end method
