.class public Lcom/google/android/gms/internal/zzakm;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzakm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaLn:[Ljava/lang/String;

.field final zzaLp:Lcom/google/android/gms/drive/DriveId;

.field final zzaOw:Lcom/google/android/gms/drive/query/internal/FilterHolder;

.field final zzaiI:I

.field final zzamJ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzakn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzakn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzakm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/query/internal/FilterHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzakm;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzakm;->zzamJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzakm;->zzaLn:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzakm;->zzaLp:Lcom/google/android/gms/drive/DriveId;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzakm;->zzaOw:Lcom/google/android/gms/drive/query/internal/FilterHolder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/query/internal/FilterHolder;)V
    .locals 6

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzakm;-><init>(ILjava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/query/internal/FilterHolder;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzakn;->zza(Lcom/google/android/gms/internal/zzakm;Landroid/os/Parcel;I)V

    return-void
.end method
