.class public Lcom/google/android/gms/internal/zzbmt;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbmt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzaiI:I
    .annotation runtime Lcom/google/android/gms/internal/zzbmb;
    .end annotation
.end field

.field private zzaka:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "email"
    .end annotation
.end field

.field private zzbYJ:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "newEmail"
    .end annotation
.end field

.field private zzbYK:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "requestType"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbmu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbmu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbmt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbmt;->zzaiI:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbmt;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbmt;->zzaka:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmt;->zzbYJ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbmt;->zzbYK:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmt;->zzaka:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbmu;->zza(Lcom/google/android/gms/internal/zzbmt;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzWi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmt;->zzbYJ:Ljava/lang/String;

    return-object v0
.end method

.method public zzWj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmt;->zzbYK:Ljava/lang/String;

    return-object v0
.end method
