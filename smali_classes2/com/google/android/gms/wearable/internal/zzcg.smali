.class public Lcom/google/android/gms/wearable/internal/zzcg;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzcg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final label:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final zzbUP:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzch;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzch;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzcg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzcg;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzcg;->label:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/wearable/internal/zzcg;->zzbUP:J

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzch;->zza(Lcom/google/android/gms/wearable/internal/zzcg;Landroid/os/Parcel;I)V

    return-void
.end method
