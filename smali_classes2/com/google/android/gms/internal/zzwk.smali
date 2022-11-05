.class public final Lcom/google/android/gms/internal/zzwk;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzwk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzamm:Lcom/google/android/gms/location/ActivityRecognitionResult;

.field private final zzamn:Lcom/google/android/gms/internal/zzvx;

.field private final zzamo:Lcom/google/android/gms/internal/zzvz;

.field private final zzamp:Lcom/google/android/gms/internal/zzwb;

.field private final zzamq:Lcom/google/android/gms/common/data/DataHolder;

.field private final zzamr:Lcom/google/android/gms/internal/zzwg;

.field private final zzams:Lcom/google/android/gms/internal/zzwi;

.field private final zzamt:Lcom/google/android/gms/internal/zzwt;

.field private final zzamu:Lcom/google/android/gms/internal/zzwq;

.field private final zzcV:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzwm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzwm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzwk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/ActivityRecognitionResult;Lcom/google/android/gms/internal/zzvx;Lcom/google/android/gms/internal/zzvz;Landroid/location/Location;Lcom/google/android/gms/internal/zzwb;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzwg;Lcom/google/android/gms/internal/zzwi;Lcom/google/android/gms/internal/zzwt;Lcom/google/android/gms/internal/zzwq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzwk;->zzamm:Lcom/google/android/gms/location/ActivityRecognitionResult;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzwk;->zzamn:Lcom/google/android/gms/internal/zzvx;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzwk;->zzamo:Lcom/google/android/gms/internal/zzvz;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzwk;->zzcV:Landroid/location/Location;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzwk;->zzamp:Lcom/google/android/gms/internal/zzwb;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzwk;->zzamq:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzwk;->zzamr:Lcom/google/android/gms/internal/zzwg;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzwk;->zzams:Lcom/google/android/gms/internal/zzwi;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzwk;->zzamt:Lcom/google/android/gms/internal/zzwt;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzwk;->zzamu:Lcom/google/android/gms/internal/zzwq;

    return-void
.end method


# virtual methods
.method public getActivityRecognitionResult()Lcom/google/android/gms/location/ActivityRecognitionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwk;->zzamm:Lcom/google/android/gms/location/ActivityRecognitionResult;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwk;->zzcV:Landroid/location/Location;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzwm;->zza(Lcom/google/android/gms/internal/zzwk;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzrR()Lcom/google/android/gms/internal/zzvx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwk;->zzamn:Lcom/google/android/gms/internal/zzvx;

    return-object v0
.end method

.method public zzrS()Lcom/google/android/gms/internal/zzvz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwk;->zzamo:Lcom/google/android/gms/internal/zzvz;

    return-object v0
.end method

.method public zzrT()Lcom/google/android/gms/internal/zzwb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwk;->zzamp:Lcom/google/android/gms/internal/zzwb;

    return-object v0
.end method

.method public zzrU()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwk;->zzamq:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public zzrV()Lcom/google/android/gms/internal/zzwg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwk;->zzamr:Lcom/google/android/gms/internal/zzwg;

    return-object v0
.end method

.method public zzrW()Lcom/google/android/gms/internal/zzwi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwk;->zzams:Lcom/google/android/gms/internal/zzwi;

    return-object v0
.end method

.method public zzrX()Lcom/google/android/gms/internal/zzwt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwk;->zzamt:Lcom/google/android/gms/internal/zzwt;

    return-object v0
.end method

.method public zzrY()Lcom/google/android/gms/internal/zzwq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwk;->zzamu:Lcom/google/android/gms/internal/zzwq;

    return-object v0
.end method
