.class public Lcom/google/android/gms/internal/zzbkh;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbkh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final versionCode:I

.field public final zzbPA:Ljava/lang/String;

.field public final zzbPB:F

.field public final zzbPC:I

.field public final zzbPD:Z

.field public final zzbPE:I

.field public final zzbPF:I

.field public final zzbPr:Ljava/lang/String;

.field public final zzbPw:[Lcom/google/android/gms/internal/zzbkq;

.field public final zzbPx:Lcom/google/android/gms/internal/zzbkd;

.field public final zzbPy:Lcom/google/android/gms/internal/zzbkd;

.field public final zzbPz:Lcom/google/android/gms/internal/zzbkd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbki;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbki;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbkh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[Lcom/google/android/gms/internal/zzbkq;Lcom/google/android/gms/internal/zzbkd;Lcom/google/android/gms/internal/zzbkd;Lcom/google/android/gms/internal/zzbkd;Ljava/lang/String;FLjava/lang/String;IZII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbkh;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPw:[Lcom/google/android/gms/internal/zzbkq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPx:Lcom/google/android/gms/internal/zzbkd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPy:Lcom/google/android/gms/internal/zzbkd;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPz:Lcom/google/android/gms/internal/zzbkd;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPA:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPB:F

    iput-object p8, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPr:Ljava/lang/String;

    iput p9, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPC:I

    iput-boolean p10, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPD:Z

    iput p11, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPE:I

    iput p12, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPF:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbki;->zza(Lcom/google/android/gms/internal/zzbkh;Landroid/os/Parcel;I)V

    return-void
.end method
