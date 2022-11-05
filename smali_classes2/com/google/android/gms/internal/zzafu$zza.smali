.class public Lcom/google/android/gms/internal/zzafu$zza;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzafu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzafu$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final type:I

.field public final zzaKo:Lcom/google/android/gms/internal/zzcg;

.field public final zzaKp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzafw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzafw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzafu$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzcg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzafu$zza;->type:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafu$zza;->zzaKo:Lcom/google/android/gms/internal/zzcg;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzafu$zza;->zzaKp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzafw;->zza(Lcom/google/android/gms/internal/zzafu$zza;Landroid/os/Parcel;I)V

    return-void
.end method
