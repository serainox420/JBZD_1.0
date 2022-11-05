.class public Lcom/google/android/gms/internal/zzaer$zza;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaer;
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
            "Lcom/google/android/gms/internal/zzaer$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final type:I

.field public final zzaJs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzafd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzafd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaer$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzaer$zza;->type:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaer$zza;->zzaJs:Ljava/util/List;

    return-void
.end method

.method public static zza(ILjava/util/List;)Lcom/google/android/gms/internal/zzaer$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/zzaer$zza;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzaer$zza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaer$zza;-><init>(ILjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzafd;->zza(Lcom/google/android/gms/internal/zzaer$zza;Landroid/os/Parcel;I)V

    return-void
.end method
