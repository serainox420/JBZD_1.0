.class public Lcom/google/android/gms/fitness/result/zzd;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/result/zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzaTi:Lcom/google/android/gms/fitness/data/DataSource;

.field public final zzaWT:Z

.field public final zzaWU:J

.field public final zzaWV:J

.field public final zzaWW:J

.field final zzaiI:I

.field public final zzait:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/result/zze;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/result/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/result/zzd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;JZJJJ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/result/zzd;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/result/zzd;->zzaTi:Lcom/google/android/gms/fitness/data/DataSource;

    iput-wide p3, p0, Lcom/google/android/gms/fitness/result/zzd;->zzait:J

    iput-boolean p5, p0, Lcom/google/android/gms/fitness/result/zzd;->zzaWT:Z

    iput-wide p6, p0, Lcom/google/android/gms/fitness/result/zzd;->zzaWU:J

    iput-wide p8, p0, Lcom/google/android/gms/fitness/result/zzd;->zzaWV:J

    iput-wide p10, p0, Lcom/google/android/gms/fitness/result/zzd;->zzaWW:J

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/result/zze;->zza(Lcom/google/android/gms/fitness/result/zzd;Landroid/os/Parcel;I)V

    return-void
.end method
