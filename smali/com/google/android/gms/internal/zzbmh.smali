.class public Lcom/google/android/gms/internal/zzbmh;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbmh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzagw:Z
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "registered"
    .end annotation
.end field

.field public final zzaiI:I
    .annotation runtime Lcom/google/android/gms/internal/zzbmb;
    .end annotation
.end field

.field private zzbYw:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "authUri"
    .end annotation
.end field

.field private zzbYx:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "providerId"
    .end annotation
.end field

.field private zzbYy:Z
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "forExistingProvider"
    .end annotation
.end field

.field private zzbYz:Lcom/google/android/gms/internal/zzbmv;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "allProviders"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbmi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbmi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbmh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbmh;->zzaiI:I

    invoke-static {}, Lcom/google/android/gms/internal/zzbmv;->zzWl()Lcom/google/android/gms/internal/zzbmv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmh;->zzbYz:Lcom/google/android/gms/internal/zzbmv;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZLjava/lang/String;ZLcom/google/android/gms/internal/zzbmv;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbmh;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbmh;->zzbYw:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzbmh;->zzagw:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbmh;->zzbYx:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzbmh;->zzbYy:Z

    if-nez p6, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbmv;->zzWl()Lcom/google/android/gms/internal/zzbmv;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmh;->zzbYz:Lcom/google/android/gms/internal/zzbmv;

    return-void

    :cond_0
    invoke-static {p6}, Lcom/google/android/gms/internal/zzbmv;->zza(Lcom/google/android/gms/internal/zzbmv;)Lcom/google/android/gms/internal/zzbmv;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getAllProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmh;->zzbYz:Lcom/google/android/gms/internal/zzbmv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbmv;->zzWk()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmh;->zzbYx:Ljava/lang/String;

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmh;->zzagw:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbmi;->zza(Lcom/google/android/gms/internal/zzbmh;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzVW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmh;->zzbYw:Ljava/lang/String;

    return-object v0
.end method

.method public zzVX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmh;->zzbYy:Z

    return v0
.end method

.method public zzVY()Lcom/google/android/gms/internal/zzbmv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmh;->zzbYz:Lcom/google/android/gms/internal/zzbmv;

    return-object v0
.end method
